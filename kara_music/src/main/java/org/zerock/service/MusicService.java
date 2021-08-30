package org.zerock.service;

import org.zerock.domain.MemberVO;
import org.zerock.domain.MusicVO;

public interface MusicService {
	
	//	음반 상세
	public MusicVO info(String record);
	//	회원 가입
	public void member(MemberVO member);
}
