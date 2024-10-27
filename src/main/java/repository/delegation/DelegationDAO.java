package repository.delegation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javafx.scene.control.Alert;
import model.DatabaseConnection;
import model.Delegation;
import utils.CommonUtils;

public class DelegationDAO implements DelegationRepository {

    private final DatabaseConnection dbConnection = new DatabaseConnection();

    @Override
    public void addDelegation(Delegation delegation) throws Exception {
        Connection connection = dbConnection.connect();
        if (connection != null) {
            try {
                String query = "INSERT INTO delegations (status_id, incident_id, executing_entity_id, cancellation_reason_id, created_by) VALUES (?, ?, ?, ?, ?)";

                // Añadimos RETURN_GENERATED_KEYS para obtener el ID generado
                PreparedStatement statement = connection.prepareStatement(query, PreparedStatement.RETURN_GENERATED_KEYS);

                statement.setLong(1, delegation.getStatusTypeId());
                statement.setLong(2, delegation.getIncidentId());
                statement.setLong(3, delegation.getExecutingEntityId());
                statement.setLong(4, delegation.getCancellationReasonId());
                statement.setLong(5, delegation.getCreatedBy());

                // Ejecutamos la actualización (inserción)
                int affectedRows = statement.executeUpdate();

                if (affectedRows == 0) {
                    throw new SQLException("No se pudo insertar el delegation, no se afectaron filas.");
                }
    
                // Obtenemos el ID generado
                try (ResultSet generatedKeys = statement.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        long generatedId = generatedKeys.getLong(1); // Obtenemos el ID generado
                        // Establecemos el ID generado en el objeto Incident
                        delegation.setId(generatedId);
                    } else {
                        throw new SQLException("No se pudo obtener el ID del delegation insertado.");
                    }
                }
    

                connection.close();
            } catch (SQLException e) {
                String messageException = "Error DelegationDAO al insertar registro:";
                // Mostrar el mensaje en consola
                System.out.println(messageException + " " + e.getMessage());
                // Mostrar el mensaje en una ventana emergente
                CommonUtils.showAlert(Alert.AlertType.ERROR, "Error", messageException + e.getMessage());
                throw new Exception(messageException + " " +  e.getMessage(), e);
            }
        }
    }

    @Override
    public void updateDelegation(Delegation delegation) throws Exception {

        Connection connection = dbConnection.connect();
            if (connection != null) {
                try {
                    String query = "UPDATE delegations SET status_id = ?, incident_id = ?, executing_entity_id = ?, cancellation_reason_id = ?, " +
                                    "created_by = ? WHERE incident_id = ?";
                    PreparedStatement statement = connection.prepareStatement(query);

                    // Establece los valores en la consulta SQL
                    statement.setLong(1, delegation.getStatusTypeId());
                    statement.setLong(2, delegation.getIncidentId());
                    statement.setLong(3, delegation.getExecutingEntityId());
                    statement.setLong(4, delegation.getCancellationReasonId());
                    statement.setLong(5, delegation.getCreatedBy());
                    statement.setLong(6, delegation.getId()); // Usa el ID para identificar el registro

                // Ejecuta la actualización
                statement.executeUpdate();
            } catch (SQLException e) {
                String messageException = "Error DelegationDAO al actualizar el registro en la base de datos:";
                // Mostrar el mensaje en consola
                System.out.println(messageException + " " + e.getMessage());
                // Mostrar el mensaje en una ventana emergente
                CommonUtils.showAlert(Alert.AlertType.ERROR, "Error", messageException + e.getMessage());
                throw new Exception(messageException + " " +  e.getMessage(), e);
            }
        }
    }

    @Override
    public void deleteDelegation(int id) throws Exception {
        Connection connection = dbConnection.connect();
        if (connection != null) {
            try {
                String query = "DELETE FROM delegations WHERE incident_id = ?";
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
                String messageException = "Error DelegationDAO al eliminar registro:";
                // Mostrar el mensaje en consola
                System.out.println(messageException + " " + e.getMessage());
                // Mostrar el mensaje en una ventana emergente
                CommonUtils.showAlert(Alert.AlertType.ERROR, "Error", messageException + e.getMessage());
                throw new Exception(messageException + " " +  e.getMessage(), e);
            }
        }
    }

}
