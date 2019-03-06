package com.aaa.controller;

import com.aaa.entity.Emp;
import com.aaa.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


@Controller
public class EmpController {
    @Autowired
    EmpService service;
    @RequestMapping("select")
    public String select(Model model){
        List<Emp> list=service.select();
        model.addAttribute("emp",list);
        return "list";
    }
    @RequestMapping("insert")
    public String insert(Emp emp){
        service.insert(emp);
        return "redirect:select";
    }
    @RequestMapping("update")
    public String update(Emp emp){
        service.update(emp);
        return "redirect:select";
    }
    @RequestMapping("del")
    public String del(Integer id){
        service.del(id);
        return "redirect:select";
    }
}
