package com.aaa.service;

import com.aaa.entity.Emp;

import java.util.List;

public interface EmpService {
    List<Emp> select();

    void insert(Emp emp);

    void update(Emp emp);

    void del(Integer id);
}
