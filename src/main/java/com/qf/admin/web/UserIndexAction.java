package com.qf.admin.web;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.qf.admin.model.User;
import com.qf.admin.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserIndexAction {
    @Autowired
    private IUserService service;

    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String index(){
        return "index";
    }
    @RequestMapping(value = "/{path}",method = RequestMethod.GET)
    public String toPage(@PathVariable String path){
        return path;
    }

    @ResponseBody
    @RequestMapping(value = "/users",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    public Object dataJson(@RequestBody JSONObject jsonObject){
        System.out.println(jsonObject);
        jsonObject = service.getUserList(jsonObject);
        return jsonObject;
    }
    @RequestMapping(value = "/user/createUser",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String createUser(User user){
        service.save(user);
        return "0";
    }

    @RequestMapping(value = "/user/deleteUser",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String deleteUser(Integer id){
        service.remove(id);
        return "0";
    }

    @RequestMapping(value = "/user/findUser",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    @ResponseBody
    public User findUser(Integer id){
        User user = service.findById(id);
        return user;
    }

    @RequestMapping(value = "/user/editUser",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String editUser(User user){
        System.out.println(user.getUsername());
        service.modify(user);
        return "0";
    }
}
