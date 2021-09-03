package org.zerock.service;

import java.util.ArrayList;

import org.zerock.domain.MemberVO;
import org.zerock.domain.MusicVO;

public interface MusicService {
	
	//	음반 상세
	public MusicVO info(String record);
	//	회원 가입
	public void member(MemberVO member);
	//	아이디 중복 체크
	public MemberVO idCheck(String user_id);
	//	로그인 체크
	public MemberVO loginChk(MemberVO member);
	//	앨범 순위
	public ArrayList<MusicVO> schRank();
}
