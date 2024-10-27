package repository.locality;

import java.util.List;

import model.Locality;

public interface LocalityRepository {
    List<Locality> getAllLocalitys() throws Exception;
}
