package org.zerock.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.MemberVO;
import org.zerock.domain.MusicVO;
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
	
	//	아이디 중복 체크
	@ResponseBody
	@PostMapping(value="idCheck")
	public int idcheck(@RequestParam("user_id") String user_id) {
		logger.info("music / idcheck : "+user_id);
		MemberVO member = service.idCheck(user_id);
		int res = 0;
		
		if(member == null) {			
			res = 0;
		}else {			
			res = 1;
		}
		return res;
	}
	
	//	로그인 체크
	@PostMapping(value="loginPost")
	public String login(MemberVO member, RedirectAttributes rttr, HttpServletRequest request) {
		logger.info("music / login : "+member);
		
		MemberVO vo = service.loginChk(member);				
		
		String url = "";
		
		if(vo == null) {			
			rttr.addAttribute("msg", "fail");			
			url = "redirect:/music/login";
		}else {			
			rttr.addAttribute("msg", "succes");			
			HttpSession session = request.getSession();
			session.setAttribute("member", vo);
			url = "redirect:/music/main";
		}
		
		return url;
	}
	
	//	로그인 페이지
	@GetMapping(value="login")
	public void schId(@RequestParam("msg") String msg, Model model) {
		logger.info("music / schId : "+msg);		
		model.addAttribute("msg", msg);		
	}
	
	//	로그아웃
	@GetMapping(value="logout")
	public String logout(HttpServletRequest request) {
		logger.info("music / logout");
		HttpSession session = request.getSession();
		session.invalidate();
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
	
	//	앨범 순위
	@GetMapping(value="hit_rank")
	public void hit_rank(Model model) {		
		ArrayList<MusicVO> vo = service.schRank();
		logger.info("music / hit_rank : "+vo);
		model.addAttribute("vo", vo);		
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
