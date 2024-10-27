package controller;

import java.io.IOException;
import java.util.List;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.text.Text;
import javafx.stage.Stage;
import repository.incident.IncidentDAO;
import utils.CommonUtils;
import utils.Paths;

public class MainController {
    // Dashboard
    @FXML
    private Text countCodeGreen;

    @FXML
    private Text countCodeLigthBlue;

    @FXML
    private Text countCodeRed;

    @FXML
    private Text countCodeYellow;

    @FXML
    private Text countCodeTotal;

    private final IncidentDAO incidentDAO = new IncidentDAO();  // Instancia del DAO

    public void loadDashboardData() throws Exception {
        List<Integer> codeCounts = incidentDAO.getCountCodes();  // Obtener las cantidades de los códigos

        if (codeCounts.size() == 5) {  // Trae solo 5 elementos
            countCodeRed.setText(String.valueOf(codeCounts.get(0)));
            countCodeYellow.setText(String.valueOf(codeCounts.get(1)));
            countCodeGreen.setText(String.valueOf(codeCounts.get(2)));
            countCodeLigthBlue.setText(String.valueOf(codeCounts.get(3)));
            countCodeTotal.setText(String.valueOf(codeCounts.get(4)));
        }
    }

    @FXML
    public void initialize() throws Exception {
        loadDashboardData();  // Cargar los datos al iniciar la vista
    }


    // Menú
    Stage callStage = new Stage();

    // Método para cargar la vista incidente
    @FXML
    public void goToIncidentView() {
        FXMLLoader loader = new FXMLLoader(getClass().getResource(Paths.INCIDENT_VIEW));
        Scene scene;
        try {
            scene = new Scene(loader.load());
            callStage.setScene(scene);
            callStage.setTitle(CommonUtils.Titles.TITLE_CRUD_INCIDENT);
            callStage.show();
        } catch (IOException ex) {
            ex.printStackTrace();
            System.out.println("Error al cargar la vista: " + Paths.INCIDENT_VIEW);
        }
    }

    // Método para cargar la vista despacho
    @FXML
    public void goToDispatchView() {
        FXMLLoader loader = new FXMLLoader(getClass().getResource(Paths.DISPATCH_VIEW));
        Scene scene;
        try {
            scene = new Scene(loader.load());
            callStage.setScene(scene);
            callStage.setTitle(CommonUtils.Titles.TITLE_CRUD_DISPATCH);
            callStage.show();
        } catch (IOException ex) {
            ex.printStackTrace();
            System.out.println("Error al cargar la vista: " + Paths.DISPATCH_VIEW);
        }
    }

    // Método para cargar la primera vista del dashboard
    @FXML
    public void goToDashboardView() {
        try {
            loadDashboardData();  
            String messageException = "Los registros del Dashboard fueron actualizados.";
            CommonUtils.showAlert(Alert.AlertType.INFORMATION, "Información", messageException);
        } catch (Exception e) {
            String messageException = "Error DAO al obtener los registros:";
            // Mostrar el mensaje en consola
            System.err.println(messageException + " " + e.getMessage());
            // Mostrar el mensaje en una ventana emergente
            CommonUtils.showAlert(Alert.AlertType.ERROR, "Error", messageException + e.getMessage());
        }
    }
}