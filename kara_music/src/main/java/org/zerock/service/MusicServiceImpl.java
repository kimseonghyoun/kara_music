package org.zerock.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.MemberVO;
import org.zerock.domain.MusicVO;
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
	public void member(MemberVO member) {
		// 회원 가입
		mapper.member(member);
	}
	
	@Override
	public MemberVO idCheck(String user_id) {
		// 로그인 체크
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
	
}
