package service;

import model.IncidentStatus;
import repository.incidentStatus.IncidentStatusDAO;

public class IncidentStatusService {

    private final IncidentStatusDAO incidentStatusDAO = new IncidentStatusDAO();

    // Método para agregar
    public void addIncidentStatus(long id, long status_id, long incident_id, long created_by) throws Exception {
        try {
            // Aquí puedes agregar lógica adicional como validaciones
            if (status_id < 0 ) {
                throw new IllegalArgumentException("Datos inválidos");
            }
    
            IncidentStatus incidentStatus = new IncidentStatus();
            incidentStatus.setStatusId(status_id);
            incidentStatus.setIncidentId(incident_id);
            incidentStatus.setCreatedBy(created_by);
    
            incidentStatusDAO.addIncidentStatus(incidentStatus);
            
        } catch (Exception  e) {
            // Volvemos a lanzar la excepción para que llegue al Controller
            throw new Exception("Error al agregar IncidentStatus en el servicio: " + e.getMessage(), e);
        }
    }

}
