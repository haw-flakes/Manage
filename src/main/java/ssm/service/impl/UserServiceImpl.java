package ssm.service.impl;

import org.springframework.stereotype.Service;
import ssm.dao.UserDAO;
import ssm.model.User;
import ssm.service.UserService;

import javax.annotation.Resource;

/**
 * Created by hawflakes on 2017/7/22.
 */
@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserDAO userDAO;
    public User getUserByName(String username) {
        User user = new User();
        user.setUsername(username);
        return userDAO.selectUserByName(user);
    }

    public User getUserById(int userid) {
        User user = new User();
        user.setUserid(userid);
        return userDAO.selectUserById(user);
    }

    public void update(User user){
        userDAO.update(user);
    }
}
