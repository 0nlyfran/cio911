package controller;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.Button;
import javafx.scene.control.ButtonBar;
import javafx.scene.control.ButtonType;
import javafx.scene.control.ChoiceBox;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import model.Attention;
import model.CancellationReason;
import model.Code;
import model.Dispatch;
import model.ExecutingEntity;
import model.Incident;
import model.Locality;
import model.StatusType;
import model.Typification;
import repository.attention.AttentionDAO;
import repository.cancellationReason.CancellationReasonDAO;
import repository.code.CodeDAO;
import repository.executingEntity.ExecutingEntityDAO;
import repository.locality.LocalityDAO;
import repository.statustype.StatusTypeDAO;
import repository.typification.TypificationDAO;
import service.DispatchService;
public class DispatchController {

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
    private TableView<Dispatch> dispatchList;

    @FXML
    private TableColumn<Dispatch, Long> idColumn;

    @FXML
    private TableColumn<Dispatch, String> phoneNumberColumn;

    @FXML
    private TableColumn<Dispatch, String> descriptionColumn;

    @FXML
    private TableColumn<Dispatch, String> personNameColumn;

    @FXML
    private TableColumn<Dispatch, String> addressColumn;

    @FXML
    private TableColumn<Dispatch, String> plusDataColumn;

    @FXML
    private TextField idField;

    @FXML
    private TableColumn<Dispatch, String> codeNameColumn; // Para mostrar el nombre del código  

    @FXML
    private TableColumn<Dispatch, String> typificationNameColumn; // Para mostrar el nombre del tipificación  

    @FXML
    private TableColumn<Dispatch, String> localityNameColumn; // Para mostrar el nombre del localidad  

    @FXML
    private TableColumn<Dispatch, String> attentionNameColumn; // Para mostrar el nombre de atención  

    // Dispatch
    @FXML
    private ChoiceBox<String> executingEntityIdChoiceBox;
    
    @FXML
    private ChoiceBox<String> cancellationReasonIdChoiceBox;
    
    @FXML
    private ChoiceBox<String> statusTypeIdChoiceBox;

    @FXML
    private TextField delegationNewsDescriptionField;

    @FXML
    private TableColumn<Dispatch, String> executingEntityColumn;

    @FXML
    private TableColumn<Dispatch, String> cancellationReasonColumn;

    @FXML
    private TableColumn<Dispatch, String> statusTypeColumn;

    @FXML
    private TableColumn<Dispatch, String> delegationNewsDescriptionColumn;

    @FXML
    private Button saveDispatchButton;

    @FXML
    private Button modifyDispatchButton;

    @FXML
    private Button deleteDispatchButton;

    @FXML
    private Button clearDispatchButton;

    @FXML
    private TableColumn<Incident, LocalDateTime> dateColumn; // Para mostrar el nombre de atención 

    @FXML
    private TextField idDelegationNewsField;

    @FXML
    private TableColumn<Incident, String> idDelegationNewsColumn;
    
    
    private final DispatchService dispatchService = new DispatchService();
    private Dispatch selectedDispatch; // Para almacenar el registro seleccionado

    private final Map<String, Integer> codeMap = new HashMap<>();  // Map para relacionar nombres con IDs

    private final Map<String, Integer> typificationMap = new HashMap<>();  // Map para relacionar nombres con IDs

    private final Map<String, Integer> localityMap = new HashMap<>();  // Map para relacionar nombres con IDs

    private final Map<String, Integer> attentionMap = new HashMap<>();  // Map para relacionar nombres con IDs

    private final Map<String, Integer> statusTypeMap = new HashMap<>();  // Map para relacionar nombres con IDs

    private final Map<String, Integer> cancellationReasonMap = new HashMap<>();  // Map para relacionar nombres con IDs

    private final Map<String, Integer> executingEntityMap = new HashMap<>();  // Map para relacionar nombres con IDs


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
        idDelegationNewsColumn.setCellValueFactory(new PropertyValueFactory<>("delegationNewsId"));

        //Dispatch
        executingEntityColumn.setCellValueFactory(new PropertyValueFactory<>("executingEntityName"));
        cancellationReasonColumn.setCellValueFactory(new PropertyValueFactory<>("cancellationReasonName"));
        statusTypeColumn.setCellValueFactory(new PropertyValueFactory<>("statusName"));
        delegationNewsDescriptionColumn.setCellValueFactory(new PropertyValueFactory<>("delegationNewsDescription"));

        idField.setEditable(false); // Hacer que el campo no sea editable
        idField.setVisible(false); // Ocultar el campo

