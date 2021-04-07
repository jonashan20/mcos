package com.team.common;

public class Pagination {

	
	public int listSize = 10;                //초기값으로 목록개수를 10으로 셋팅
	public int rangeSize = 10;            //초기값으로 페이지범위를 5으로 셋팅

	private int page;
	private int range;
	private int listCnt;
	private int pageCnt;
	private int startPage;
	private int startList;
	private int endPage;
	private boolean prev;
	private boolean next;

    
    public int getRangeSize() {
		return rangeSize;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getRange() {
		return range;
	}

	public void setRange(int range) {
		this.range = range;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getListSize() {
		return listSize;
	}

	public void setListSize(int listSize) {
		this.listSize = listSize;
	}

	public int getListCnt() {
		return listCnt;
	}

	public void setListCnt(int listCnt) {
		this.listCnt = listCnt;
	}

	public int getStartList() {
		return startList;
	}

	public void pageInfo(int page, int range, int listCnt) {
		
		this.page = page;
		this.range = range;
		
		double dd = (double) listCnt;
		//System.out.println(dd);
		//전체 페이지수 
		this.pageCnt = (int) Math.ceil(dd/listSize);		
		//System.out.println("전체페이지수:" + this.pageCnt);

		//시작 페이지
		this.startPage = (range - 1) * rangeSize + 1 ;
		//System.out.println("시작페이지수:" + this.startPage);

		//끝 페이지
		this.endPage = range * rangeSize;
		//System.out.println("끝페이지수:" + this.endPage);

		//게시판 시작번호
		this.startList = (page - 1) * listSize;
		//System.out.println("게시판시작번호:" + this.startList);
		
		//이전 버튼 상태
		this.prev = range == 1 ? false : true;
		//System.out.println("이전:" + this.prev);

		//다음 버튼 상태
		this.next = endPage > pageCnt ? false : true;
		if (this.endPage > this.pageCnt) {
			this.endPage = this.pageCnt;
			this.next = false;
		}
		//System.out.println("다음:" + this.next);
		
		
	}
}


