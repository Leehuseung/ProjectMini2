package kr.co.org.jejutour.repository.vo;

import java.util.Date;
                                   
public class ReviewVO {            
	private int boardNo;           
	private String title;          
	private int reviewCategoryNo; 
	private String content;
	private int ratingCategoryNo;
	private int likeCnt;
	private int viewCnt;
	private Date writeDate;
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

	public int getReviewCategoryNo() {
		return reviewCategoryNo;
	}
	public void setReviewCategoryNo(int reviewCategoryNo) {
		this.reviewCategoryNo = reviewCategoryNo;
	}
	public int getRatingCategoryNo() {
		return ratingCategoryNo;
	}
	public void setRatingCategoryNo(int ratingCategoryNo) {
		this.ratingCategoryNo = ratingCategoryNo;
	}
	public int getLikeCnt() {
		return likeCnt;
	}
	public void setLikeCnt(int likeCnt) {
		this.likeCnt = likeCnt;
	}
	public int getViewCnt() {
		return viewCnt;
	}
	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	
}
