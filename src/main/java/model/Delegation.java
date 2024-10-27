package model;

public class Delegation {
    private long id;
    private long statusTypeId;
    private long attentionId;
    private String delegationNewsDescription; // Agregado: descripción de las noticias de delegación
    private long executingEntityId;
    private long cancellationReasonId;
    private long incidentId;
    private long createdBy;

    // Constructor vacío
    public Delegation() {}

    // Constructor
    public Delegation(long statusTypeId, long attentionId, long incidentId, long cancellationReasonId, 
                    long executingEntityId, String delegationNewsDescription, long id, long createdBy) {
        this.statusTypeId = statusTypeId;
        this.attentionId = attentionId;
        this.delegationNewsDescription = delegationNewsDescription;
        this.id = id;
        this.executingEntityId = executingEntityId;
        this.cancellationReasonId = cancellationReasonId;
        this.incidentId = incidentId;
        this.createdBy = createdBy;
    }

    // Getters and Setters
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getAttentionId() {
        return attentionId;
    }

    public void setAttentionId(long attentionId) {
        this.attentionId = attentionId;
    }

    public String getDelegationNewsDescription() {
        return delegationNewsDescription;
    }

    public void setDelegationNewsDescription(String delegationNewsDescription) {
        this.delegationNewsDescription = delegationNewsDescription;
    }
    
    public long getExecutingEntityId() {
        return executingEntityId;
    }

    public void setExecutingEntityId(long executingEntityId) {
        this.executingEntityId = executingEntityId;
    }

    public long getCancellationReasonId() {
        return cancellationReasonId;
    }

    public void setCancellationReasonId(long cancellationReasonId) {
        this.cancellationReasonId = cancellationReasonId;
    }

    public long getIncidentId() {
        return incidentId;
    }

    public void setIncidentId(long incidentId) {
        this.incidentId = incidentId;
    }

    public long getStatusTypeId() {
        return statusTypeId;
    }

    public void setStatusTypeId(long statusTypeId) {
        this.statusTypeId = statusTypeId;
    }

    public long getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(long createdBy) {
        this.createdBy = createdBy;
    }

}
