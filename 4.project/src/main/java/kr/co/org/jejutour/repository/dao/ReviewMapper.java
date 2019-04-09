package kr.co.org.jejutour.repository.dao;

import java.util.List;

import kr.co.org.jejutour.repository.vo.ReviewVO;

public interface ReviewMapper {
//	리뷰등록
	public void insertReview(ReviewVO r);
	
// 리뷰 상세조회
	public ReviewVO detailReviewNo(int no);

//  조회수 증가	
	public void updateViewCnt(int no);
	
//	리뷰 전체조회
	public List<ReviewVO> selectListReview(ReviewVO r);
	
//리뷰 내용 작성 확인
 	public int writeCheck(ReviewVO r);
}