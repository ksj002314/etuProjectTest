package kr.hkit.pms.service.board;


import java.util.List;

import kr.hkit.pms.domain.board.BoardFreeDTO;

public interface FreeBoard {
	
	//public void register(BoardFreeDTO freeboard);
	
	public List<BoardFreeDTO> getFreeList();
}
