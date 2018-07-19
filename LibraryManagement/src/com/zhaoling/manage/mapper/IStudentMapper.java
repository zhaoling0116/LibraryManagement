package com.zhaoling.manage.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.zhaoling.manage.entity.Student;


public interface IStudentMapper {

	@Select("select id,name,pwd from student")
	@ResultMap("studentRM")
	List<Student> queryAll();

	@Insert("insert into student(id,name,pwd)values(#{id},#{name},#{pwd})")
	void save(Student st);
	
	@Update("update student set name=#{name},pwd=#{pwd} where id=#{id} ")
	void update(Student st);
	
	@Select("select id,name,pwd from student where id=#{value} ")
	Student queryById(String id);
	
	@Delete("delete from student where id=#{value}")
	void delete(String id);
	
}
