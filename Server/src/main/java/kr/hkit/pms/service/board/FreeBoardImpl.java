package kr.hkit.pms.service.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.hkit.pms.domain.board.BoardFreeDTO;
import kr.hkit.pms.domain.human.HumanInfoMgtDto;
import kr.hkit.pms.mapper.board.BoardFreeMapper;
import lombok.extern.log4j.Log4j2;


@Log4j2
@Service
public class FreeBoardImpl implements FreeBoard {
	
	@Autowired
	private BoardFreeMapper mapper;
	
	@Override
	public void freeinsert(BoardFreeDTO freeboard) {
		log.info("register---" + freeboard);
		
		mapper.freeinsert(freeboard);
	}
	
	@Override
	public List<BoardFreeDTO> getFreeList() {
		return mapper.freeselect();
	}
	
	@Override
	public BoardFreeDTO getFreeRead(Long IDX) {
		return mapper.freeread(IDX);
	}
	
	@Override
	public boolean freedelete(Long IDX) {
		return mapper.freedelete(IDX) == 1;
	}
	
	// 수정하기
	public void freemodify(BoardFreeDTO freeboard) {
		log.info(".....update........");
		mapper.freeupdate(freeboard);
	}	
}
