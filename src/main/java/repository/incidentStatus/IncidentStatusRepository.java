package repository.incidentStatus;

import java.util.List;

import model.IncidentStatus;

public interface IncidentStatusRepository {
    void addIncidentStatus(IncidentStatus incidentStatus) throws Exception;
    void updateIncidentStatus(IncidentStatus incidentStatus) throws Exception;
    List<IncidentStatus> getAllIncidentStatuss() throws Exception;
}
