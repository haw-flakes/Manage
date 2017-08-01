package ssm.service.impl;

import org.springframework.stereotype.Service;
import ssm.dao.ItemDAO;
import ssm.model.Item;
import ssm.service.ItemService;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by hawflakes on 2017/7/22.
 */
@Service
public class ItemServiceImpl implements ItemService {
    @Resource
    private ItemDAO itemDAO;

    public List<Item> getAllItems() {
        List<Item> itemList = itemDAO.selectAll();
        return itemList.size()==0?null:itemList;
    }

    public Item selectById(int itemid){
        Item item = new Item();
        item.setItemid(itemid);
        return itemDAO.selectById(item);
    }

    public void add(Item item){
        itemDAO.insert(item);
    }
    public void update(Item item){
        itemDAO.update(item);
    }

    public void del(int itemid){
        Item item = new Item();
        item.setItemid(itemid);
        item.setDel(0);
        itemDAO.del(item);
    }
}
