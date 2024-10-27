package service;

import java.util.List;

import model.Incident;
import model.IncidentStatus;
import repository.incident.IncidentDAO;
import repository.incidentStatus.IncidentStatusDAO;

public class IncidentService {

    private final IncidentDAO incidentDAO = new IncidentDAO();
    private final IncidentStatusDAO incidentStatusDAO = new IncidentStatusDAO();

    // Método para agregar
    public void addIncident(String address, String description, String personName, String phoneNumber, String plusData, int attentionId, int codeId, int localityId, int typificationId) throws Exception {
    try {
        // Validaciones básicas
        if (address == null || address.isEmpty() || description == null || description.isEmpty() || codeId < 0) {
            throw new IllegalArgumentException("Datos inválidos");
        }

        // Crear una nueva instancia de Incident y establecer los valores
        Incident incident = new Incident();
        incident.setAddress(address);
        incident.setDescription(description);
        incident.setPersonName(personName);
        incident.setPhoneNumber(phoneNumber);
        incident.setPlusData(plusData);
        incident.setAttentionId(attentionId);
        incident.setCodeId(codeId);
        incident.setLocalityId(localityId);
        incident.setTypificationId(typificationId);
        incident.setCreatedBy((long) 1);

        // Insertar el incidente y obtener el ID generado
        incidentDAO.addIncident(incident);

        // Recuperar el ID generado del incidente y realizar acciones adicionales si es necesario
        long incidentId = incident.getId();
        System.out.println("Incidente agregado con ID: " + incidentId);


        // Ejemplo de cómo agregar el estado del incidente
        IncidentStatus incidentStatus = new IncidentStatus();
        incidentStatus.setIncidentId(incidentId); // Usar el ID recién generado
        incidentStatus.setStatusId((long) 1);
        incidentStatus.setCreatedBy((long) 1);
        
        // Insertar el estado del incidentStatus en la base de datos
        incidentStatusDAO.addIncidentStatus(incidentStatus);

        // Recuperar el ID generado del IncidenteStatus y realizar acciones adicionales si es necesario
        long incidentStatusId = incidentStatus.getId();
        System.out.println("IncidentStatus agregado con ID: " + incidentStatusId);

        // Insertar el incidentStatus y obtener el ID generado
        incidentDAO.updateCurrentStatusOfIncident(incidentId, incidentStatusId);


    } catch (Exception e) {
        // Volvemos a lanzar la excepción para que llegue al Controller
        throw new Exception("Error al agregar incidente en el servicio: " + e.getMessage(), e);
    }
}

    // Método para obtener
    public List<Incident> getAllIncidents() throws Exception {
        return incidentDAO.getAllIncidents();
    }

     // Método para eliminar un registro
    public void deleteIncident(Incident incident) throws Exception {
        try {
            // Incidente al DAO para eliminar el registro
            incidentDAO.deleteIncident((int) incident.getId());
        } catch (Exception e) {
            // Propaga la excepción para que sea manejada en el controlador
            throw new Exception("Error eliminando el incidente: " + e.getMessage());
        }
    }

    public void updateIncident(String address, String description, String personName, String phoneNumber, String plusData, int attentionId, int codeId, int localityId, int typificationId, int id) throws Exception {
        try {
            // Aquí puedes agregar lógica adicional como validaciones
            if (address == null || address.isEmpty() || description == null || description.isEmpty() || codeId < 0) {
                throw new IllegalArgumentException("Datos inválidos");
            }

            Incident incident = new Incident();
            incident.setAddress(address);
            incident.setDescription(description);
            incident.setPersonName(personName);
            incident.setPhoneNumber(phoneNumber);
            incident.setPlusData(plusData);
            incident.setAttentionId(attentionId);
            incident.setCodeId(codeId);
            incident.setLocalityId(localityId);
            incident.setTypificationId(typificationId);
            incident.setId(id);

            incidentDAO.updateIncident(incident);

        } catch (Exception  e) {
            // Volvemos a lanzar la excepción para que llegue al Controller
            throw new Exception("Error al actualizar incidente en el servicio: " + e.getMessage(), e);
        }
    }
}
