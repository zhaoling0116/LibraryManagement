package com.zhaoling.manage.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.zhaoling.manage.entity.TbBbs;

public interface TbBbsMapper {
    int deleteByPrimaryKey(String id);

    int insert(TbBbs record);

    int insertSelective(TbBbs record);

    TbBbs selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(TbBbs record);

    int updateByPrimaryKey(TbBbs record);
    /**
     * 查询所有数据,查完给模型层,模型层啥也没干给控制层,控制层得到数据下面是把数据传给页面
     * 有三种方案在控制层中写
     * @return
     */
    //用注解式 查询
    @Select("select id, content, intime from tb_bbs")
    @ResultMap("BaseResultMap")
	List<TbBbs> queryAll();
    /**
     * 增加保存
     * @param bbs
     */
    @Insert( " insert into tb_bbs "+
    		 " (id, content, intime) "+
    		 " values "+
    		 "   (#{id}, #{content}, #{intime}) ")
	void save(TbBbs bbs);
    //修改
    @Update(" update tb_bbs "+
    		"    set id = #{id,jdbcType=VARCHAR}, "+
    		"    content = #{content}, "+
    		"    intime = #{intime} "+
    		"  where id = #{id} "
    		)
	void update(TbBbs bbs);
    //修改查询一条
    @Select(" select id, content, intime from tb_bbs where id=#{id}")
	TbBbs queryById(String id);
    //根据id删除
    @Delete("delete tb_bbs  where id = #{id}")
	void delete(String id);
    
}