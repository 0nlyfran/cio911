package repository.dispatch;

import java.util.List;

import model.Dispatch;

public interface DispatchRepository {
    void updateDispatch(Dispatch dispatch) throws Exception;
    void deleteDispatch(int id) throws Exception;
    List<Dispatch> getAllDispatchs() throws Exception;
}
