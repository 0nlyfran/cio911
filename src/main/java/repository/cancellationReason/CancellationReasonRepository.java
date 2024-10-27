package repository.cancellationReason;

import java.util.List;

import model.CancellationReason;

public interface CancellationReasonRepository {
    List<CancellationReason> getAllcancellationReasons() throws Exception;
}
