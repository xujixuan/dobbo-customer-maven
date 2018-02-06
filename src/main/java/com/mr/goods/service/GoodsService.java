package com.mr.goods.service;

import java.util.List;

import com.mr.goods.entity.Goods;

public interface GoodsService {

	List<Goods> selectGoods();
	
	void addGoods(Goods goods);
	
	void deleteGoods(Goods goods);
	
	Goods selectByGoodsId(Goods goods);
	
	void updateGoods(Goods goods);
}
