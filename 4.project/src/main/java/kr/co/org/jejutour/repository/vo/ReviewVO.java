package kr.co.org.jejutour.repository.vo;

import java.util.Date;
                                   
public class ReviewVO {            
	private int boardNo;           
	private String title;          
	private String reviewCategoryNo; 
	private String content;
	private String ratingCategoryNo;
	private int likeCnt;
	private int viewCnt;
	private Date writeDate;
	
	private int memberNo;
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	
	
	private String name;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
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

	public String getReviewCategoryNo() {
		return reviewCategoryNo;
	}
	public void setReviewCategoryNo(String reviewCategoryNo) {
		this.reviewCategoryNo = reviewCategoryNo;
	}
	public String getRatingCategoryNo() {
		return ratingCategoryNo;
	}
	public void setRatingCategoryNo(String ratingCategoryNo) {
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
