package repository.delegationNews;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javafx.scene.control.Alert;
import model.DatabaseConnection;
import model.DelegationNews;
import utils.CommonUtils;

public class DelegationNewsDAO implements DelegationNewsRepository {

    private final DatabaseConnection dbConnection = new DatabaseConnection();

    @Override
    public void addDelegationNews(DelegationNews delegationNews) throws Exception {
        Connection connection = dbConnection.connect();
        if (connection != null) {
            try {
                String query = "INSERT INTO delegation_news (description, delegation_id, created_by) VALUES (?, ?, ?)";

                // Añadimos RETURN_GENERATED_KEYS para obtener el ID generado
                PreparedStatement statement = connection.prepareStatement(query, PreparedStatement.RETURN_GENERATED_KEYS);

                statement.setString(1, delegationNews.getDescription());
                statement.setLong(2, delegationNews.getDelegationId());
                statement.setLong(3, delegationNews.getCreatedBy());


                // Ejecutamos la actualización (inserción)
                int affectedRows = statement.executeUpdate();

                if (affectedRows == 0) {
                    throw new SQLException("No se pudo insertar el delegationNews, no se afectaron filas.");
                }
    
                // Obtenemos el ID generado
                try (ResultSet generatedKeys = statement.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        long generatedId = generatedKeys.getLong(1); // Obtenemos el ID generado
                        // Establecemos el ID generado en el objeto Incident
                        delegationNews.setId(generatedId);
                    } else {
                        throw new SQLException("No se pudo obtener el ID del delegationNews insertado.");
                    }
                }
    

                connection.close();
            } catch (SQLException e) {
                String messageException = "Error DelegationNewsDAO al insertar registro:";
                // Mostrar el mensaje en consola
                System.out.println(messageException + " " + e.getMessage());
                // Mostrar el mensaje en una ventana emergente
                CommonUtils.showAlert(Alert.AlertType.ERROR, "Error", messageException + e.getMessage());
                throw new Exception(messageException + " " +  e.getMessage(), e);
            }
        }
    }

    @Override
    public void updateDelegationNews(DelegationNews delegationNews) throws Exception {

        Connection connection = dbConnection.connect();
            if (connection != null) {
                try {
                    String query = "UPDATE delegation_news SET description = ?, " +
                                    "created_by = ? WHERE id = ?";
                    PreparedStatement statement = connection.prepareStatement(query);

                    // Establece los valores en la consulta SQL
                    statement.setString(1, delegationNews.getDescription());
                    statement.setLong(2, delegationNews.getCreatedBy());
                    statement.setLong(3, delegationNews.getId());

                // Ejecuta la actualización
                statement.executeUpdate();
            } catch (SQLException e) {
                String messageException = "Error DelegationNewsDAO al actualizar el registro en la base de datos:";
                // Mostrar el mensaje en consola
                System.out.println(messageException + " " + e.getMessage());
                // Mostrar el mensaje en una ventana emergente
                CommonUtils.showAlert(Alert.AlertType.ERROR, "Error", messageException + e.getMessage());
                throw new Exception(messageException + " " +  e.getMessage(), e);
            }
        }
    }
}
