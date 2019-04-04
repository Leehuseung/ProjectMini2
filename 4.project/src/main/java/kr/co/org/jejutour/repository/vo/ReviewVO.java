package kr.co.org.jejutour.repository.vo;

import java.util.Date;

public class ReviewVO {
	private int boardNo;
	private int reviewCategoryNo;
	private String title;
	private String writer;
	private String content;
	private int ratingCategory;
	private int likeCnt;
	private int viewCnt;
	private Date writeDate;
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public int getReviewCategoryNo() {
		return reviewCategoryNo;
	}
	public void setReviewCategoryNo(int reviewCategoryNo) {
		this.reviewCategoryNo = reviewCategoryNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getRatingCategory() {
		return ratingCategory;
	}
	public void setRatingCategory(int ratingCategory) {
		this.ratingCategory = ratingCategory;
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
