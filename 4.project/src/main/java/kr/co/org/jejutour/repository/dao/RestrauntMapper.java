package kr.co.org.jejutour.repository.dao;

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
	
}
