package repository.incident;

import java.util.List;

import model.Incident;

public interface IncidentRepository {
    void addIncident(Incident incident) throws Exception;
    void updateIncident(Incident incident) throws Exception;
    void deleteIncident(int id) throws Exception;
    //Incident getIncidentById(int id) throws Exception;
    List<Incident> getAllIncidents() throws Exception;
    void updateCurrentStatusOfIncident(long incidentId, long incidentStatusId) throws Exception;
}
