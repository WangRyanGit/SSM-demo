package com.luo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.luo.domain.Offer;

public interface OfferDao {
	//crud 方法
	List<Offer> selectOfferAll();
	Offer selectOfferById(Integer id);
	int insertOffer(Offer offer);
	int updateOfferById (Offer offer);
	int deleteOfferById (Integer id);
	
	//分页方法
	int selectCount();    //总offer数
	List<Offer> limit(@Param("startIndex")int startIndex,@Param("pageSize") int pageSize);  //起始页数 每页size
	List<Offer> selectByWhere(@Param("where")String where);  //
	Offer queryByWhere(@Param("where")String where);  //
	int countByWhere(@Param("where")String where);  //
	
}
