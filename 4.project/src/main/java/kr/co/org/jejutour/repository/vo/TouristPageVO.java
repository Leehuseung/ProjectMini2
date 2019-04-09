package kr.co.org.jejutour.repository.vo;

public class TouristPageVO {
	private int pageNo = 1;
	
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getBegin() {
		return (this.pageNo -1) * 9 + 1;
	}
	
	public int getEnd() {
		return this.pageNo * 9;
	}
	
	
	
}
