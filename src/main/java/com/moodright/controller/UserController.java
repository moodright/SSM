package com.moodright.controller;

import com.moodright.entity.User;
import com.moodright.service.UserService;
import com.moodright.utils.DateFormatUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author moodright
 * @date 2021/2/4
 */

@Controller
@RequestMapping("/user")
public class UserController {

    private UserService userService;

    @Autowired
    @Qualifier("userService")
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    //查询全部用户
    @GetMapping(path="/allUser")
    public String queryAllUser(Model model) {
        List<User> userList = userService.queryAllUser();
        //格式化日期
        userList = DateFormatUtil.UserCreateTimeFormatUtil(userList);
        model.addAttribute("userList", userList);
        return "userList";
    }

    //跳转到添加用户页面
    @GetMapping(path="/toAddUser")
    public String toAddUser() {
        return "addUser";
    }
    //添加用户
    @PostMapping(path="/addUser")
    public String addUser(User user) {
        user.setCreate_time(new Date());
        //添加用户
        userService.addUser(user);
        return "redirect:/user/allUser";
    }

    //跳转到更新用户页面
    @GetMapping(path="/toUpdateUser/{id}")
    public String toUpdateUser(@PathVariable("id") int user_id,Model model) {
        User user = userService.queryUserById(user_id);
        model.addAttribute("user",user);
        return "updateUser";
    }
    //更新用户
    @PostMapping(path="/updateUser")
    public String updateUser(User user) {
        userService.updateUser(user);
        return "redirect:/user/allUser";
    }

    //删除用户
    @GetMapping(path="/deleteUser/{id}")
    public String deleteUser(@PathVariable("id") int user_id) {
        userService.deleteUserById(user_id);
        return "redirect:/user/allUser";
    }

    //根据用户名查询用户
    @PostMapping(path="/query")
    public String queryUserByUsername( String username, Model model) {
        User user = userService.queryUserByUsername(username);
        List<User> list = new ArrayList<User>();

        if(user == null) {
            //未查询到此用户则查询全部用户信息
            list = userService.queryAllUser();
            model.addAttribute("msg", "未查询到此用户");
        } else {
            list.add(user);
        }

        //格式化日期
        list = DateFormatUtil.UserCreateTimeFormatUtil(list);
        model.addAttribute("userList", list);
        return "userList";
    }

    //用户信息
    @GetMapping(path="/info")
    public String userInformation() {
        return "userInfo";
    }

    //更新头像
    @GetMapping(path="/toUpdateAvartar")
    public String toUpdateAvartar() {
        return "updateAvatar";
    }
    //根据user_id更新头像
    @PostMapping(path="/updateAvartar")
    public String updateAvartar(@RequestParam("file") MultipartFile file, @RequestParam("user_id") int id) throws IOException {
        if(!file.isEmpty()) {
            BASE64Encoder encoder = new BASE64Encoder();
            // 将头像的字节流编码成可以存储进数据库的字符串对象
            String avartar = encoder.encode(file.getBytes());
            // 数据封装到实体类中
            User user = new User();
            user.setUser_id(id);
            user.setAvartar(avartar);
            // 更新
            userService.updateAvartar(user);
        }
        return "userInfo";
    }
    //根据user_id查询头像
    @GetMapping(path="/avartar")
    @ResponseBody
    public byte[] queryAvartar(@RequestParam("user_id") int id, HttpServletResponse response) throws IOException {
        //数据封装在实体类中
        User user = userService.queryUserById(id);
        //头像强制类型转换为 byte[] 字节流
        byte[] avartar = (byte[])user.getAvartar();
        //byte[] 字节流转换为字符串对象
        String data = new String(avartar, "UTF-8");
        //用 BASE64Decoder 解码为前端页面可以显示的字节流
        BASE64Decoder decoder = new BASE64Decoder();
        byte[] bytes = decoder.decodeBuffer(data);
        //直接写到响应体中
        return bytes;
    }
}
