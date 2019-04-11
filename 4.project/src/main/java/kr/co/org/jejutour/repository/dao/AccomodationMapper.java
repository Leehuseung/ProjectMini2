package kr.co.org.jejutour.repository.dao;

import java.util.List;

import kr.co.org.jejutour.repository.vo.AccInfoVO;
import kr.co.org.jejutour.repository.vo.CodeVO;

public interface AccomodationMapper {

	public void insertAccInfo(AccInfoVO board);
	public List<CodeVO> selectCodeTown(int parent_id);
	public AccInfoVO selectAccInfo(int accNo);
	
	public List<AccInfoVO> selectBothAll();
	public List<AccInfoVO> selectOnlyCity(String city);
	public List<AccInfoVO> selectOnlyTown(String town);
	public List<AccInfoVO> selectEach(String city, String town);
	
}
