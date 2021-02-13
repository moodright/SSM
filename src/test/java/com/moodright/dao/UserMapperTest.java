package com.moodright.dao;

import com.moodright.entity.User;
import com.moodright.utils.SpringTestUtil;
import org.junit.Test;
import java.util.Date;
import java.util.List;

/**
 * @author moodright
 * @date 2021/2/4
 */
public class UserMapperTest {

    private static UserMapper userMapper = SpringTestUtil.BeanTestUtil("userMapper", UserMapper.class);

    @Test
    public void queryAllUserTest() {
        List<User> userList = userMapper.queryAllUser();
        for (User user : userList) {
            System.out.println(user);
        }
    }

    @Test
    public void queryUserByIdTest() {
        User user = userMapper.queryUserById(1);
        System.out.println(user);
    }

    @Test
    public void deleteUserByIdTest() {
        int i = userMapper.deleteUserById(1);
        System.out.println(i);
    }

    @Test
    public void updateUser() {
        User user = new User(4, "Villanelle", "Eve", "5555", new Date(), "", "");
        int i = userMapper.updateUser(user);
        System.out.println(i);
    }

    @Test
    public void addUser() {
        User user = new User();
        user.setUsername("Macie");
        user.setNickname("MJ");
        user.setPassword("5555");
        user.setCreate_time(new Date());

        int i = userMapper.addUser(user);
        System.out.println(i);
    }

}
