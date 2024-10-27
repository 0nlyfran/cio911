package repository.delegationNews;

import model.DelegationNews;

public interface DelegationNewsRepository {
    void addDelegationNews(DelegationNews DelegationNews) throws Exception;
    void updateDelegationNews(DelegationNews DelegationNews) throws Exception;
}
