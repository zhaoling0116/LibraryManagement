package com.zhaoling.manage.bbs.service;

import java.util.List;

import com.zhaoling.manage.entity.Student;
import com.zhaoling.manage.entity.TbBbs;

public interface IBbsService {

	List<TbBbs> queryAll();

	void save(TbBbs bbs);

	void delete(String[] ids);

	TbBbs queryOne(String id);

	void update(TbBbs bbs);


}
