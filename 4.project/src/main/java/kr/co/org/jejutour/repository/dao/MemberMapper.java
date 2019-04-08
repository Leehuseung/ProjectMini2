package kr.co.org.jejutour.repository.dao;

import kr.co.org.jejutour.repository.vo.MemberVO;

public interface MemberMapper {
	public void insertMember(MemberVO member);
	public int selectId(String id);
	public int selectEmail(String email);
	public MemberVO selectLogin(MemberVO member);
	public MemberVO selectInfo(String id);
}
