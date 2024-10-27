package repository.statustype;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javafx.scene.control.Alert;
import model.DatabaseConnection;
import model.StatusType;
import utils.CommonUtils;

public class StatusTypeDAO implements StatusTypeRepository {

    private final DatabaseConnection dbConnection = new DatabaseConnection();

    @Override
    public List<StatusType> getAllStatusTypes() {
        List<StatusType> statusTypes = new ArrayList<>();

        // Usar try-with-resources para manejar automáticamente el cierre de recursos
        try (Connection connection = dbConnection.connect()) {
            if (connection != null) {
                String query = "SELECT * FROM status_type ORDER BY name ASC";
                try (PreparedStatement statement = connection.prepareStatement(query);
                    ResultSet resultSet = statement.executeQuery()) {

                    // Recorrer los resultados y mapear cada fila a un objeto Status
                    while (resultSet.next()) {
                        int id = resultSet.getInt("id");
                        String name = resultSet.getString("name");
                        
                        statusTypes.add(new StatusType(id, name));
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

        return statusTypes;
    }
}
