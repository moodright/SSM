package com.moodright.service;

import com.moodright.entity.User;
import com.moodright.utils.SpringTestUtil;
import org.junit.Test;

import java.util.List;

/**
 * @author moodright
 * @date 2021/2/4
 */
public class UserServiceTest {

    private static UserService userService = SpringTestUtil.BeanTestUtil("userService", UserService.class);

    @Test
    public void queryAllUserTest() {
        List<User> userList = userService.queryAllUser();
        for (User user : userList) {
            System.out.println(user);
        }
    }

    @Test
    public void queryAllUserByIdTest() {
        User user = userService.queryUserById(5);
        System.out.println(user);
    }
}
