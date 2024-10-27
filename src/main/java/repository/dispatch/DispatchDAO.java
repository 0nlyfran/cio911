package repository.dispatch;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javafx.scene.control.Alert;
import model.DatabaseConnection;
import model.Dispatch;

public class DispatchDAO implements DispatchRepository {

    private final DatabaseConnection dbConnection = new DatabaseConnection();

    @Override
    public List<Dispatch> getAllDispatchs() throws Exception {
        List<Dispatch> dispatchs = new ArrayList<>();

        // Usar try-with-resources para manejar automáticamente el cierre de recursos
        try (Connection connection = dbConnection.connect()) {
            if (connection != null) {
                String query = "SELECT i.id, i.phone_number, i.attention_id, i.description, i.person_name, "
                + "i.address, i.plus_data, i.current_status_id, i.locality_id, i.typification_id, "
                + "i.code_id, co.name AS code_name, ti.full_name AS typification_name, lo.name AS locality_name, "
                + "at.name AS attention_name, st.name AS status_name, "
                + "cr.reason AS cancellation_reason_name, ee.name AS executing_entity_name, "
                + "dn.description AS delegation_news_description, i.updated_at AS UpdatedAt, dn.id AS delegationNewsId "
                + "FROM incidents i "
                + "LEFT JOIN codes co ON i.code_id = co.id "
                + "LEFT JOIN typification ti ON i.typification_id = ti.id "
                + "LEFT JOIN localities lo ON i.locality_id = lo.id "
                + "LEFT JOIN attention_type at ON i.attention_id = at.id "
                + "LEFT JOIN delegations d ON i.id = d.incident_id AND d.incident_id IS NOT NULL "
                + "LEFT JOIN status_type st ON d.status_id = st.id "
                + "LEFT JOIN cancellation_reason cr ON d.cancellation_reason_id = cr.id "
                + "LEFT JOIN executing_entity ee ON d.executing_entity_id = ee.id "
                + "LEFT JOIN delegation_news dn ON d.id = dn.delegation_id "
                + "ORDER BY i.id DESC;";

                try (PreparedStatement statement = connection.prepareStatement(query);
                    ResultSet resultSet = statement.executeQuery()) {

                    // Recorrer los resultados y mapear cada fila a un objeto Dispatch
                    while (resultSet.next()) {
                        Dispatch dispatch = new Dispatch();
                        dispatch.setId(resultSet.getLong("id"));
                        dispatch.setPhoneNumber(resultSet.getString("phone_number"));
                        dispatch.setAttentionId(resultSet.getLong("attention_id"));
                        dispatch.setAttentionName(resultSet.getString("attention_name"));
                        dispatch.setDescription(resultSet.getString("description"));
                        dispatch.setPersonName(resultSet.getString("person_name"));
                        dispatch.setAddress(resultSet.getString("address"));
                        dispatch.setPlusData(resultSet.getString("plus_data"));
                        dispatch.setLocalityId(resultSet.getLong("locality_id"));
                        dispatch.setLocalityName(resultSet.getString("locality_name"));
                        dispatch.setTypificationId(resultSet.getLong("typification_id"));
                        dispatch.setTypificationName(resultSet.getString("typification_name"));
                        dispatch.setCodeId(resultSet.getLong("code_id"));
                        dispatch.setCodeName(resultSet.getString("code_name"));
                        dispatch.setUpdatedAt(resultSet.getTimestamp("UpdatedAt"));

                        dispatch.setStatusId(resultSet.getLong("current_status_id"));  // Agregado: current_status_id
                        dispatch.setStatusName(resultSet.getString("status_name"));  // Agregado: status_name
                        dispatch.setCancellationReasonName(resultSet.getString("cancellation_reason_name"));  // Agregado: cancellation_reason
                        dispatch.setExecutingEntityName(resultSet.getString("executing_entity_name"));  // Agregado: executing_entity_name
                        dispatch.setDelegationNewsDescription(resultSet.getString("delegation_news_description"));  // Agregado: delegation_news_description
                        dispatch.setDelegationNewsId(resultSet.getString("delegationNewsId"));

                        // Añadir despacho a la lista
                        dispatchs.add(dispatch);
                    }
                }
            }
        } catch (SQLException e) {
            String messageException = "Error DispatchDAO al obtener los registros:";
            // Mostrar el mensaje en consola
            System.err.println(messageException + " " + e.getMessage());
            // Mostrar el mensaje en una ventana emergente
            showAlert(messageException, "Error: " + e.getMessage());
            throw new Exception(messageException + " " +  e.getMessage(), e);
        }

        return dispatchs;
    }

    @Override
    public void updateDispatch(Dispatch dispatch) throws Exception {

        Connection connection = dbConnection.connect();
            if (connection != null) {
                try {
                    String query = "UPDATE dispatchs SET phone_number = ?, attention_id = ?, description = ?, person_name = ?, " +
                                    "address = ?, plus_data = ?, locality_id = ?, typification_id = ?, code_id = ? WHERE id = ?";
                    PreparedStatement statement = connection.prepareStatement(query);

                    // Establece los valores en la consulta SQL
                    statement.setString(1, dispatch.getPhoneNumber());
                    statement.setLong(2, dispatch.getAttentionId());
                    statement.setString(3, dispatch.getDescription());
                    statement.setString(4, dispatch.getPersonName());
                    statement.setString(5, dispatch.getAddress());
                    statement.setString(6, dispatch.getPlusData());
                    statement.setLong(7, dispatch.getLocalityId());
                    statement.setLong(8, dispatch.getTypificationId());
                    statement.setLong(9, dispatch.getCodeId());
                    statement.setLong(10, dispatch.getId()); // Usa el ID para identificar el registro

                // Ejecuta la actualización
                statement.executeUpdate();
            } catch (SQLException e) {
                throw new Exception("Error al actualizar el registro en la base de datos", e);
            }
        }
    }

    @Override
    public void deleteDispatch(int id) throws Exception {
        Connection connection = dbConnection.connect();
        if (connection != null) {
            try {
                String query = "DELETE FROM delegations WHERE id = ?";
                PreparedStatement statement = connection.prepareStatement(query);
                statement.setInt(1, id);
                int rowsAffected = statement.executeUpdate();
                // Ejecuta la consulta de eliminación

                // Verifica si la eliminación fue exitosa
                if (rowsAffected == 0) {
                    throw new SQLException("No se encontró el registro con ID: " + id);
                }
                connection.close();
            } catch (SQLException e) {
                String messageException = "Error DispatchDAO al eliminar registro:";
                // Mostrar el mensaje en consola
                System.out.println(messageException + " " + e.getMessage());
                throw new Exception(messageException + " " +  e.getMessage(), e);
            }
        }
    }

    private void showAlert(String title, String message) {
            Alert alert = new Alert(Alert.AlertType.ERROR);  // Crear una alerta de tipo ERROR
            alert.setTitle(title);
            alert.setContentText(message);
            alert.showAndWait();  // Mostrar la alerta y esperar hasta que el usuario la cierre
}

}
