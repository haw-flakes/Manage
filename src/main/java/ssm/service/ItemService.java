package ssm.service;

import ssm.model.Item;

import java.util.List;

/**
 * Created by hawflakes on 2017/7/22.
 */
public interface ItemService {
    List<Item> getAllItems();
    void add(Item item);
    void update(Item item);
    Item selectById(int itemid);
    void del(int itemid);
}
