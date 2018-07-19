package com.zhaoling.manage.mapper;

import com.zhaoling.manage.entity.TbManager;

public interface TbManagerMapper {
    int deleteByPrimaryKey(String id);

    int insert(TbManager record);

    int insertSelective(TbManager record);

    TbManager selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(TbManager record);

    int updateByPrimaryKey(TbManager record);
}