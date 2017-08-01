package ssm.dao;

import ssm.model.Item;

import java.util.List;

/**
 * Created by hawflakes on 2017/7/22.
 */
public interface ItemDAO {
    List<Item> selectAll();
    void insert(Item item);
    void update(Item item);
    Item selectById(Item item);
    void del(Item item);
}
