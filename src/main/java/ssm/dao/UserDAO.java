package ssm.dao;


import ssm.model.User;


/**
 * Created by hawflakes on 2017/7/21.
 */
public interface UserDAO {
    User selectUserByName(User user);
    User selectUserById(User user);
    void update(User user);
}
