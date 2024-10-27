package repository.incidentStatus;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javafx.scene.control.Alert;
import model.DatabaseConnection;
import model.IncidentStatus;
import utils.CommonUtils;

public class IncidentStatusDAO implements IncidentStatusRepository {

    private final DatabaseConnection dbConnection = new DatabaseConnection();

    @Override
    public void addIncidentStatus(IncidentStatus incidentStatus) throws Exception {
        Connection connection = dbConnection.connect();
        if (connection != null) {
            try {
                // Query para insertar un nuevo estado de incidents_status
                String query = "INSERT INTO incidents_status (status_id, incident_id, created_by) VALUES (?, ?, ?)";
    
                // Añadimos RETURN_GENERATED_KEYS para obtener el ID generado
                PreparedStatement statement = connection.prepareStatement(query, PreparedStatement.RETURN_GENERATED_KEYS);
    
                statement.setLong(1, incidentStatus.getStatusId());
                statement.setLong(2, incidentStatus.getIncidentId());
                statement.setLong(3, incidentStatus.getCreatedBy());
    
                // Ejecutamos la actualización (inserción)
                int affectedRows = statement.executeUpdate();
    
                if (affectedRows == 0) {
                    throw new SQLException("No se pudo insertar el incidents_status, no se afectaron filas.");
                }
    
                // Obtenemos el ID generado
                try (ResultSet generatedKeys = statement.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        long generatedId = generatedKeys.getLong(1); // Obtenemos el ID generado
                        // Establecemos el ID generado en el objeto Incident
                        incidentStatus.setId(generatedId);
                    } else {
                        throw new SQLException("No se pudo obtener el ID del incidents_status insertado.");
                    }
                }
    
                // Cerramos la conexión
                connection.close();
    
            } catch (SQLException e) {
                String messageException = "Error IncidentStatusDAO al insertar registro:";
                // Mostrar el mensaje en consola
                System.out.println(messageException + " " + e.getMessage());
                // Mostrar el mensaje en una ventana emergente
                CommonUtils.showAlert(Alert.AlertType.ERROR, "Error", messageException + e.getMessage());
                throw new Exception(messageException + " " + e.getMessage(), e);
            }
        }
    }
    

    @Override
    public List<IncidentStatus> getAllIncidentStatuss() {
        List<IncidentStatus> Incidentstatus = new ArrayList<>();

        // Usar try-with-resources para manejar automáticamente el cierre de recursos
        try (Connection connection = dbConnection.connect()) {
            if (connection != null) {
                String query = "SELECT * FROM incidents_status Order BY id ASC";
                try (PreparedStatement statement = connection.prepareStatement(query);
                    ResultSet resultSet = statement.executeQuery()) {

                    // Recorrer los resultados y mapear cada fila a un objeto IncidentStatus
                    while (resultSet.next()) {
                        int id = resultSet.getInt("id");
                        int status_id = resultSet.getInt("status_id");
                        int incident_id = resultSet.getInt("incident_id");
                        int created_by = resultSet.getInt("created_by");
                        Incidentstatus.add(new IncidentStatus(id, status_id, incident_id, created_by));
                    }
                }
            }
        } catch (SQLException e) {
            String messageException = "Error DAO al obtener los registros:";
            // Mostrar el mensaje en consola
            System.err.println(messageException + " " + e.getMessage());
            // Mostrar el mensaje en una ventana emergente
            CommonUtils.showAlert(Alert.AlertType.ERROR, "Error", messageException + e.getMessage());
        }

        return Incidentstatus;
    }

    @Override
    public void updateIncidentStatus(IncidentStatus incidentStatus) throws Exception {

        Connection connection = dbConnection.connect();
            if (connection != null) {
                try {
                    String query = "UPDATE incidents_status SET status_id = ? " +
                                    "WHERE id = ?";
                    PreparedStatement statement = connection.prepareStatement(query);

                    // Establece los valores en la consulta SQL
                    statement.setLong(1, incidentStatus.getStatusId());
                    statement.setLong(2, incidentStatus.getIncidentId());

                // Ejecuta la actualización
                statement.executeUpdate();
            } catch (SQLException e) {
                String messageException = "Error IncidentStatusDAO al actualizar el registro en la base de datos:";
                // Mostrar el mensaje en consola
                System.out.println(messageException + " " + e.getMessage());
                // Mostrar el mensaje en una ventana emergente
                CommonUtils.showAlert(Alert.AlertType.ERROR, "Error", messageException + e.getMessage());
                throw new Exception(messageException + " " +  e.getMessage(), e);
            }
        }
    }
}
