package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javafx.application.Platform;
import javafx.scene.control.Alert;
import utils.CommonUtils;

public class DatabaseConnection {
    private static final String URL = "jdbc:mysql://localhost:13306/cio911";
    private static final String USER = "root";
    private static final String PASSWORD = "roottYYlKq3GFKawg";

    public Connection connect() {
        Connection connection = null;
        try {
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Conexión exitosa a MySQL");
        } catch (SQLException e) {
            String messageAlert = "Error de conexión a Base de datos: ";
            System.out.println(messageAlert + e.getMessage());
            CommonUtils.showAlert(Alert.AlertType.ERROR, "Error", messageAlert + e.getMessage());
            Platform.exit(); // Cierra la aplicación en caso de errores
        }
        return connection;
    }
}
