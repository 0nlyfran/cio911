package controller;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.ButtonBar;
import javafx.scene.control.ButtonType;
import javafx.scene.control.ChoiceBox;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import model.Attention;
import model.Code;
import model.Incident;
import model.Locality;
import model.Typification;
import repository.attention.AttentionDAO;
import repository.code.CodeDAO;
import repository.locality.LocalityDAO;
import repository.typification.TypificationDAO;
import service.IncidentService;

public class IncidentController {

    @FXML
    private TextField addressField;

    @FXML
    private ChoiceBox<String> codeIdChoiceBox;

    @FXML
    private TextField descriptionField;

    @FXML
    private ChoiceBox<String> localityIdChoiceBox;

    @FXML
    private TextField personNameField;

    @FXML
    private TextField phoneNumberField;

    @FXML
    private TextField plusDataField;

    @FXML
    private ChoiceBox<String> typificationIdChoiceBox;

    @FXML
    private ChoiceBox<String> attentionIdChoiceBox;

    @FXML
    private TableView<Incident> incidentList;

    @FXML
    private TableColumn<Incident, Long> idColumn;

    @FXML
    private TableColumn<Incident, String> phoneNumberColumn;

    @FXML
    private TableColumn<Incident, String> descriptionColumn;

    @FXML
    private TableColumn<Incident, String> personNameColumn;

    @FXML
    private TableColumn<Incident, String> addressColumn;

    @FXML
    private TableColumn<Incident, String> plusDataColumn;

    @FXML
    private TextField idField;

    @FXML
    private TableColumn<Incident, String> codeNameColumn; // Para mostrar el nombre del código  

    @FXML
    private TableColumn<Incident, String> typificationNameColumn; // Para mostrar el nombre del tipificación  

    @FXML
    private TableColumn<Incident, String> localityNameColumn; // Para mostrar el nombre del localidad  

    @FXML
    private TableColumn<Incident, String> attentionNameColumn; // Para mostrar el nombre de atención 
    
    @FXML
    private TableColumn<Incident, LocalDateTime> dateColumn; // Para mostrar el nombre de atención 


    private final IncidentService incidentService = new IncidentService();
    private Incident selectedIncident; // Para almacenar el registro seleccionado

    private final Map<String, Integer> codeMap = new HashMap<>();  // Map para relacionar nombres con IDs

    private final Map<String, Integer> typificationMap = new HashMap<>();  // Map para relacionar nombres con IDs

    private final Map<String, Integer> localityMap = new HashMap<>();  // Map para relacionar nombres con IDs

    private final Map<String, Integer> attentionMap = new HashMap<>();  // Map para relacionar nombres con IDs


