package com.qf.admin.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.mapper.UserMapper;
import com.qf.admin.model.User;
import com.qf.admin.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(isolation =Isolation.READ_COMMITTED,propagation = Propagation.REQUIRED)
public class UserService implements IUserService {
    @Autowired
    private UserMapper mapper;

    @Override
    public List<User> findAll() {
        return mapper.selectAll();
    }

    @Override
    public List<User> findByPage(JSONObject jsonObject) {
        return mapper.selectByPage(jsonObject);
    }

    @Override
    public Long findCount(JSONObject jsonObject) {
        return mapper.selectCount(jsonObject);
    }

    @Override
    public User findById(Integer id) {
        return mapper.selectById(id);
    }

    @Override
    public void save(User user) {
        mapper.insert(user);
    }

    @Override
    public void remove(Integer id) {
        mapper.delete(id);
    }

    @Override
    public void modify(User user) {
        mapper.update(user);
    }

    @Override
    public JSONObject getUserList(JSONObject jsonObject){
        JSONObject map = new JSONObject();
        map.put("total",findCount(jsonObject));
        map.put("rows",findByPage(jsonObject));
        return map;
    }
}
