package org.zerock.mapper;

import java.util.ArrayList;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.MemberVO;
import org.zerock.domain.MusicVO;
import org.zerock.domain.RegistVO;

public interface MusicMapper {
	
	//	음반 상세
	public MusicVO info(String record);
	//	검색
	public ArrayList<MusicVO> schData(String m_sch);
	//	회원가입
	public void member(MemberVO member);
	//	아이디 중복 체크
	public MemberVO idCheck(String user_id);
	//	로그인 체크
	public MemberVO loginChk(MemberVO member);
	//	앨범 순위
	public ArrayList<MusicVO> schRank();
	//	게시판 등록
	public void insertSelectKey(RegistVO board);
	//	게시판 리스트+페이징
	public ArrayList<BoardVO> getWithPaging(Criteria cri);
	//	게시판 페이징
	public int getCount(Criteria cri);
	
}
