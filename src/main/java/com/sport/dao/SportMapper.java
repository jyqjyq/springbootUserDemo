package com.sport.dao;

import com.sport.entity.Sport;
import com.sport.entity.Page;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SportMapper {
	/**
	 * 首页信息展示
	 * @return
	 */
	public List<Sport> findSportInfo();
	
	/**
	 * 通过id查询运动详情
	 * @param id
	 * @return
	 */
	public Sport findSportDetailsById(int id);
	/**
	 * 添加运动信息
	 * @param sport
	 * @return
	 */
	public int addNewSport(Sport sport);

	/**
	 * 查询用户发布的运动信息
	 * @param
	 * @return
	 */
	public List<Sport> findAllSport(Page page);
	/**
	 *  删除用户发布的运动信息
	 * @param hID
	 * @return
	 */
	public int deleteUserSport(int hID);
	/**
	 * 修改用户发布的运动
	 * @return
	 */
	public int updateSport(Sport sport);
	/**
	 * 条件查询
	 * @param keywords
	 * @return
	 */
	public List<Sport> findSportByLike(String keywords);
	/**
	 * 降序查询
	 * @return
	 */
	public List<Sport> findHouseOrderByDesc();
	/**
	 * 升序序查询
	 * @return
	 */
	public List<Sport> findHouseOrderByAsc();
}
