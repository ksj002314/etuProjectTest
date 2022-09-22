package kr.hkit.pms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	
	// 글쓰기  GET방식(화면 보여주기)
	@RequestMapping(value="free_create", method=RequestMethod.GET)
	public ModelAndView getFreeCreateView() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/free_create");
		return mav;
	}
	
	// 글쓰기 POST방식(내용 전달)
	@RequestMapping(value="/board/getFreeCreate", method=RequestMethod.POST)
	public ModelAndView getFreeCreate(BoardFreeDTO free_board) {
		log.info("-----자유게시판 작성 요청");
		freeboard.freeinsert(free_board);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/board/free");
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
