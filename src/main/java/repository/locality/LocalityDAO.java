package repository.locality;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javafx.scene.control.Alert;
import model.DatabaseConnection;
import model.Locality;
import utils.CommonUtils;

public class LocalityDAO implements repository.locality.LocalityRepository {

    private final DatabaseConnection dbConnection = new DatabaseConnection();

    @Override
    public List<Locality> getAllLocalitys() {
        List<Locality> localitys = new ArrayList<>();

        // Usar try-with-resources para manejar automáticamente el cierre de recursos
        try (Connection connection = dbConnection.connect()) {
            if (connection != null) {
                String query = "SELECT * FROM localities Order By name ASC";
                try (PreparedStatement statement = connection.prepareStatement(query);
                    ResultSet resultSet = statement.executeQuery()) {

                    // Recorrer los resultados y mapear cada fila a un objeto Locality
                    while (resultSet.next()) {
                        int id = resultSet.getInt("id");
                        String name = resultSet.getString("name");

                        localitys.add(new Locality(id, name));
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

        return localitys;
    }
}
