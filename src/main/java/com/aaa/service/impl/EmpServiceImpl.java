package com.aaa.service.impl;

import com.aaa.dao.EmpDao;
import com.aaa.entity.Emp;
import com.aaa.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmpServiceImpl implements EmpService {
    @Autowired
    EmpDao dao;

    @Override
    public List<Emp> select() {
        return dao.select();
    }

    @Override
    public void insert(Emp emp) {
        dao.insert(emp);
    }

    @Override
    public void update(Emp emp) {
        dao.update(emp);
    }

    @Override
    public void del(Integer id) {
        dao.del(id);
    }
}