    @FXML
    public void initialize() {
        idColumn.setCellValueFactory(new PropertyValueFactory<>("id"));
        typificationNameColumn.setCellValueFactory(new PropertyValueFactory<>("typificationName"));
        codeNameColumn.setCellValueFactory(new PropertyValueFactory<>("codeName"));
        localityNameColumn.setCellValueFactory(new PropertyValueFactory<>("localityName"));
        attentionNameColumn.setCellValueFactory(new PropertyValueFactory<>("attentionName"));
        phoneNumberColumn.setCellValueFactory(new PropertyValueFactory<>("phoneNumber"));
        descriptionColumn.setCellValueFactory(new PropertyValueFactory<>("description"));
        personNameColumn.setCellValueFactory(new PropertyValueFactory<>("personName"));
        addressColumn.setCellValueFactory(new PropertyValueFactory<>("address"));
        plusDataColumn.setCellValueFactory(new PropertyValueFactory<>("plusData"));
        dateColumn.setCellValueFactory(new PropertyValueFactory<>("UpdatedAt"));

        idField.setEditable(false); // Hacer que el campo no sea editable
        idField.setVisible(false); // Ocultar el campo

        // Code
        CodeDAO codeDAO = new CodeDAO();  // Aquí estamos inicializando `codeDAO`
        // Llenar el ChoiceBox con nombres de códigos y llenar el mapa con id
        List<Code> codes = codeDAO.getAllCodes(); // Obtener todos los códigos de la base de datos
        for (Code code : codes) {
            codeIdChoiceBox.getItems().add(code.getName()); // Añadir el nombre al ChoiceBox
            codeMap.put(code.getName(), code.getId()); // Mapear nombre con id
        }

        // Typification
        TypificationDAO typificationDAO = new TypificationDAO();  // Aquí estamos inicializando `typificationDAO`
        // Llenar el ChoiceBox con nombres de códigos y llenar el mapa con id
        List<Typification> typifications = typificationDAO.getAllTypifications(); // Obtener todos los códigos de la base de datos
        for (Typification typification : typifications) {
            typificationIdChoiceBox.getItems().add(typification.getName()); // Añadir el nombre al ChoiceBox
            typificationMap.put(typification.getName(), typification.getId()); // Mapear nombre con id
        }

        // Locality
        LocalityDAO localityDAO = new LocalityDAO();  // Aquí estamos inicializando `localityDAO`
        // Llenar el ChoiceBox con nombres de códigos y llenar el mapa con id
        List<Locality> localitys = localityDAO.getAllLocalitys(); // Obtener todos los códigos de la base de datos
        for (Locality locality : localitys) {
            localityIdChoiceBox.getItems().add(locality.getName()); // Añadir el nombre al ChoiceBox
            localityMap.put(locality.getName(), locality.getId()); // Mapear nombre con id
        }

        // Attention
        AttentionDAO attentionDAO = new AttentionDAO();  // Aquí estamos inicializando `attentionDAO`
        // Llenar el ChoiceBox con nombres de códigos y llenar el mapa con id
        List<Attention> attentions = attentionDAO.getAllAttentions(); // Obtener todos los códigos de la base de datos
        for (Attention attention : attentions) {
            attentionIdChoiceBox.getItems().add(attention.getName()); // Añadir el nombre al ChoiceBox
            attentionMap.put(attention.getName(), attention.getId()); // Mapear nombre con id
        }
        
        // Agregar listener para la selección de la tabla
        incidentList.getSelectionModel().selectedItemProperty().addListener((observable, oldValue, newValue) -> {
            if (newValue != null) {
                loadIncidentToForm(newValue);
            }
        });

        loadIncidents(); // Cargo la lista
    }


    // Agregar
    @FXML
    public void addIncident() {
        try {
            String address = addressField.getText();
            String description = descriptionField.getText();
            String personName = personNameField.getText();
            String phoneNumber = phoneNumberField.getText();
            String plusData = plusDataField.getText();

            // Code
            String selectedCodeName = codeIdChoiceBox.getValue();  // Obtener el nombre Code seleccionado del ChoiceBox
            // Verificar que el codigo seleccionado no sea nulo
            if (selectedCodeName == null) {
                showAlert("Error", "Por favor, seleccione un código.");
                return;
            }
            // Obtener el ID correspondiente al codigo seleccionado
            int codeId = codeMap.getOrDefault(selectedCodeName, -1);  // Obtener el ID o -1 si no existe

            // Locality
            String selectedLocalityName = localityIdChoiceBox.getValue();  // Obtener el nombre Locality seleccionado del ChoiceBox
            // Verificar que el codigo seleccionado no sea nulo
            if (selectedLocalityName == null) {
                showAlert("Error", "Por favor, seleccione una Localidad.");
                return;
            }
            // Obtener el ID correspondiente al codigo seleccionado
            int localityId = localityMap.getOrDefault(selectedLocalityName, -1);  // Obtener el ID o -1 si no existe
            
            // Typification
            String selectedTypificationName = typificationIdChoiceBox.getValue();  // Obtener el nombre Typification seleccionado del ChoiceBox
            // Verificar que el codigo seleccionado no sea nulo
            if (selectedTypificationName == null) {
                showAlert("Error", "Por favor, seleccione una Tipificación.");
                return;
            }
            // Obtener el ID correspondiente al codigo seleccionado
            int typificationId = typificationMap.getOrDefault(selectedTypificationName, -1);  // Obtener el ID o -1 si no existe

            // Attention
            String selectedAttentionName = attentionIdChoiceBox.getValue();  // Obtener el nombre Attention seleccionado del ChoiceBox
            // Verificar que el codigo seleccionado no sea nulo
            if (selectedAttentionName == null) {
                showAlert("Error", "Por favor, seleccione una Atención.");
                return;
            }
            // Obtener el ID correspondiente al codigo seleccionado
            int attentionId = attentionMap.getOrDefault(selectedAttentionName, -1);  // Obtener el ID o -1 si no existe
            
            incidentService.addIncident(address, description, personName, phoneNumber, plusData, attentionId, codeId, localityId, typificationId);
            // Aquí se muestra el mensaje
            showAlert("Éxito", "Registro guardado correctamente.");
            refreshIncidentList(); // Refresca la lista después de guardar
            clearFields(); // Limpia los campos después de guardar el registro
        } catch (Exception e) {
            // Aquí se muestra el mensaje
            showAlert("Error", "Fallo: " + e.getMessage());
        }
    }

