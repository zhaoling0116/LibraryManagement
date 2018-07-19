package com.zhaoling.manage.mapper;

import com.zhaoling.manage.entity.TbBookinfo;

public interface TbBookinfoMapper {
    int deleteByPrimaryKey(String isbn);

    int insert(TbBookinfo record);

    int insertSelective(TbBookinfo record);

    TbBookinfo selectByPrimaryKey(String isbn);

    int updateByPrimaryKeySelective(TbBookinfo record);

    int updateByPrimaryKey(TbBookinfo record);
}