package com.aaa.dao;

import com.aaa.entity.Emp;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface EmpDao {
    @Delete("delete from emp where id=#{id}")
    void del(Integer id);
    @Update("update emp set ename=#{ename},deptid=#{deptid} where id=#{id}")
    void update(Emp emp);
    @Insert("insert into emp(ename,deptid) values(#{ename},#{deptid})")
    void insert(Emp emp);
    @Select("select * from emp")
    List<Emp> select();
}
