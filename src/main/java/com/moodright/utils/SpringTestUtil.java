package com.moodright.utils;

import com.moodright.dao.UserMapper;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @author moodright
 * @date 2021/2/4
 */
public class SpringTestUtil {

    /**
     * 获取 Bean 实例
     * @param BeanName 映射类的 BeanName
     * @param BeanClass Bean的 Class 对象
     * @param <T> Bean类型
     * @return
     */
    public static <T> T BeanTestUtil(String BeanName, Class<T> BeanClass) {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        return context.getBean(BeanName, BeanClass);
    }




}
