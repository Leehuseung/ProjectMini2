package kr.co.org.jejutour.repository.vo;

public class AccomoPageVO {
	private int pageNo = 1;
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getBegin() {
		return (this.pageNo -1) * 4 + 1;
	}
	public int getEnd() {
		return this.pageNo * 4;
	}
}