        // idDelegationNewsField.setEditable(false); // Hacer que el campo no sea editable
        // idDelegationNewsField.setVisible(false); // Ocultar el campo

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

        // StatusType
        StatusTypeDAO statusTypeDAO = new StatusTypeDAO();  // Aquí estamos inicializando `statusTypeDAO`
        // Llenar el ChoiceBox con nombres de códigos y llenar el mapa con id
        List<StatusType> statusTypes = statusTypeDAO.getAllStatusTypes(); // Obtener todos los códigos de la base de datos
        for (StatusType statusType : statusTypes) {
            statusTypeIdChoiceBox.getItems().add(statusType.getName()); // Añadir el nombre al ChoiceBox
            statusTypeMap.put(statusType.getName(), statusType.getId()); // Mapear nombre con id
        }

       // CancellationReason
        CancellationReasonDAO cancellationReasonDAO = new CancellationReasonDAO();  // Aquí estamos inicializando `cancellationReasonDAO`
        // Llenar el ChoiceBox con nombres de códigos y llenar el mapa con id
        List<CancellationReason> cancellationReasons = cancellationReasonDAO.getAllcancellationReasons(); // Obtener todos los códigos de la base de datos
        for (CancellationReason cancellationReason : cancellationReasons) {
            cancellationReasonIdChoiceBox.getItems().add(cancellationReason.getName()); // Añadir el nombre al ChoiceBox
            cancellationReasonMap.put(cancellationReason.getName(), cancellationReason.getId()); // Mapear nombre con id
        }

        // ExecutingEntity
        ExecutingEntityDAO executingEntityDAO = new ExecutingEntityDAO();  // Aquí estamos inicializando `executingEntityDAO`
        // Llenar el ChoiceBox con nombres de códigos y llenar el mapa con id
        List<ExecutingEntity> executingEntitys = executingEntityDAO.getAllExecutingEntitys(); // Obtener todos los códigos de la base de datos
        for (ExecutingEntity executingEntity : executingEntitys) {
            executingEntityIdChoiceBox.getItems().add(executingEntity.getName()); // Añadir el nombre al ChoiceBox
            executingEntityMap.put(executingEntity.getName(), executingEntity.getId()); // Mapear nombre con id
        }

        // Deshabilitar el botones
        saveDispatchButton.setDisable(true);
        modifyDispatchButton.setDisable(true);
        deleteDispatchButton.setDisable(true);
        clearDispatchButton.setDisable(true);

        
        // Agregar listener para la selección de la tabla
        dispatchList.getSelectionModel().selectedItemProperty().addListener((observable, oldValue, newValue) -> {
            if (newValue != null) {
                loadDispatchToForm(newValue);

                // Si hay un valor en el campo executingEntity del nuevo valor seleccionado
                if (newValue.getCancellationReasonName() != null) {
                    saveDispatchButton.setDisable(true);  // Deshabilitar el Boton guardar
                    modifyDispatchButton.setDisable(false);
                    deleteDispatchButton.setDisable(false);
                    clearDispatchButton.setDisable(false);
                } else {
                    saveDispatchButton.setDisable(false); // Habilitar el el Boton guardar
                    modifyDispatchButton.setDisable(true);
                    deleteDispatchButton.setDisable(true);
                    clearDispatchButton.setDisable(false);
                }

            }
        });

