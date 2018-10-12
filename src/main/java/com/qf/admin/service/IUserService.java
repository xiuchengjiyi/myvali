package com.qf.admin.service;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.mapper.UserMapper;
import com.qf.admin.model.User;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public interface IUserService {
   List<User> findAll();

   List<User> findByPage(JSONObject jsonObject);

   Long findCount(JSONObject jsonObject);

   User findById(Integer id);

   void save(User user);

   void remove(Integer id);

   void modify(User user);

   JSONObject getUserList(JSONObject jsonObject);
}
