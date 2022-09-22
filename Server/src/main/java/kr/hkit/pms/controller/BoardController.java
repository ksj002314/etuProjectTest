package kr.hkit.pms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.hkit.pms.domain.board.BoardFreeDTO;
import kr.hkit.pms.service.board.FreeBoard;
import lombok.extern.log4j.Log4j2;

@Log4j2
@RestController
@RequestMapping("/board/*")
public class BoardController {
	
	@Autowired
	FreeBoard freeboard;
	
	// 자유게시판
	
	@GetMapping("/free")
	public ModelAndView getFree() {
		log.info("-----자유게시판");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/free");
		mav.addObject("freelist", freeboard.getFreeList());	
		return mav;
	}
	
	@GetMapping("/free_create")
	public ModelAndView getFreeCreate() {
		log.info("-----자유게시판 작성");
		ModelAndView mav = new ModelAndView("/board/free_create");
			
		return mav;
	}
	
	
	@GetMapping("/free_read")
	public ModelAndView getFreeRead() {
		log.info("-----자유게시판 읽기");
		ModelAndView mav = new ModelAndView("/board/free_read");
			
		return mav;
	}
	
	// 공지사항
	
	@GetMapping("/notice")
	public ModelAndView getNotice() {
		log.info("-----공지사항");
		ModelAndView mav = new ModelAndView("/board/notice");
		return mav;
	}
	
	@GetMapping("/notice_create")
	public ModelAndView getNoticeCreate() {
		log.info("-----공지사항 쓰기");
		ModelAndView mav = new ModelAndView("/board/notice_create");
		return mav;
	}
	
	@GetMapping("/notice_read")
	public ModelAndView getNoticeRead() {
		log.info("-----공지사항 읽기");
		ModelAndView mav = new ModelAndView("/board/notice_read");
		return mav;
	}
	
	// 자료실	
	
	@GetMapping("/ref")
	public ModelAndView getRef() {
		log.info("-----자료실 쓰기");
		ModelAndView mav = new ModelAndView("/board/ref");
		return mav;
	}
	
	@GetMapping("/ref_create")
	public ModelAndView getRefCreate() {
		log.info("-----자료실 쓰기");
		ModelAndView mav = new ModelAndView("/board/ref_create");
		return mav;
	}
	
	@GetMapping("/ref_read")
	public ModelAndView getRefRead() {
		log.info("-----자료실 읽기");
		ModelAndView mav = new ModelAndView("/board/ref_read");
		return mav;
	}
}
