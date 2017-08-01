package ssm.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import ssm.model.User;
import ssm.service.UserService;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by hawflakes on 2017/7/21.
 */
@Controller
public class UserController{

    private static final Logger logger= LoggerFactory.getLogger(UserController.class);

    @Resource
    private UserService userService;

    @RequestMapping("login.htm")
    public String Login(){
        return "index";
    }

    @RequestMapping("dologin.htm")
    public String login(String username, String password, HttpSession session, ModelMap map) {
        User user = userService.getUserByName(username);
        logger.info("username"+username);
        if(user!=null){
            //用户名存在,则判断密码是否正确
            if(user.getPassword().equals(password)){
                //密码正确
                session.setAttribute("user",user);
                return "index";
            }else{
                //密码错误
                map.put("err","密码错误！");
                return "login";
            }
        }else {
            //用户名不存在
            map.put("err","用户名不存在！");
            return "login";
        }

    }
    @RequestMapping("userinfo.htm")
    public String userInfo(HttpSession session,ModelMap map){
        User user = (User)session.getAttribute("user");
//        User user = userService.getUserById(u.getUserid());
        logger.info("userinfo"+user);
        map.put("user",user);
        return "userinfo";
    }

    @RequestMapping("updateUser.htm")
    public String updateuser(User u){
        Date date = new Date();
        SimpleDateFormat sf = new SimpleDateFormat("yyyy/MM/dd HH:mm");
        String lastupdatedate = sf.format(date);
        User user = new User();
        user.setUserid(u.getUserid());
        user.setUsername(u.getUsername());
        user.setPassword(u.getPassword());
        user.setSex(u.getSex());
        user.setAge(u.getAge());
        user.setPhonenumber(u.getPhonenumber());
        user.setCreationdate(u.getCreationdate());
        user.setLastupdatedate(lastupdatedate);
        user.setComments(u.getComments());

        logger.info("user"+user);

        userService.update(user);

        return "redirect:userinfo.htm";
    }

}
