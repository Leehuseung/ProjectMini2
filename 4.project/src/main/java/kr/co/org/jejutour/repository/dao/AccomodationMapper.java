package kr.co.org.jejutour.repository.dao;

import java.util.List;

import kr.co.mlec.board.vo.BoardVO;
import kr.co.mlec.board.vo.PageVO;
import kr.co.org.jejutour.repository.vo.AccInfoVO;
import kr.co.org.jejutour.repository.vo.AccomoPageVO;
import kr.co.org.jejutour.repository.vo.CodeVO;

public interface AccomodationMapper {

	public void insertAccInfo(AccInfoVO board);
	public List<CodeVO> selectCodeTown(int parent_id);
	public AccInfoVO selectAccInfo(int accNo);
	
	public List<AccInfoVO> selectBothAll();
	public List<AccInfoVO> selectOnlyTown(String town);
	public List<AccInfoVO> selectOnlyType(String type);
	public List<AccInfoVO> selectEach(String town, String type);

	
	/** 전체 게시물 갯수 */
	public int selectBoardCount();
	/** 전체 게시물 목록 가져오기 */
	public List<AccInfoVO> selectBoard(AccomoPageVO page);
	
}
