package utils;

import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;

public class CommonUtils {

    // Método para mostrar una alerta con tipo configurable
    public static void showAlert(AlertType alertType, String title, String message) {
        Alert alert = new Alert(alertType);  // Crear una alerta según el tipo
        alert.setTitle(title);
        alert.setContentText(message);
        alert.showAndWait(); // Mostrar la alerta y esperar hasta que el usuario la cierre
    }

    public class Titles {
        public static final String TITLE_SYSTEM = "Sistema Centro Integral de Operaciones 911";
        public static final String TITLE_DASHBOARD =   "Dashboard";
        public static final String TITLE_CRUD_INCIDENT =   "Módulo Incidente";
        public static final String TITLE_CRUD_DISPATCH =   "Módulo Despacho";
    }
}
