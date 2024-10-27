package repository.statustype;

import java.util.List;

import model.StatusType;

public interface StatusTypeRepository {
    List<StatusType> getAllStatusTypes() throws Exception;
}
