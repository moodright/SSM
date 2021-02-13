package com.moodright.service;

import com.moodright.dao.UserMapper;
import com.moodright.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author moodright
 * @date 2021/2/4
 */
@Service("userService")
public class UserServiceImpl implements UserService{

    private UserMapper userMapper;

    // 注入 UserMapper 依赖
    @Autowired
    @Qualifier("userMapper")
    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    public int addUser(User user) {
        return userMapper.addUser(user);
    }

    public int updateUser(User user) {
        return userMapper.updateUser(user);
    }

    public int deleteUserById(int id) {
        return userMapper.deleteUserById(id);
    }

    public User queryUserById(int id) {
        return userMapper.queryUserById(id);
    }

    public List<User> queryAllUser() {
        return userMapper.queryAllUser();
    }

    public User queryUserByUsername(String username) {
        return userMapper.queryUserByUsername(username);
    }

    public int updateAvartar(User user) {
        return userMapper.updateAvartar(user);
    }
}
