package com.kh.tripism.travelPackage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class travelPackageController {
	
	@RequestMapping("list.pk")
	public String selectList() {
		return "travelPackage/travelPackageListView";
	}
	
	@RequestMapping("insert.pk")
	public String insertBoard() {
		return "travelPackage/travelPackageEnrollForm";
	}

}
