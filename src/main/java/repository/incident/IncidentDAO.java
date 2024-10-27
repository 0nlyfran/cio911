package repository.incident;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javafx.scene.control.Alert;
import model.DatabaseConnection;
import model.Incident;

public class IncidentDAO implements IncidentRepository {

    private final DatabaseConnection dbConnection = new DatabaseConnection();

    @Override
    public void addIncident(Incident incident) throws Exception {
        Connection connection = dbConnection.connect();
        if (connection != null) {
            try {
                String query = "INSERT INTO incidents (phone_number, attention_id, description, person_name, address, plus_data, locality_id, typification_id, code_id, current_status_id, created_by) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                
                // Añadimos RETURN_GENERATED_KEYS para obtener el ID generado
                PreparedStatement statement = connection.prepareStatement(query, PreparedStatement.RETURN_GENERATED_KEYS);
    
                // Establecemos los valores de los parámetros
                statement.setString(1, incident.getPhoneNumber());
                statement.setLong(2, incident.getAttentionId());
                statement.setString(3, incident.getDescription());
                statement.setString(4, incident.getPersonName());
                statement.setString(5, incident.getAddress());
                statement.setString(6, incident.getPlusData());
                statement.setLong(7, incident.getLocalityId());
                statement.setLong(8, incident.getTypificationId());
                statement.setLong(9, incident.getCodeId());
                statement.setLong(10, incident.getCurrentStatusId());
                statement.setLong(11, incident.getCreatedBy());
    
                // Ejecutamos la actualización (inserción)
                int affectedRows = statement.executeUpdate();
    
                if (affectedRows == 0) {
                    throw new SQLException("No se pudo insertar el incidente, no se afectaron filas.");
                }
    
                // Obtenemos el ID generado
                try (ResultSet generatedKeys = statement.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        long generatedId = generatedKeys.getLong(1); // Obtenemos el ID generado
                        // Establecemos el ID generado en el objeto Incident
                        incident.setId(generatedId);
                    } else {
                        throw new SQLException("No se pudo obtener el ID del incidente insertado.");
                    }
                }
    
                // Cerramos la conexión
                connection.close();
    
            } catch (SQLException e) {
                String messageException = "Error IncidentDAO al insertar registro:";
                // Mostrar el mensaje en consola
                System.out.println(messageException + " " + e.getMessage());
                // Mostrar el mensaje en una ventana emergente
                showAlert(messageException, "Error: " + e.getMessage());
                throw new Exception(messageException + " " + e.getMessage(), e);
            }
        }
    }

    @Override
    public List<Incident> getAllIncidents() throws Exception {
        List<Incident> incidents = new ArrayList<>();

        // Usar try-with-resources para manejar automáticamente el cierre de recursos
        try (Connection connection = dbConnection.connect()) {
            if (connection != null) {
                String query = "SELECT i.id, i.phone_number, i.attention_id, i.description, i.person_name, "
                    + "i.address, i.plus_data, i.current_status_id, i.locality_id, i.typification_id, "
                    + "i.code_id, co.name AS code_name, ti.full_name AS typification_name, lo.name AS locality_name, "
                    + "at.name AS attention_name, "
                    + " "
                    + " i.updated_at AS UpdatedAt "
                    + "FROM incidents i "
                    + "LEFT JOIN codes co ON i.code_id = co.id "
                    + "LEFT JOIN typification ti ON i.typification_id = ti.id "
                    + "LEFT JOIN localities lo ON i.locality_id = lo.id "
                    + "LEFT JOIN attention_type at ON i.attention_id = at.id "
             
                    + "ORDER BY i.id DESC;"; 

                try (PreparedStatement statement = connection.prepareStatement(query);
                    ResultSet resultSet = statement.executeQuery()) {

                    // Recorrer los resultados y mapear cada fila a un objeto Incident
                    while (resultSet.next()) {
                        Incident incident = new Incident();
                        incident.setId(resultSet.getLong("id"));
                        incident.setPhoneNumber(resultSet.getString("phone_number"));
                        incident.setAttentionId(resultSet.getLong("attention_id"));
                        incident.setAttentionName(resultSet.getString("attention_name"));
                        incident.setDescription(resultSet.getString("description"));
                        incident.setPersonName(resultSet.getString("person_name"));
                        incident.setAddress(resultSet.getString("address"));
                        incident.setPlusData(resultSet.getString("plus_data"));
                        incident.setLocalityId(resultSet.getLong("locality_id"));
                        incident.setLocalityName(resultSet.getString("locality_name"));
                        incident.setTypificationId(resultSet.getLong("typification_id"));
                        incident.setTypificationName(resultSet.getString("typification_name"));
                        incident.setCodeId(resultSet.getLong("code_id"));
                        incident.setCodeName(resultSet.getString("code_name"));
                        incident.setUpdatedAt(resultSet.getTimestamp("UpdatedAt"));

                        
                        // Añadir llamada a la lista
                        incidents.add(incident);
                    }
                }
            }
        } catch (SQLException e) {
            String messageException = "Error IncidentDAO al obtener los registros:";
            // Mostrar el mensaje en consola
            System.err.println(messageException + " " + e.getMessage());
            // Mostrar el mensaje en una ventana emergente
            showAlert(messageException, "Error: " + e.getMessage());
            throw new Exception(messageException + " " +  e.getMessage(), e);
        }

        return incidents;
    }


    @Override
    public void updateIncident(Incident incident) throws Exception {

        Connection connection = dbConnection.connect();
            if (connection != null) {
                try {
                    String query = "UPDATE incidents SET phone_number = ?, attention_id = ?, description = ?, person_name = ?, " +
                                    "address = ?, plus_data = ?, locality_id = ?, typification_id = ?, code_id = ? WHERE id = ?";
                    PreparedStatement statement = connection.prepareStatement(query);

                    // Establece los valores en la consulta SQL
                    statement.setString(1, incident.getPhoneNumber());
                    statement.setLong(2, incident.getAttentionId());
                    statement.setString(3, incident.getDescription());
                    statement.setString(4, incident.getPersonName());
                    statement.setString(5, incident.getAddress());
                    statement.setString(6, incident.getPlusData());
                    statement.setLong(7, incident.getLocalityId());
                    statement.setLong(8, incident.getTypificationId());
                    statement.setLong(9, incident.getCodeId());
                    statement.setLong(10, incident.getId()); // Usa el ID para identificar el registro

                // Ejecuta la actualización
                statement.executeUpdate();
            } catch (SQLException e) {
                throw new Exception("Error al actualizar el registro en la base de datos", e);
            }
        }
    }
    

    @Override
    public void deleteIncident(int id) throws Exception {
        Connection connection = dbConnection.connect();
        if (connection != null) {
            try {
                String query = "DELETE FROM incidents WHERE id = ?";
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
                String messageException = "Error IncidentDAO al eliminar registro:";
                // Mostrar el mensaje en consola
                System.out.println(messageException + " " + e.getMessage());
                throw new Exception(messageException + " " +  e.getMessage(), e);
            }
        }
    }

    public List<Integer> getCountCodes() throws Exception {
        List<Integer> codeCounts = new ArrayList<>();
        String query = "SELECT "
                        + "(SELECT COUNT(*) FROM incidents WHERE code_id = 1) AS codigoRojo, "
                        + "(SELECT COUNT(*) FROM incidents WHERE code_id = 4) AS codigoAmarillo, "
                        + "(SELECT COUNT(*) FROM incidents WHERE code_id = 3) AS codigoVerde, "
                        + "(SELECT COUNT(*) FROM incidents WHERE code_id = 2) AS codigoCeleste, "
                        + "(SELECT COUNT(*) FROM incidents) AS codigoTotalidad";

        try (Connection connection = dbConnection.connect();
             PreparedStatement statement = connection.prepareStatement(query);
             ResultSet resultSet = statement.executeQuery()) {

            if (resultSet.next()) {
                int codigoRojo = resultSet.getInt("codigoRojo");
                int codigoAmarillo = resultSet.getInt("codigoAmarillo");
                int codigoVerde = resultSet.getInt("codigoVerde");
                int codigoCeleste = resultSet.getInt("codigoCeleste");
                int codigoTotalidad = resultSet.getInt("codigoTotalidad");

                // Añadir los resultados a la lista en el mismo orden
                codeCounts.add(codigoRojo);
                codeCounts.add(codigoAmarillo);
                codeCounts.add(codigoVerde);
                codeCounts.add(codigoCeleste);
                codeCounts.add(codigoTotalidad);
            }

        } catch (SQLException e) {
            System.err.println("Error IncidentDAO al obtener las cantidades de códigos: " + e.getMessage());
            showAlert("Error al obtener datos", e.getMessage());
        }

        return codeCounts;
    }

    @Override
    public void updateCurrentStatusOfIncident(long incidentId, long incidentStatusId) throws Exception {

        Connection connection = dbConnection.connect();
        if (connection != null) {
            try {
                String query = "UPDATE incidents SET current_status_id = ? WHERE id = ? ";
                PreparedStatement statement = connection.prepareStatement(query);
                statement.setLong(1, incidentStatusId);
                statement.setLong(2, incidentId);

                int rowsAffected = statement.executeUpdate();
                // Ejecuta la consulta de eliminación

                // Verifica si la eliminación fue exitosa
                if (rowsAffected == 0) {
                    throw new SQLException("No se encontró el Incidente con ID: " + incidentId);
                }
                connection.close();
            } catch (SQLException e) {
                String messageException = "Error IncidentDAO a asignar el incidentStatus registro:";
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
