package repository.delegation;

import model.Delegation;

public interface DelegationRepository {
    void addDelegation(Delegation deleDelegation) throws Exception;
    void updateDelegation(Delegation deleDelegation) throws Exception;
    void deleteDelegation(int id) throws Exception;
}
