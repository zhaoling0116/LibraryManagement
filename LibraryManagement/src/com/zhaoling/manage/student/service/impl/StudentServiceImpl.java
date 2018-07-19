package com.zhaoling.manage.student.service.impl;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.zhaoling.manage.entity.Student;
import com.zhaoling.manage.mapper.IStudentMapper;
import com.zhaoling.manage.student.service.StudentService;
//注册一个模型层
@Service
//启动事务
@Transactional(propagation=Propagation.REQUIRED,readOnly=false)
public class StudentServiceImpl implements StudentService{
	/**
	 * 调用学生的mapper接口
	 */
	@Autowired
	private IStudentMapper mapper;
	
	@Transactional(propagation=Propagation.REQUIRED,readOnly=true)
	public List<Student> getStudentList() {
		return mapper.queryAll();
	}
	@Transactional(propagation=Propagation.REQUIRED,readOnly=true)
	public Student queryById(String id) {
		return mapper.queryById(id);
	}
	
	public void save(Student st) {
		st.setId(UUID.randomUUID().toString());
		mapper.save(st);
	}
	
	public void update(Student st) {
		mapper.update(st);
	}
	
	public void delete(String[] ids) {
		//循环主键集合,得到每个主键
		for (int i = 0; i < ids.length; i++) {
			mapper.delete(ids[i]);
		}
		
	}

	public IStudentMapper getMapper() {
		return mapper;
	}

	public void setMapper(IStudentMapper mapper) {
		this.mapper = mapper;
	}

	
}