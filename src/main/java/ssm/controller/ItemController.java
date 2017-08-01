package ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ssm.model.Item;
import ssm.model.User;
import ssm.service.ItemService;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by hawflakes on 2017/7/22.
 * 版本控制测试
 */
@Controller
public class ItemController {
    @Resource
    private ItemService itemService;

    @RequestMapping("showitems.htm")
    public String showItems(HttpSession session, ModelMap map){
        List<Item> itemList = itemService.getAllItems();
        map.put("itemList",itemList);
        return "item";
    }
    @RequestMapping("add.htm")
    public String add(){
        return "add";
    }

    @RequestMapping("doadd.htm")
    public String doadd(HttpSession session,Item i){
        User user = (User)session.getAttribute("user");
        Date date = new Date();
        SimpleDateFormat sf = new SimpleDateFormat("yyyy/MM/dd HH:mm");
        String creationdate = sf.format(date);
        Item item = new Item();
        item.setUserid(user.getUserid());
        item.setItemtitle(i.getItemtitle());
        item.setItemcontent(i.getItemcontent());
        item.setPriority(i.getPriority());
        item.setCreationdate(creationdate);

        itemService.add(item);
        return "redirect:showitems.htm";
    }

    @RequestMapping("update.htm")
    public String update(@RequestParam int itemid,ModelMap map){
        Item item = itemService.selectById(itemid);
        map.put("item",item);
        return "update";
    }

    @RequestMapping("doupdate.htm")
    public String doupdate(HttpSession session, Item i){
        Date date = new Date();
        SimpleDateFormat sf = new SimpleDateFormat("yyyy/MM/dd HH:mm");
        String lastupdatedate = sf.format(date);
        Item item = new Item();
        item.setItemid(i.getItemid());
        item.setItemtitle(i.getItemtitle());
        item.setItemcontent(i.getItemcontent());
        item.setPriority(i.getPriority());
        item.setLastupdatedate(lastupdatedate);

        itemService.update(item);
        return "redirect:showitems.htm";

    }

    @RequestMapping("del.htm")
    public String del(@RequestParam int itemid){
        itemService.del(itemid);
        return "redirect:showitems.htm";
    }
}
