package com.moodright.utils;

import com.moodright.entity.User;
import javafx.beans.binding.Bindings;

import java.text.SimpleDateFormat;
import java.util.List;

/**
 * @author moodright
 * @date 2021/2/5
 */
public class DateFormatUtil {
    private static final SimpleDateFormat defaultDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    public static List<User> UserCreateTimeFormatUtil(List<User> userList) {
        for (User user : userList) {
            user.setFormat_create_time(defaultDateFormat.format(user.getCreate_time()));
        }
        return userList;
    }

}
