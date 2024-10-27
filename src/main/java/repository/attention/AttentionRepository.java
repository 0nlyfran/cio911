package repository.attention;

import java.util.List;

import model.Attention;

public interface AttentionRepository {
    List<Attention> getAllAttentions() throws Exception;
}