        loadDispatchs(); // Cargo la lista
    }


    // Agregar
    @FXML
    public void addDispatch() {
        try {
            String delegationNewsDescription = delegationNewsDescriptionField.getText();

            // ExecutingEntity
            String selectedExecutingEntityName = executingEntityIdChoiceBox.getValue();  // Obtener el nombre ExecutingEntity seleccionado del ChoiceBox
            // Verificar que el codigo seleccionado no sea nulo
            if (selectedExecutingEntityName == null) {
                showAlert("Error", "Por favor, seleccione una entidad ejecutora.");
                return;
            }
            // Obtener el ID correspondiente al codigo seleccionado
            int executingEntityId = executingEntityMap.getOrDefault(selectedExecutingEntityName, -1);  // Obtener el ID o -1 si no existe

            // CancellationReason
            String selectedCancellationReasonName = cancellationReasonIdChoiceBox.getValue();  // Obtener el nombre CancellationReason seleccionado del ChoiceBox
            // Verificar que el codigo seleccionado no sea nulo
            if (selectedCancellationReasonName == null) {
                showAlert("Error", "Por favor, seleccione una cancellationReason.");
                return;
            }
            // Obtener el ID correspondiente al codigo seleccionado
            int cancellationReasonId = cancellationReasonMap.getOrDefault(selectedCancellationReasonName, -1);  // Obtener el ID o -1 si no existe

            // StatusType
            String selectedStatusTypeName = statusTypeIdChoiceBox.getValue();  // Obtener el nombre StatusType seleccionado

            // Verificar que el codigo seleccionado no sea nulo
            if (selectedStatusTypeName == null) {
                showAlert("Error", "Por favor, seleccione una Atención.");
                return;
            }
            // Obtener el ID correspondiente al codigo seleccionado
            int statusTypeId = statusTypeMap.getOrDefault(selectedStatusTypeName, -1);  // Obtener el ID o -1 si no existe

            int incidentId = (int) selectedDispatch.getId(); // Obtener el ID de la llamada seleccionada
            int createdBy = 1;

            dispatchService.addDispatch(statusTypeId, incidentId, executingEntityId, cancellationReasonId, delegationNewsDescription, createdBy);

            // Aquí se muestra el mensaje
            showAlert("Éxito", "Registro guardado correctamente.");
            refreshDispatchList(); // Refresca la lista después de guardar
            clearFields(); // Limpia los campos después de guardar el registro
        } catch (Exception e) {
            // Aquí se muestra el mensaje
            showAlert("Error", "Fallo: " + e.getMessage());
        }
    }

    // Método para cargar los registros y mostrarlos en la tabla
    public void loadDispatchs() {
        try {
            List<Dispatch> dispatchs = dispatchService.getAllDispatchs(); // Obtiene los registros del servicio
            dispatchList.getItems().clear(); // Limpiar la lista antes de añadir nuevos elementos
    
            // Añadir cada llamada a la tabla
            dispatchList.getItems().addAll(dispatchs);
        } catch (Exception e) {
            showAlert("Error", "No se pudieron cargar los registros: " + e.getMessage());
        }
    }

    // Refrescar lista
    @FXML
    public void refreshDispatchList() {
        // Limpiar los elementos actuales
        dispatchList.getItems().clear();

        // Llamada al para cargar los registros 
        loadDispatchs();
    }

    // Método para cargar los datos del registro seleccionado en el formulario
    private void loadDispatchToForm(Dispatch dispatch) {
        selectedDispatch = dispatch;  // Almacena el registro seleccionado
        addressField.setText(dispatch.getAddress());
        descriptionField.setText(dispatch.getDescription());
        personNameField.setText(dispatch.getPersonName());
        phoneNumberField.setText(dispatch.getPhoneNumber());
        plusDataField.setText(dispatch.getPlusData());
        delegationNewsDescriptionField.setText(dispatch.getDelegationNewsDescription());
        idDelegationNewsField.setText(dispatch.getDelegationNewsId());
        
        // Obtener el nombre del localidad
        String localityName = dispatch.getLocalityName();
        localityIdChoiceBox.setValue(localityName);  // Asignar el valor al ChoiceBox

        // Obtener el nombre del código
        String codeName = dispatch.getCodeName();
        codeIdChoiceBox.setValue(codeName);  // Asignar el valor al ChoiceBox

        // Obtener el nombre del tipificación
        String typificationName = dispatch.getTypificationName();
        typificationIdChoiceBox.setValue(typificationName);  // Asignar el valor al ChoiceBox

        // Obtener el nombre del Atención
        String attentionName = dispatch.getAttentionName();
        attentionIdChoiceBox.setValue(attentionName);  // Asignar el valor al ChoiceBox

        // Obtener el nombre del Entidad Ejecutora
        String executingEntityName = dispatch.getExecutingEntityName();
        executingEntityIdChoiceBox.setValue(executingEntityName);  // Asignar el valor al ChoiceBox

        // Obtener el nombre del Razón de Cancelación
        String cancellationReasonName = dispatch.getCancellationReasonName();
        cancellationReasonIdChoiceBox.setValue(cancellationReasonName);  // Asignar el valor al ChoiceBox

        // Obtener el nombre del Estado
        String statusName = dispatch.getStatusName();
        statusTypeIdChoiceBox.setValue(statusName);  // Asignar el valor al ChoiceBox
    }

    // Actualizar
    @FXML
    public void updateDispatch() {

        if (selectedDispatch == null) {
            showAlert("Advertencia", "No hay ningún registro seleccionado para modificar.");
            return;
        }
    
        try {
            String delegationNewsDescription = delegationNewsDescriptionField.getText();
            String delegationNewsId = idDelegationNewsField.getText();

            // ExecutingEntity
            String selectedExecutingEntityName = executingEntityIdChoiceBox.getValue();  // Obtener el nombre ExecutingEntity seleccionado del ChoiceBox
            // Verificar que el codigo seleccionado no sea nulo
            if (selectedExecutingEntityName == null) {
                showAlert("Error", "Por favor, seleccione una entidad ejecutora.");
                return;
            }
            // Obtener el ID correspondiente al codigo seleccionado
            int executingEntityId = executingEntityMap.getOrDefault(selectedExecutingEntityName, -1);  // Obtener el ID o -1 si no existe

            // CancellationReason
            String selectedCancellationReasonName = cancellationReasonIdChoiceBox.getValue();  // Obtener el nombre CancellationReason seleccionado del ChoiceBox
            // Verificar que el codigo seleccionado no sea nulo
            if (selectedCancellationReasonName == null) {
                showAlert("Error", "Por favor, seleccione una cancellationReason.");
                return;
            }
            // Obtener el ID correspondiente al codigo seleccionado
            int cancellationReasonId = cancellationReasonMap.getOrDefault(selectedCancellationReasonName, -1);  // Obtener el ID o -1 si no existe

            // StatusType
            String selectedStatusTypeName = statusTypeIdChoiceBox.getValue();  // Obtener el nombre StatusType seleccionado del 

            // Verificar que el codigo seleccionado no sea nulo
            if (selectedStatusTypeName == null) {
                showAlert("Error", "Por favor, seleccione una Atención.");
                return;
            }
            // Obtener el ID correspondiente al codigo seleccionado
            int statusTypeId = statusTypeMap.getOrDefault(selectedStatusTypeName, -1);  // Obtener el ID o -1 si no existe

            int incidentId = (int) selectedDispatch.getId(); // Obtener el ID de la llamada seleccionada
            int createdBy = 1;
        
            int id = (int) selectedDispatch.getId(); // Obtener el ID de la llamada seleccionada
    
            // Llamar al servicio para actualizar la llamada
            dispatchService.updateDispatch(statusTypeId, incidentId, executingEntityId, cancellationReasonId, delegationNewsDescription, createdBy, id, delegationNewsId);
    
            // Mostrar mensaje de éxito
            showAlert("Éxito", "Registro modificado correctamente.");
            refreshDispatchList(); // Refrescar la lista después de la actualización
            clearFields(); // Limpiar los campos después de la actualización
    
        } catch (Exception e) {
            // Mostrar mensaje de error
            showAlert("Error", "Fallo: " + e.getMessage());
        }
    }
    

    // Método para eliminar un despacho
    @FXML
    public void deleteDispatch() {
        if (selectedDispatch == null) {
            showAlert("Advertencia", "No hay ningún despacho seleccionado para eliminar.");
            return;
        }

        // Crear la alerta de confirmación
        Alert confirmationAlert = new Alert(AlertType.CONFIRMATION);
        confirmationAlert.setTitle("Confirmación");
        confirmationAlert.setHeaderText("Estás a punto de eliminar un despacho.");
        confirmationAlert.setContentText("¿Estás seguro de que deseas eliminar este despacho?");

        // Agregar botones Aceptar y Cancelar
        ButtonType buttonTypeYes = new ButtonType("Aceptar");
        ButtonType buttonTypeCancel = new ButtonType("Cancelar", ButtonBar.ButtonData.CANCEL_CLOSE);

        confirmationAlert.getButtonTypes().setAll(buttonTypeYes, buttonTypeCancel);

        // Mostrar la alerta y esperar la respuesta del usuario
        confirmationAlert.showAndWait().ifPresent(response -> {
            if (response == buttonTypeYes) {
                try {
                    dispatchService.deleteDispatch(selectedDispatch);  // Eliminar el despacho en la base de datos
                    showAlert("Éxito", "Despacho eliminado correctamente.");
                    refreshDispatchList(); // Refresca la lista después de guardar
                    clearFields(); // Limpia los campos después de guardar el despacho
                } catch (Exception e) {
                    showAlert("Error", "No se pudo eliminar el despacho: " + e.getMessage());
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

        // Dispatch
        executingEntityIdChoiceBox.setValue(null); // Limpiar el ChoiceBox
        cancellationReasonIdChoiceBox.setValue(null); // Limpiar el ChoiceBox
        statusTypeIdChoiceBox.setValue(null); // Limpiar el ChoiceBox

        delegationNewsDescriptionField.setText("");

        selectedDispatch = null; // Limpia el registro seleccionado

        saveDispatchButton.setDisable(true);
        modifyDispatchButton.setDisable(true);
        deleteDispatchButton.setDisable(true);
        clearDispatchButton.setDisable(true);
    }
    

    private void showAlert(String title, String message) {
        Alert alert = new Alert(AlertType.INFORMATION);
        alert.setTitle(title);
        alert.setContentText(message);
        alert.showAndWait();
    }
}