    // Método para cargar los registros y mostrarlos en la tabla
    public void loadIncidents() {
        try {
            List<Incident> incidents = incidentService.getAllIncidents(); // Obtiene los registros del servicio
            incidentList.getItems().clear(); // Limpiar la lista antes de añadir nuevos elementos
    
            // Añadir cada llamada a la tabla
            incidentList.getItems().addAll(incidents);
        } catch (Exception e) {
            showAlert("Error", "No se pudieron cargar los registros: " + e.getMessage());
        }
    }

    // Refrescar lista
    @FXML
    public void refreshIncidentList() {
        // Limpiar los elementos actuales
        incidentList.getItems().clear();

        // Llamada al para cargar los registros 
        loadIncidents();
    }

    // Método para cargar los datos del registro seleccionado en el formulario
    private void loadIncidentToForm(Incident incident) {
        selectedIncident = incident;  // Almacena el registro seleccionado
        addressField.setText(incident.getAddress());
        descriptionField.setText(incident.getDescription());
        personNameField.setText(incident.getPersonName());
        phoneNumberField.setText(incident.getPhoneNumber());
        plusDataField.setText(incident.getPlusData());
        
        // Obtener el nombre del localidad
        String localityName = incident.getLocalityName();
        localityIdChoiceBox.setValue(localityName);  // Asignar el valor al ChoiceBox

        // Obtener el nombre del código
        String codeName = incident.getCodeName();
        codeIdChoiceBox.setValue(codeName);  // Asignar el valor al ChoiceBox

        // Obtener el nombre del tipificación
        String typificationName = incident.getTypificationName();
        typificationIdChoiceBox.setValue(typificationName);  // Asignar el valor al ChoiceBox

        // Obtener el nombre del Atención
        String attentionName = incident.getAttentionName();
        attentionIdChoiceBox.setValue(attentionName);  // Asignar el valor al ChoiceBox
    }

