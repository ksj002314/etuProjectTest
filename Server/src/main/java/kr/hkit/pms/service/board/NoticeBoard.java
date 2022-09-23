package kr.hkit.pms.service.board;

import java.util.List;

import kr.hkit.pms.domain.board.BoardNoticeDTO;



public interface NoticeBoard {
	
	public List<BoardNoticeDTO> getNoticeList();
	
	// insert	
	public void noticeinsert(BoardNoticeDTO noticeboard);
	
	
	//read
	public BoardNoticeDTO get(Long idx);
	
}
