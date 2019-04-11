package kr.co.org.jejutour.repository.dao;

import java.util.HashMap;
import java.util.List;

import kr.co.org.jejutour.repository.vo.RestrauntBoardVO;
import kr.co.org.jejutour.repository.vo.RestrauntFileVO;

public interface RestrauntMapper {
		 
	public RestrauntBoardVO selectRestrauntBoardByNo(int no);
	public List<String> selectRestrauntFileByNo(int no);
	public List<String> selectRestrauntLoacationByNo(int no);
	void insertFile(RestrauntFileVO file);
	void insertFileNoneSe(RestrauntFileVO file);
	public void insertBoard(RestrauntBoardVO board);
	public int selectFileByNo(String name);
	public int selectBoardListCount(int num);
	public List<RestrauntBoardVO> selectRestrauntBoard(HashMap<String,Object> map);
	public List<RestrauntFileVO> selectRestrauntFile();
	public void deleteRestrauntBoard(int boardNo);
	public void deleteRestrauntFile(int boardNo);
	public void updateRestrauntBoardViewCnt(int boardNo);
	public void updateRestruantBoard(RestrauntBoardVO boardNo);
	public void updateRestrauntBoardLikeCnt(int boardNo);
	public void updateRestrauntBoardLikeCntM(int boardNo);
	
}
