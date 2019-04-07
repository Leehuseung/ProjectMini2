package kr.co.org.jejutour.repository.dao;

import kr.co.org.jejutour.repository.vo.ReviewVO;

public interface ReviewMapper {
//	리뷰등록
	public void insertReview(ReviewVO r);
	
// 리뷰 상세조회
	public ReviewVO DetailReview(ReviewVO r);
}
