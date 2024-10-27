package repository.executingEntity;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javafx.scene.control.Alert;
import model.DatabaseConnection;
import model.ExecutingEntity;
import utils.CommonUtils;

public class ExecutingEntityDAO implements repository.executingEntity.ExecutingEntityRepository {

    private final DatabaseConnection dbConnection = new DatabaseConnection();

    @Override
    public List<ExecutingEntity> getAllExecutingEntitys() {
        List<ExecutingEntity> executingEntitys = new ArrayList<>();

        // Usar try-with-resources para manejar automáticamente el cierre de recursos
        try (Connection connection = dbConnection.connect()) {
            if (connection != null) {
                String query = "SELECT * FROM executing_entity Order By name ASC";
                try (PreparedStatement statement = connection.prepareStatement(query);
                    ResultSet resultSet = statement.executeQuery()) {

                    // Recorrer los resultados y mapear cada fila a un objeto ExecutingEntity
                    while (resultSet.next()) {
                        int id = resultSet.getInt("id");
                        String name = resultSet.getString("name");
                        
                        executingEntitys.add(new ExecutingEntity(id, name));
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

        return executingEntitys;
    }
}
