package kr.co.org.jejutour.repository.dao;

import java.util.List;

import kr.co.org.jejutour.repository.vo.MemberPageVO;
import kr.co.org.jejutour.repository.vo.MemberVO;

public interface MemberMapper {
	// 회원가입
	public void insertMember(MemberVO member);
	
	// 아이디 중복체크
	public int selectId(String id);
	
	// 이메일 중복체크
	public int selectEmail(String email);
	
	// 로그인
	public MemberVO selectLogin(MemberVO member);
	
	// 암호화된 비밀번호 찾기
	public String selectSaltById(String id);
	
	// 내 정보
	public MemberVO selectInfo(String id);
	
	// 내 정보 수정
	public void updateInfo(MemberVO member);
	
	// 회원탈퇴
	public void deleteInfo(MemberVO member);
	
	// 아이디 찾기
	public String findId(MemberVO member);
	
	// 비밀번호 찾기
	public void findPass(MemberVO member);
	
	// 회원강퇴
	public void memberBan(String no);
	
	// 회원 전체목록 페이징추가
	public List<MemberVO> selectMemberList(MemberPageVO member);
	
	// 회원 전체목록 페이징번호
	public int selectMemberListCount();
	
	
}
