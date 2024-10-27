package repository.executingEntity;

import java.util.List;

import model.ExecutingEntity;

public interface ExecutingEntityRepository {
    List<ExecutingEntity> getAllExecutingEntitys() throws Exception;
}
