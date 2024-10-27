package repository.typification;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javafx.scene.control.Alert;
import model.DatabaseConnection;
import model.Typification;
import utils.CommonUtils;

public class TypificationDAO implements TypificationRepository {

    private final DatabaseConnection dbConnection = new DatabaseConnection();

    @Override
    public List<Typification> getAllTypifications() {
        List<Typification> typifications = new ArrayList<>();

        // Usar try-with-resources para manejar automáticamente el cierre de recursos
        try (Connection connection = dbConnection.connect()) {
            if (connection != null) {
                String query = "SELECT id, full_name FROM typification Order By full_name ASC";
                try (PreparedStatement statement = connection.prepareStatement(query);
                     ResultSet resultSet = statement.executeQuery()) {

                    // Recorrer los resultados y mapear cada fila a un objeto Typification
                    while (resultSet.next()) {
                        int id = resultSet.getInt("id");
                        String name = resultSet.getString("full_name");
                        typifications.add(new Typification(id, name));
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

        return typifications;
    }
}
