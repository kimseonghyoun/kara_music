package org.zerock.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.zerock.domain.MemberVO;
import org.zerock.service.MusicService;

@Controller
@RequestMapping(value="music")
public class MusicController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private MusicService service;
	
	//	main 화면
	@GetMapping(value="main")
	public void main() {
		logger.info("music / main");
	}
	
	//	회원 가입
	@PostMapping(value="mainPost")
	public String member(MemberVO member) {
		logger.info("music / member : "+member);
		service.member(member);
		return "redirect:/music/main";
	}
	
	//	뮤직비디오 화면
	@GetMapping(value="music_video")
	public void music_video() {
		logger.info("music / music_video");
	}
	
	//	최신 앨범
	@GetMapping(value="new_album")
	public void new_album() {
		logger.info("music / new_album");
	}
	
	//	인기 앨범
	@GetMapping(value="hit_album")
	public void hit_album() {
		logger.info("music / hit_album");
	}
	
	//	상세 화면
	@GetMapping(value="info")
	public void info(@RequestParam("record") String record, Model model ) {
		logger.info("music / info");
		model.addAttribute("info", service.info(record));		
	}
	
}
