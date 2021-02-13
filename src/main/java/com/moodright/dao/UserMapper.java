package com.moodright.dao;

import com.moodright.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author moodright
 * @date 2021/2/4
 */
public interface UserMapper {
    //添加用户
    int addUser(User user);

    //更新用户
    int updateUser(User user);

    //根据ID删除用户
    int deleteUserById(@Param("user_id") int id);

    //根据ID查询用户
    User queryUserById(@Param("user_id") int id);

    //查询全部用户
    List<User> queryAllUser();

    //根据username查询用户
    User queryUserByUsername(@Param("username") String username);

    //2021/2/11

    //根据ID更新头像
    int updateAvartar(User user);

}
