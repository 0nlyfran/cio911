package repository.cancellationReason;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javafx.scene.control.Alert;
import model.CancellationReason;
import model.DatabaseConnection;
import utils.CommonUtils;

public class CancellationReasonDAO implements CancellationReasonRepository {

    private final DatabaseConnection dbConnection = new DatabaseConnection();

    @Override
    public List<CancellationReason> getAllcancellationReasons() {
        List<CancellationReason> cancellationReasons = new ArrayList<>();

        // Usar try-with-resources para manejar automáticamente el cierre de recursos
        try (Connection connection = dbConnection.connect()) {
            if (connection != null) {
                String query = "SELECT * FROM cancellation_reason Order By reason ASC";
                try (PreparedStatement statement = connection.prepareStatement(query);
                    ResultSet resultSet = statement.executeQuery()) {

                    // Recorrer los resultados y mapear cada fila a un objeto CancellationReason
                    while (resultSet.next()) {
                        int id = resultSet.getInt("id");
                        String name = resultSet.getString("reason");
                        
                        cancellationReasons.add(new CancellationReason(id, name));
                    }
                }
            }
        } catch (SQLException e) {
            String messageException = "Error CancellationReasonDAO al obtener los registros:";
            // Mostrar el mensaje en consola
            System.err.println(messageException + " " + e.getMessage());
            // Mostrar el mensaje en una ventana emergente
            CommonUtils.showAlert(Alert.AlertType.ERROR, "Error", messageException + e.getMessage());
        }

        return cancellationReasons;
    }
}
