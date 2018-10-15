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
    @Transactional(readOnly = true)
    public List<User> findAll() {
        List<User> users = null;
        try {
            users = mapper.selectAll();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return users;
    }

    @Override
    @Transactional(readOnly = true)
    public List<User> findByPage(JSONObject jsonObject) {
        List<User> users = null;
        try {
            users = mapper.selectByPage(jsonObject);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return users;
    }

    @Override
    @Transactional(readOnly = true)
    public Long findCount(JSONObject jsonObject) {
        Long count = 0L;
        try {
            count = mapper.selectCount(jsonObject);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return count;
    }

    @Override
    @Transactional(readOnly = true)
    public User findById(Integer id) {
        User user = null;
        try {
            user = mapper.selectById(id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

    @Override
    public void save(User user) {
        try {
            mapper.insert(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void remove(Integer id) {
        try {
            mapper.delete(id);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void removeUsers(List<Integer> ids) {
        try {
            mapper.deleteUsers(ids);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void modify(User user) {
        try {
            mapper.update(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public JSONObject getUserList(JSONObject jsonObject){
        JSONObject map = new JSONObject();
        map.put("total",findCount(jsonObject));
        map.put("rows",findByPage(jsonObject));
        return map;
    }
}
