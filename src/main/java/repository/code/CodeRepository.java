package repository.code;

import java.util.List;

import model.Code;

public interface CodeRepository {
    List<Code> getAllCodes() throws Exception;
}
