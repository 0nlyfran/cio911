package model;

public class DelegationNews {
    private String description; // Agregado: descripción de las noticias de delegación
    private long delegationId;
    private long createdBy;
    private long id;

    // Constructor vacío
    public DelegationNews() {}

    // Constructor
    public DelegationNews(String description, long delegationId, long createdBy,  long id) {
        this.description = description;
        this.delegationId = delegationId;
        this.createdBy = createdBy;
        this.id = id;
    }

    // Getters and Setters
    public long getId() {
        return id;
    }

    public void setId(Long delegationNewsId) {
        this.id = delegationNewsId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    

    public long getDelegationId() {
        return delegationId;
    }

    public void setDelegationId(long delegationId) {
        this.delegationId = delegationId;
    }

    public long getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(long createdBy) {
        this.createdBy = createdBy;
    }

}
