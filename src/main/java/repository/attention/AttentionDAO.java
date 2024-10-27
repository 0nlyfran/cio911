package repository.attention;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javafx.scene.control.Alert;
import model.Attention;
import model.DatabaseConnection;
import utils.CommonUtils;

public class AttentionDAO implements AttentionRepository {

    private final DatabaseConnection dbConnection = new DatabaseConnection();

    @Override
    public List<Attention> getAllAttentions() {
        List<Attention> attentions = new ArrayList<>();

        // Usar try-with-resources para manejar automáticamente el cierre de recursos
        try (Connection connection = dbConnection.connect()) {
            if (connection != null) {
                String query = "SELECT * FROM attention_type Order BY id ASC";
                try (PreparedStatement statement = connection.prepareStatement(query);
                    ResultSet resultSet = statement.executeQuery()) {

                    // Recorrer los resultados y mapear cada fila a un objeto Attention
                    while (resultSet.next()) {
                        int id = resultSet.getInt("id");
                        String name = resultSet.getString("name");
                        attentions.add(new Attention(id, name));
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

        return attentions;
    }
}
