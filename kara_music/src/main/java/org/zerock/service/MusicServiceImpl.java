package org.zerock.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.MemberVO;
import org.zerock.domain.MusicVO;
import org.zerock.domain.RegistVO;
import org.zerock.mapper.MusicMapper;

@Service
public class MusicServiceImpl implements MusicService{
	
	@Autowired
	private MusicMapper mapper;
	
	@Override
	public MusicVO info(String record) {
		// 앨범 내역
		return mapper.info(record);		
	}
	
	@Override
	public ArrayList<MusicVO> schData(String m_sch) {
		// 검색
		return mapper.schData(m_sch);		
	}
	
	@Override
	public void member(MemberVO member) {
		// 회원 가입
		mapper.member(member);
	}
	
	@Override
	public MemberVO idCheck(String user_id) {
		// 아이디 중복 체크
		return mapper.idCheck(user_id);		
	}

	@Override
	public MemberVO loginChk(MemberVO member) {
		// 로그인 체크
		return mapper.loginChk(member);		
	}

	@Override
	public ArrayList<MusicVO> schRank() {
		// 앨범 순위
		return mapper.schRank();
	}

	@Override
	public void regist(RegistVO board) { 
		// 게시판 등록		
		mapper.insertSelectKey(board);		
	}

	@Override
	public ArrayList<BoardVO> getWithPaging(Criteria cri) {
		// 게시판 리스트+페이징
		return mapper.getWithPaging(cri);		
	}

	@Override
	public int getCount(Criteria cri) {
		// 게시판 페이징
		return mapper.getCount(cri);
	}	
	
}
