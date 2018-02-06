package com.mr.goods.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mr.goods.entity.Goods;
import com.mr.goods.service.GoodsService;

@Controller
@RequestMapping("goods")
public class GoodsController {

	@Autowired
	private GoodsService goodsService;
	
	@RequestMapping("toShowPage")
	public String toShowPage(){
		return "goods/show-page";
	}
	
	@RequestMapping("selectGoods")
	public String selectGoods(ModelMap map){
		List<Goods> list = goodsService.selectGoods();
		map.put("goods", list);
		return "goods/list-page";
		
	}
	
	@RequestMapping("toAddPage")
	public String toAddPage(){
		return "goods/add-page";
	}
	
	@RequestMapping("addGoods")
	@ResponseBody
	public void addGoods(Goods goods){
		goodsService.addGoods(goods);
	}
	
}
