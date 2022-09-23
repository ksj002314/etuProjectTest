package kr.hkit.pms.service.board;


import java.util.List;

import kr.hkit.pms.domain.board.BoardFreeDTO;

public interface FreeBoard {
	
	
	public List<BoardFreeDTO> getFreeList();
	
	// insert	
	public void freeinsert(BoardFreeDTO freeboard);
	
	// 조회하기
	public BoardFreeDTO getFreeRead(Long IDX);
	
	//삭제하기
	public boolean freedelete(Long IDX);
}
