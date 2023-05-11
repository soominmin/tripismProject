package com.kh.tripism.common.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter
@Setter
@ToString
public class PageInfo {
	
	public PageInfo(int listCount2, int currentPage2, int pageLimit2, int boardLimit2, int maxPage2, int startPage2,
			int endPage2) {
	}
	private int listCount;
	private int currentPage;
	private int pageLimit;
	private int boardLimit;
	
	private int maxPage;
	private int startPage;
	private int endPage;
	

}
