package com.moodright.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.dao.DataRetrievalFailureException;
import org.springframework.lang.Nullable;

import java.util.Date;

/**
 * @author moodright
 * @date 2021/2/3
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    private int user_id;
    private String username;
    private String nickname;
    private String password;
    private Date create_time;

    //字符串日期
    private String format_create_time;

    //用户头像
    private Object avartar;
}
