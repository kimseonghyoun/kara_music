package org.zerock.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.zerock.service.MusicService;

@Controller
@RequestMapping(value="music")
public class MusicController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private MusicService service;
	
	//	main화면
	@GetMapping(value="main")
	public void main() {
		logger.info("music / main");
	}
	
	//	뮤직비디오 화면
	@GetMapping(value="music_video")
	public void music_video() {
		logger.info("music / music_video");
	}
	
	//	준비중 팝업 
	@GetMapping(value="work")
	public void work() {
		logger.info("music / work");
	}
	
	//	상세 화면
	@GetMapping(value="info")
	public void info(@RequestParam("record") String record, Model model ) {
		logger.info("music / info");
		model.addAttribute("info", service.info(record));		
	}
	
}
