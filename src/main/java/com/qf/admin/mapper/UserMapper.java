package com.qf.admin.mapper;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.model.User;

import java.util.List;

public interface UserMapper {

    List<User> selectAll();

    List<User> selectByPage(JSONObject jsonObject);

    Long selectCount(JSONObject jsonObject);

    User selectById(Integer id);

    void insert(User user);

    void delete(Integer id);

    void update(User user);

}
