package com.zhaoling.manage.mapper;

import com.zhaoling.manage.entity.TbMember;

public interface TbMemberMapper {
    int deleteByPrimaryKey(String id);

    int insert(TbMember record);

    int insertSelective(TbMember record);

    TbMember selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(TbMember record);

    int updateByPrimaryKey(TbMember record);
}