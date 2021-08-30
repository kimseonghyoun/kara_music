package org.zerock.service;

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
		// TODO Auto-generated method stub
		return mapper.info(record);		
	}

	@Override
	public void member(MemberVO member) {
		// TODO Auto-generated method stub
		mapper.member(member);
	}	
}
