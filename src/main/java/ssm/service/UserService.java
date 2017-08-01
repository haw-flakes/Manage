package ssm.service;


import ssm.model.User;

/**
 * Created by hawflakes on 2017/7/21.
 */

public interface UserService {
     User getUserByName(String username);
     User getUserById(int userid);
     void update(User user);
}
