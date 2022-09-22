package kr.hkit.pms.service.board;


import java.util.List;

import kr.hkit.pms.domain.board.BoardFreeDTO;

public interface FreeBoard {
	
	
	public List<BoardFreeDTO> getFreeList();
	
	// insert	
	public void freeinsert(BoardFreeDTO freeboard);
}
