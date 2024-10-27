package service;

import java.util.List;

import model.Delegation;
import model.DelegationNews;
import model.Dispatch;
import model.IncidentStatus;
import repository.delegation.DelegationDAO;
import repository.delegationNews.DelegationNewsDAO;
import repository.dispatch.DispatchDAO;
import repository.incidentStatus.IncidentStatusDAO;

public class DispatchService {

    private final DispatchDAO dispatchDAO = new DispatchDAO();
    private final DelegationDAO delegationDAO = new DelegationDAO();
    private final DelegationNewsDAO delegationNewsDAO = new DelegationNewsDAO();
    private final IncidentStatusDAO incidentStatusDAO = new IncidentStatusDAO();

    // Método para agregar
    public void addDispatch(int statusTypeId, int incidentId, int executingEntityId, int cancellationReasonId, String delegationNewsDescription, int createdBy) throws Exception {
        try {
            // Aquí puedes agregar lógica adicional como validaciones
            if (delegationNewsDescription == null || delegationNewsDescription.isEmpty() || executingEntityId < 0) {
                throw new IllegalArgumentException("Datos inválidos");
            }
    
            Delegation delegation = new Delegation();
           
            delegation.setExecutingEntityId(executingEntityId);
            delegation.setCancellationReasonId(cancellationReasonId);
            delegation.setDelegationNewsDescription(delegationNewsDescription);
            delegation.setStatusTypeId(statusTypeId);
            delegation.setIncidentId(incidentId);
            delegation.setCreatedBy(createdBy);

            delegationDAO.addDelegation(delegation);

            // Recuperar el ID generado del incidente y realizar acciones adicionales si es necesario
            long delegationId = delegation.getId();
            System.out.println("Delegation agregado con ID: " + delegationId);


            // Ejemplo de cómo agregar el estado del incidente
            DelegationNews delegationNews = new DelegationNews();
            delegationNews.setDescription(delegationNewsDescription);
            delegationNews.setDelegationId(delegationId); // Usar el ID recién generado
            delegationNews.setCreatedBy((long) 1);
            
            // Insertar el estado del delegationNews en la base de datos
            delegationNewsDAO.addDelegationNews(delegationNews);

            // Incident Status
            IncidentStatus incidentStatus = new IncidentStatus();
            incidentStatus.setStatusId((long) statusTypeId);
            incidentStatus.setIncidentId((long) incidentId);
   
            incidentStatusDAO.updateIncidentStatus(incidentStatus);
            
        } catch (Exception  e) {
            // Volvemos a lanzar la excepción para que llegue al Controller
            throw new Exception("Error al agregar despacho en el servicio: " + e.getMessage(), e);
        }
    }

    // Método para obtener
    public List<Dispatch> getAllDispatchs() throws Exception {
        return dispatchDAO.getAllDispatchs();
    }

     // Método para eliminar un registro
    public void deleteDispatch(Dispatch dispatch) throws Exception {
        try {
            
            // Despacho al DAO para eliminar el registro
            delegationDAO.deleteDelegation((int) dispatch.getId());
            
           
            IncidentStatus incidentStatus = new IncidentStatus();
            // Asignar el id del incidente (dispatch.getId()) a la propiedad correspondiente
            incidentStatus.setIncidentId(dispatch.getId()); // Asegúrate de que setIncidentId() exista en IncidentStatus
            incidentStatus.setStatusId((long) 1);

            // Llamar al método updateIncidentStatus con el objeto IncidentStatus
            incidentStatusDAO.updateIncidentStatus(incidentStatus);

        } catch (Exception e) {
            // Propaga la excepción para que sea manejada en el controlador
            throw new Exception("Error eliminando la despacho: " + e.getMessage());
        }
    }

    public void updateDispatch(int statusTypeId, int incidentId, int executingEntityId, int cancellationReasonId, String delegationNewsDescription, int createdBy, int id, String delegationNewsId) throws Exception {
        try {
            // Aquí puedes agregar lógica adicional como validaciones
            if (delegationNewsDescription == null || delegationNewsDescription.isEmpty() || executingEntityId < 0) {
                throw new IllegalArgumentException("Datos inválidos");
            }

            System.out.println("incidentId: " + incidentId);
            System.out.println("id: " + id);
            System.out.println("statusTypeId: " + statusTypeId);
            System.out.println("delegationNewsId: " + delegationNewsId);

            Long delegationNewsIdLong = Long.parseLong(delegationNewsId); 

            Delegation delegation = new Delegation();
            delegation.setExecutingEntityId(executingEntityId);
            delegation.setCancellationReasonId(cancellationReasonId);
            delegation.setDelegationNewsDescription(delegationNewsDescription);
            delegation.setStatusTypeId(statusTypeId);
            delegation.setIncidentId(incidentId);
            delegation.setCreatedBy(createdBy);
            delegation.setId(id);

            delegationDAO.updateDelegation(delegation);

            // Ejemplo de cómo agregar el estado del incidente
            DelegationNews delegationNews = new DelegationNews();
            delegationNews.setDescription(delegationNewsDescription);
            delegationNews.setDelegationId(id); // Usar el ID recién generado
            delegationNews.setCreatedBy((long) 1);
            delegationNews.setId(delegationNewsIdLong);
            
            // Insertar el estado del delegationNews en la base de datos
            delegationNewsDAO.updateDelegationNews(delegationNews);

        } catch (Exception  e) {
            String messageException = "Error al actualizar despacho en el servicio:";
            // Mostrar el mensaje en consola
            System.out.println(messageException + " " + e.getMessage());
            throw new Exception(messageException + " " +  e.getMessage(), e);

        }
    }

}
