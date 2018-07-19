package com.zhaoling.manage.student.service;

import java.util.List;

import com.zhaoling.manage.entity.Student;


public interface StudentService {
	/**
	 * 查询所有数据
	 * @return 学生对象 的集合,页面显示用
	 */
	List<Student> getStudentList();
	/**
	 * 添加保存
	 * @param st 实体类对象
	 */
	void save(Student st);
	/**
	 * 根据主键查询一个对象
	 * @param id 主键
	 * @return 一个对象
	 */
	Student queryById(String id);
	/**
	 * 修改数据
	 * @param st 实体类对象
	 */
	void update(Student st);
	/**
	 * 根据主键集合,删除数据
	 * @param ids
	 */
	void delete(String[] ids);
	
	
}
