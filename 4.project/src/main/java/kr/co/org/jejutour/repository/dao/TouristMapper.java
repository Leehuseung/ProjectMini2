package kr.co.org.jejutour.repository.dao;

import java.util.List;

import kr.co.org.jejutour.repository.vo.RestrauntFileVO;
import kr.co.org.jejutour.repository.vo.TouristCommentVO;
import kr.co.org.jejutour.repository.vo.TouristFileVO;
import kr.co.org.jejutour.repository.vo.TouristPageVO;
import kr.co.org.jejutour.repository.vo.TouristVO;

public interface TouristMapper {

	/* 전체 리스트 조회 9개씩 뽑아온다 */
	public List<TouristVO> selectTouristBoard(TouristPageVO page);
	
	/** 게시글 */
	public int selectTouristBoardCount();
	public TouristVO selectTouristBoardByNo(int no);
	public void writeTouristBoard(TouristVO board);
	public void updateTouristBoard(TouristVO board);
	public void deleteTouristBoard(int no);
	
	/** 조회수 증가*/
	public void updateTouristViewCnt(int no);
	
	
	/** 파일등록 */
	public void writeTouristBoardFile(TouristFileVO file);
	public void writeTouristBoardFileNoneSe(TouristFileVO file);
	
	/** 파일목록 */
	public int selectFileByNo(String name);
	public List<String> selectTouristFilesByNo(int no);
	public List<TouristFileVO> selectTouristFile();
	
	/** 파일삭제 */
	public void deleteTouristFile(int no);
		
	/** 댓글 목록 조회 */
	public List<TouristCommentVO> selectComment(int no);
	public void writeComment(TouristCommentVO comment);
	public void updateComment(TouristCommentVO comment);
	public void deleteComment(int no);
}
