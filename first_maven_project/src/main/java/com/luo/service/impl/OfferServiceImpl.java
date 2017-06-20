package com.luo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.luo.dao.OfferDao;
import com.luo.domain.Offer;
import com.luo.service.OfferService;

@Service("OfferService")
public class OfferServiceImpl implements OfferService {
	
	@Autowired
	private OfferDao offerDao;
	
	public List<Offer> selectOfferAll() {
		return offerDao.selectOfferAll();
	}

	public Offer selectOfferById(Integer id) {
		return offerDao.selectOfferById(id);
	}

	public int updateOfferById(Offer offer) {
		return offerDao.updateOfferById(offer);
	}

	public int deleteOfferById(Integer id) {
		return offerDao.deleteOfferById(id);
	}

	public int insertOffer(Offer offer) {
		return offerDao.insertOffer(offer);
	}
	
	public int countByWhere(String where) {
		return offerDao.countByWhere(where);
	}

	public List<Offer> limit(int startIndex, int pageSize) {
		return offerDao.limit(startIndex, pageSize);
	}

	public Offer queryByWhere(String where) {
		return offerDao.queryByWhere(where);
	}

	public List<Offer> selectByWhere(String where) {
		return offerDao.selectByWhere(where);
	}

	public int selectCount() {
		return offerDao.selectCount();
	}

	

}
