package com.zhaoling.manage.bbs.service.impl;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhaoling.manage.bbs.service.IBbsService;
import com.zhaoling.manage.entity.TbBbs;
import com.zhaoling.manage.mapper.TbBbsMapper;

import jdk.nashorn.internal.ir.RuntimeNode.Request;
//注册当前类为模型层
@Service
public class BbsServiceImpl implements IBbsService {
	/**
	 * 调用模型层查数据,用mapper接口查数据
	 */
	@Autowired
	private TbBbsMapper mapper;
	@Override
	public List<TbBbs> queryAll() {
		
		return mapper.queryAll();
	}
	/**
	 * 添加保存
	 */
	@Override
	public void save(TbBbs bbs) {
		bbs.setId(UUID.randomUUID().toString());
		mapper.save(bbs);
	}
	/**
	 * 删除 ids主键的集合
	 */
	@Override
	public void delete(String[] ids) {
		for (String id : ids) {
			mapper.delete(id);
		}
	}
	@Override
	public TbBbs queryOne(String id) {
		return mapper.queryById(id);
	}
	@Override
	public void update(TbBbs bbs) {
		mapper.update(bbs);
	}
	
}
