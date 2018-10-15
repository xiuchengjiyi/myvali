package com.qf.admin.mapper;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.model.User;

import java.util.List;

public interface UserMapper {

    List<User> selectAll() throws Exception;

    List<User> selectByPage(JSONObject jsonObject) throws Exception;

    Long selectCount(JSONObject jsonObject) throws Exception;

    User selectById(Integer id) throws Exception;

    void insert(User user) throws Exception;

    void delete(Integer id) throws Exception;

    void deleteUsers(List<Integer> ids) throws Exception;

    void update(User user) throws Exception;

}