    // Actualizar
    @FXML
    public void updateIncident() {

        if (selectedIncident == null) {
            showAlert("Advertencia", "No hay ningún registro seleccionado para modificar.");
            return;
        }
    
        try {
            String address = addressField.getText();
            String description = descriptionField.getText();
            String personName = personNameField.getText();
            String phoneNumber = phoneNumberField.getText();
            String plusData = plusDataField.getText();

            // Attention
            String selectedAttentionName = attentionIdChoiceBox.getValue();
            // Verificar que se haya seleccionado un tipificación en el ChoiceBox
            if (selectedAttentionName == null) {
                showAlert("Error", "Por favor, seleccione una Atención.");
                return; // Salir del método si no hay selección
            }
            // Obtener el ID correspondiente al tipificación seleccionado del ChoiceBox
            int attentionId = attentionMap.getOrDefault(selectedAttentionName, -1); // Usar un valor por defecto si no se encuentra el tipificación
            if (attentionId == -1) {
                showAlert("Error", "La tipificación seleccionado no es válido.");
                return; // Salir del método si el tipificación no es válido
            }
    
            // Code
            String selectedCodeName = codeIdChoiceBox.getValue();
            // Verificar que se haya seleccionado un código en el ChoiceBox
            if (selectedCodeName == null) {
                showAlert("Error", "Por favor, seleccione un código.");
                return; // Salir del método si no hay selección
            }
            // Obtener el ID correspondiente al código seleccionado del ChoiceBox
            int codeId = codeMap.getOrDefault(selectedCodeName, -1); // Usar un valor por defecto si no se encuentra el código
            if (codeId == -1) {
                showAlert("Error", "El código seleccionado no es válido.");
                return; // Salir del método si el código no es válido
            }
    
            // Locality
            String selectedLocalityName = localityIdChoiceBox.getValue();
            // Verificar que se haya seleccionado un localidaed en el ChoiceBox
            if (selectedLocalityName == null) {
                showAlert("Error", "Por favor, seleccione una localidaed.");
                return; // Salir del método si no hay selección
            }
            // Obtener el ID correspondiente al localidaed seleccionado del ChoiceBox
            int localityId = localityMap.getOrDefault(selectedLocalityName, -1); // Usar un valor por defecto si no se encuentra el localidaed
            if (localityId == -1) {
                showAlert("Error", "La localidaed seleccionado no es válido.");
                return; // Salir del método si el localidaed no es válido
            }
            
            // Typification
            String selectedTypificationName = typificationIdChoiceBox.getValue();
            // Verificar que se haya seleccionado un tipificación en el ChoiceBox
            if (selectedTypificationName == null) {
                showAlert("Error", "Por favor, seleccione una tipificación.");
                return; // Salir del método si no hay selección
            }
            // Obtener el ID correspondiente al tipificación seleccionado del ChoiceBox
            int typificationId = typificationMap.getOrDefault(selectedTypificationName, -1); // Usar un valor por defecto si no se encuentra el tipificación
            if (typificationId == -1) {
                showAlert("Error", "La tipificación seleccionado no es válido.");
                return; // Salir del método si el tipificación no es válido
            }
        
            int id = (int) selectedIncident.getId(); // Obtener el ID de la llamada seleccionada
    
            // Llamar al servicio para actualizar la llamada
            incidentService.updateIncident(address, description, personName, phoneNumber, plusData, attentionId, codeId, localityId, typificationId, id);
    
            // Mostrar mensaje de éxito
            showAlert("Éxito", "Registro modificado correctamente.");
            refreshIncidentList(); // Refrescar la lista después de la actualización
            clearFields(); // Limpiar los campos después de la actualización
    
        } catch (Exception e) {
            // Mostrar mensaje de error
            showAlert("Error", "Fallo: " + e.getMessage());
        }
    }
    

    // Método para eliminar un registro
    @FXML
    public void deleteIncident() {
        if (selectedIncident == null) {
            showAlert("Advertencia", "No hay ningún registro seleccionado para eliminar.");
            return;
        }

        // Crear la alerta de confirmación
        Alert confirmationAlert = new Alert(AlertType.CONFIRMATION);
        confirmationAlert.setTitle("Confirmación");
        confirmationAlert.setHeaderText("Estás a punto de eliminar un registro.");
        confirmationAlert.setContentText("¿Estás seguro de que deseas eliminar este registro?");

        // Agregar botones Aceptar y Cancelar
        ButtonType buttonTypeYes = new ButtonType("Aceptar");
        ButtonType buttonTypeCancel = new ButtonType("Cancelar", ButtonBar.ButtonData.CANCEL_CLOSE);

        confirmationAlert.getButtonTypes().setAll(buttonTypeYes, buttonTypeCancel);

        // Mostrar la alerta y esperar la respuesta del usuario
        confirmationAlert.showAndWait().ifPresent(response -> {
            if (response == buttonTypeYes) {
                try {
                    incidentService.deleteIncident(selectedIncident);  // Eliminar el registro en la base de datos
                    showAlert("Éxito", "Registro eliminado correctamente.");
                    refreshIncidentList(); // Refresca la lista después de guardar
                    clearFields(); // Limpia los campos después de guardar el registro
                } catch (Exception e) {
                    showAlert("Error", "No se pudo eliminar el registro: " + e.getMessage());
                }
            }
        });
    }

    @FXML
    private void clearFields() {
        addressField.setText("");
        descriptionField.setText("");
        personNameField.setText("");
        phoneNumberField.setText("");
        plusDataField.setText("");
        
        codeIdChoiceBox.setValue(null); // Limpiar el ChoiceBox
        typificationIdChoiceBox.setValue(null); // Limpiar el ChoiceBox
        localityIdChoiceBox.setValue(null); // Limpiar el ChoiceBox
        attentionIdChoiceBox.setValue(null); // Limpiar el ChoiceBox

        selectedIncident = null; // Limpia el registro seleccionado
    }
    

    private void showAlert(String title, String message) {
        Alert alert = new Alert(AlertType.INFORMATION);
        alert.setTitle(title);
        alert.setContentText(message);
        alert.showAndWait();
    }
}
