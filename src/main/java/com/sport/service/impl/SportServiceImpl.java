package com.sport.service.impl;

import java.util.List;

import com.sport.dao.SportMapper;
import com.sport.entity.Sport;
import com.sport.entity.Page;
import com.sport.service.ISportService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class SportServiceImpl implements ISportService {

	@Autowired
	private SportMapper dao;
	
	@Override
	public List<Sport> findSportInfo() {
		return dao.findSportInfo();
	}

	@Override
	public Sport findSportDetailsById(int id) {
		return dao.findSportDetailsById(id);
	}

	@Override
	public int addNewSport(Sport sport) {
		return dao.addNewSport(sport);
	}

	@Override
	public List<Sport> findAllSport(Page page) {
		return dao.findAllSport(page);
	}
	
	@Override
	public int deleteUserSport(int hID) {
		return dao.deleteUserSport(hID);
	}
	@Override
	public int updateSport(Sport sport) {
		return dao.updateSport(sport);
	}
	@Override
	public List<Sport> findSportByLike(String keywords) {
		return dao.findSportByLike(keywords);
	}
	@Override
	public List<Sport> findHouseOrderByAsc() {
		return dao.findHouseOrderByAsc();
	}
	@Override
	public List<Sport> findHouseOrderByDesc() {
		return dao.findHouseOrderByDesc();
	}
}
