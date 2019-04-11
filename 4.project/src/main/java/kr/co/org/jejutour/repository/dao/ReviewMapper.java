package kr.co.org.jejutour.repository.dao;

import java.util.List;

import kr.co.org.jejutour.repository.vo.ReviewCommentVO;
import kr.co.org.jejutour.repository.vo.ReviewVO;
import kr.co.org.jejutour.repository.vo.TouristPageVO;

public interface ReviewMapper {
//	리뷰등록
	public void insertReview(ReviewVO r);
	
//  리뷰 상세조회
	public ReviewVO detailReviewNo(int no);
	
//	리뷰 수정
	public void updateReview(ReviewVO r);

//	리뷰 수정폼 보여주기
	public ReviewVO selectFormReviewNo(int no);

//  조회수 증가	
	public void updateViewCnt(int no);
	
//	리뷰 전체조회
	public List<ReviewVO> selectListReview(TouristPageVO page);
	
//	리뷰 전체 게시물 수
	public int selectReviewCount();
	
//	리뷰 삭제
	public void deleteReview(ReviewVO r);
	
//	댓글 전체 게시물 수
	public int selectReviewCommentCount(int no);
	
//	댓글 등록
	public void insertComment(ReviewCommentVO rc);
	
//	댓글 목록
	public List<ReviewCommentVO> selectListCommentByNo(int no);
	
//리뷰 내용 작성 확인
 	public int writeCheck(ReviewVO r);
}