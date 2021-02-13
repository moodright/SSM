package com.moodright.service;

import com.moodright.entity.User;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author moodright
 * @date 2021/2/4
 */
public interface UserService {

    //添加用户
    int addUser(User user);

    //更新用户
    int updateUser(User user);

    //根据ID删除用户
    int deleteUserById(int id);

    //根据ID查询用户
    User queryUserById(int id);

    //查询全部用户
    List<User> queryAllUser();

    //根据username查询用户
    User queryUserByUsername(String username);

    //根据ID更新头像
    int updateAvartar(User user);
}
