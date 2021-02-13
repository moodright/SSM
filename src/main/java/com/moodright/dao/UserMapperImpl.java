package com.moodright.dao;

import com.moodright.entity.User;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author moodright
 * @date 2021/2/4
 */

@Component("userMapper")
public class UserMapperImpl implements UserMapper {

    private SqlSessionTemplate sqlSessionTemplate;

    //注入 SqlSessionTemplate 依赖
    @Autowired
    public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
        this.sqlSessionTemplate = sqlSessionTemplate;
    }

    public int addUser(User user) {
        return sqlSessionTemplate.getMapper(UserMapper.class).addUser(user);
    }

    public int updateUser(User user) {
        return sqlSessionTemplate.getMapper(UserMapper.class).updateUser(user);
    }

    public int deleteUserById(int id) {
        return sqlSessionTemplate.getMapper(UserMapper.class).deleteUserById(id);
    }

    public User queryUserById(int id) {
        return sqlSessionTemplate.getMapper(UserMapper.class).queryUserById(id);
    }

    public List<User> queryAllUser() {
        return sqlSessionTemplate.getMapper(UserMapper.class).queryAllUser();
    }

    public User queryUserByUsername(String username) {
        return sqlSessionTemplate.getMapper(UserMapper.class).queryUserByUsername(username);
    }

    public int updateAvartar(User user) {
        return sqlSessionTemplate.getMapper(UserMapper.class).updateAvartar(user);
    }
}
