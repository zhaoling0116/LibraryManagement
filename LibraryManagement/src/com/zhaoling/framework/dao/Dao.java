package com.zhaoling.framework.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;


public class Dao extends SqlSessionDaoSupport {

	public void save(String statement,Object parameter){
		getSqlSession().insert(statement, parameter);
	}
	public void update(String statement,Object parameter){
		getSqlSession().update(statement, parameter);
	}
	public void delete(String statement,Object parameter){
		getSqlSession().delete(statement, parameter);
	}
	public List queryForList(String statement,Object parameter){
		return getSqlSession().selectList(statement, parameter);
	}
	public Object queryById(String statement,Object parameter){
		return getSqlSession().selectOne(statement, parameter);
	}
}
