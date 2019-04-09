package kr.co.org.jejutour.repository.dao;

import java.util.List;

import kr.co.org.jejutour.repository.vo.TouristCommentVO;
import kr.co.org.jejutour.repository.vo.TouristFileVO;
import kr.co.org.jejutour.repository.vo.TouristPageVO;
import kr.co.org.jejutour.repository.vo.TouristVO;

public interface TouristMapper {

	/* 전체 리스트 조회 9개씩 뽑아온다 */
	public List<TouristVO> selectTouristBoard(TouristPageVO page);
	
	/** 전체 게시글 숫자 */
	public int selectTouristBoardCount();
	
	/** 글번호 조회 */
	public TouristVO selectTouristBoardByNo(int no);
	
	/** 글등록 */
	public void writeTouristBoard(TouristVO board);
	
	/** 글수정 */
	public void updateTouristBoard(TouristVO board);
	
	/** 글삭제 */
	public void deleteTouristBoard(int no);

	/** 조회수 증가*/
	public void updateTouristViewCnt(int no);
	
	
	/** 파일등록 */
	public void writeTouristBoardFile(TouristFileVO file);
	
	/** 파일목록 */
	public List<TouristFileVO> selectTouristFilesByNo(int no);
	
	
	
	/** 댓글 목록 조회 */
	public List<TouristCommentVO> selectComment(int no);
	
	
	/** 글등록 */
	public void writeComment(TouristCommentVO comment);
	
	/** 글수정 */
	public void updateComment(TouristCommentVO comment);
	
	/** 글삭제 */
	public void deleteComment(int no);
}
