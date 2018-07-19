package com.zhaoling.manage.student.action;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zhaoling.manage.entity.Student;
import com.zhaoling.manage.student.service.StudentService;

@Controller	//注册一个控制层
@Scope("prototype")//原型模式
@RequestMapping("/student")	//设置控制层请求映射名
public class StudentAction {
    /**
     * 调取模型层
     */
    @Autowired
    private StudentService studentService;     
       
    @RequestMapping("/query")
    public String load(ModelMap modelMap){
    	//调模型层,查询所有数据
        List<Student> list = studentService.getStudentList();   
        //存储
        modelMap.put("list", list);   //request.setAttribute("list",list);
        //内不转
        return "jsp/student/list_student";   
    }
    /**
     * 转到添加页面
     * @param request
     * @param modelMap
     * @return
     * @throws Exception
     */
    @RequestMapping("/addpage")   
    public String addpage() throws Exception{   
        return "jsp/student/add_student";
    }   
    /**
     * 添加保存
     * @param st 页面表单内的内容 	接值并封装到实体类对象里
     * @return 重定向,执行当前所在控制层的query方法
     */
    @RequestMapping("/addsave")   
    public String save( Student st){    
          studentService.save(st);   
        return "redirect:query.action";   
    }   
    /**
     * 删除
     * @param ids  主键集合
     * @return 重定向,执行当前所在控制层的query方法
     */
    @RequestMapping("/delete")   
    public String del(String[] ids){
    	//调用模型层执行删除方法
    	studentService.delete( ids );   
    	return "redirect:query.action"; 
    }
    /**
     * 转到修改页面
     * @param id 接值,接主键
     * @param modelMap 存储用
     * @return 转到修改页面
     * @throws Exception
     */
    @RequestMapping("/editpage")   
    public String editpage(String id, ModelMap modelMap) throws Exception{   
    	//调模型层,根据主键查询一个对象
    	Student student = studentService.queryById(id);
    	//存储
    	modelMap.put("student", student); 
        return "jsp/student/edit_student";   
    } 
    /**
     * 修改保存
     * @param st 将页面表单中的传递的参数,封装到实体类中
     * @return 重定向,执行当前所在控制层的query方法
     */
    @RequestMapping("/editsave")   
    public String edit(Student st ){   
    	//调用模型层,执行修改方法
        studentService.update(st); 
        return "redirect:query.action";   
    }


	
}  
