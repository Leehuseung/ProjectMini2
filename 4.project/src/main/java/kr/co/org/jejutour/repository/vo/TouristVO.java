package kr.co.org.jejutour.repository.vo;

import java.util.Date;

public class TouristVO {

	private int memberNo;
	private int boardNo;
	private String title;
	private String nomination;
	private String tag;
	private String simpleIntroduce;
	private int likeCnt;
	private int viewCnt;
	private int reviewCnt;
	private Date writeDate;
	private String introduce;
	private String fee;
	private String address;
	private String purpose;
	private String weekday;
	private String weekend;
	private String contact;
	private Date updateDate;
	private String contentTitle;
	private String content;
	private int likeStatus;
	
	
	public String getWeekday() {
		return weekday;
	}
	public void setWeekday(String weekday) {
		this.weekday = weekday;
	}
	public String getWeekend() {
		return weekend;
	}
	public void setWeekend(String weekend) {
		this.weekend = weekend;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
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
	public String getNomination() {
		return nomination;
	}
	public void setNomination(String nomination) {
		this.nomination = nomination;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public String getSimpleIntroduce() {
		return simpleIntroduce;
	}
	public void setSimpleIntroduce(String simpleIntroduce) {
		this.simpleIntroduce = simpleIntroduce;
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
	public int getReviewCnt() {
		return reviewCnt;
	}
	public void setReviewCnt(int reviewCnt) {
		this.reviewCnt = reviewCnt;
	}
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getFee() {
		return fee;
	}
	public void setFee(String fee) {
		this.fee = fee;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPurpose() {
		return purpose;
	}
	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	public String getContentTitle() {
		return contentTitle;
	}
	public void setContentTitle(String contentTitle) {
		this.contentTitle = contentTitle;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getLikeStatus() {
		return likeStatus;
	}
	public void setLikeStatus(int likeStatus) {
		this.likeStatus = likeStatus;
	}
	
	
}
