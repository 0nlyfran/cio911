package repository.typification;

import java.util.List;

import model.Typification;

public interface TypificationRepository {
    List<Typification> getAllTypifications() throws Exception;
}
