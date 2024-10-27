package model;

public class IncidentStatus {
    private long id;
    private long statusId;
    private long incidentId;
    private long createdBy;

    // Constructor vacío
    public IncidentStatus() {}

    // Constructor
    public IncidentStatus(long id, long statusId, long incidentId, long createdBy) {
        this.id = (long) id;
        this.statusId = statusId;
        this.incidentId = (long) incidentId;
        this.createdBy = (long) createdBy;
    }

    // Getters y Setters
    public long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getStatusId() {
        return statusId;
    }

    public void setStatusId(Long statusId) {
        this.statusId = statusId;
    }

    public Long getIncidentId() {
        return incidentId;
    }

    public void setIncidentId(Long incidentId) {
        this.incidentId = incidentId;
    }

    public Long getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(Long createdBy) {
        this.createdBy = createdBy;
    }
}
