package com.brocode.daoimpl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.brocode.dao.AreaDao;
import com.brocode.model.Area;
import com.brocode.model.City;
import com.brocode.util.DbUtility;

@Repository("areaDao")
public class AreaDaoImpl extends GenericDaoImpl<Area> implements AreaDao {

	@Override
	public List<Area> getActive() {
		List<Area> list = DbUtility.getListData("select a.areaId as areaId,a.areaName as areaName,"
				+ "s.stateId as stateId,c.cityName as cityName,s.stateName as stateName,"
				+ "a.createdBy as createdBy,a.modifiedBy as modifiedBy ,a.cityId as cityId "
				+ " FROM City c "
				+ "INNER JOIN Area a ON a.cityId = c.cityId "
				+ "INNER JOIN State s ON c.stateId=s.stateId "
				+ "WHERE c.isDeleted=0 and s.isDeleted=0 and a.isDeleted=0", Area.class);
		return list;
	}

	@Override
	public Area getFullObjById(int id) {
		Area a =(DbUtility.getListData("select a.areaId as areaId,a.areaName as areaName,"
				+ "s.stateId as stateId,c.cityName as cityName,s.stateName as stateName,"
				+ "a.createdBy as createdBy,a.modifiedBy as modifiedBy ,a.cityId as cityId "
				+ " FROM City c "
				+ "INNER JOIN Area a ON a.cityId = c.cityId "
				+ "INNER JOIN State s ON c.stateId=s.stateId "
				+ "WHERE c.isDeleted=0 and s.isDeleted=0 and a.isDeleted=0"
				+ " and a.areaId ="+id, Area.class)).get(0);
		return a;
	}

	@Override
	public List<Area> getAllAreasByCityId(int cityId) {
		String query="select a.areaId as areaId,a.name as name,c.name as cname,"
				+ "a.createdBy as createdBy,a.modifiedBy as modifiedBy ,a.cityId as cityId"
				+ " FROM Area a inner join "
				+ "City c ON a.cityId=c.cityId WHERE a.isDeleted=0 and c.isDeleted=0 "
				+ "AND a.cityId ="+cityId;
		List<Area> list = DbUtility.getListData(query, Area.class);
		//return DbUtility.getListData(query, City.class);
		return list;
	}

}
