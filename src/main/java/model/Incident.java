package model;

import java.sql.Timestamp;

public class Incident {
    private long id;
    private String phoneNumber;
    private long attentionId;
    private String description;
    private String personName;
    private String address;
    private String plusData;
    private long currentStatusId; // Mantener el ID del estado actual
    private String statusName; // Agregado: nombre del estado
    private long localityId;
    private long typificationId;
    private long codeId;
    private long createdBy;
    private Timestamp createdAt;
    private Timestamp updatedAt;
    private Timestamp deletedAt;
    private String codeName; 
    private String typificationName; 
    private String localityName; 
    private String attentionName; 
    private String cancellationReason; // Agregado: motivo de cancelación
    private String executingEntityName; // Agregado: entidad ejecutora
    private String delegationNewsDescription; // Agregado: descripción de las noticias de delegación

    // Constructor vacío
    public Incident() {}

    // Constructor
    public Incident(String phoneNumber, long attentionId, String description, String personName,
                    String address, String plusData, long currentStatusId, String statusName, long localityId, 
                    long typificationId, long codeId, long id, long createdBy, String cancellationReason, 
                    String executingEntityName, String delegationNewsDescription, Timestamp updatedAt) {
        this.phoneNumber = phoneNumber;
        this.attentionId = attentionId;
        this.description = description;
        this.personName = personName;
        this.address = address;
        this.plusData = plusData;
        this.currentStatusId = currentStatusId;
        this.statusName = statusName;
        this.localityId = localityId;
        this.typificationId = typificationId;
        this.codeId = codeId;
        this.id = id;
        this.createdBy = createdBy;
        this.cancellationReason = cancellationReason;
        this.executingEntityName = executingEntityName;
        this.delegationNewsDescription = delegationNewsDescription;
        this.updatedAt = updatedAt;
    }

    // Getters and Setters
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public long getAttentionId() {
        return attentionId;
    }

    public void setAttentionId(long attentionId) {
        this.attentionId = attentionId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPersonName() {
        return personName;
    }

    public void setPersonName(String personName) {
        this.personName = personName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPlusData() {
        return plusData;
    }

    public void setPlusData(String plusData) {
        this.plusData = plusData;
    }

    public long getCurrentStatusId() {
        return currentStatusId;
    }

    public void setCurrentStatusId(long currentStatusId) {
        this.currentStatusId = currentStatusId;
    }

    public String getStatusName() {
        return statusName;
    }

    public void setStatusName(String statusName) {
        this.statusName = statusName;
    }

    public long getLocalityId() {
        return localityId;
    }

    public void setLocalityId(long localityId) {
        this.localityId = localityId;
    }

    public long getTypificationId() {
        return typificationId;
    }

    public void setTypificationId(long typificationId) {
        this.typificationId = typificationId;
    }

    public long getCodeId() {
        return codeId;
    }

    public void setCodeId(long codeId) {
        this.codeId = codeId;
    }

    public long getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(long createdBy) {
        this.createdBy = createdBy;
    }

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    public Timestamp getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Timestamp updatedAt) {
        this.updatedAt = updatedAt;
    }

    public Timestamp getDeletedAt() {
        return deletedAt;
    }

    public void setDeletedAt(Timestamp deletedAt) {
        this.deletedAt = deletedAt;
    }

    public String getCodeName() {
        return codeName;
    }

    public void setCodeName(String codeName) {
        this.codeName = codeName;
    }

    public String getTypificationName() {
        return typificationName;
    }

    public void setTypificationName(String typificationName) {
        this.typificationName = typificationName;
    }

    public String getLocalityName() {
        return localityName;
    }

    public void setLocalityName(String localityName) {
        this.localityName = localityName;
    }

    public String getAttentionName() {
        return attentionName;
    }

    public void setAttentionName(String attentionName) {
        this.attentionName = attentionName;
    }

    public String getCancellationReason() {
        return cancellationReason;
    }

    public void setCancellationReason(String cancellationReason) {
        this.cancellationReason = cancellationReason;
    }

    public String getExecutingEntityName() {
        return executingEntityName;
    }

    public void setExecutingEntityName(String executingEntityName) {
        this.executingEntityName = executingEntityName;
    }

    public String getDelegationNewsDescription() {
        return delegationNewsDescription;
    }

    public void setDelegationNewsDescription(String delegationNewsDescription) {
        this.delegationNewsDescription = delegationNewsDescription;
    }
}
