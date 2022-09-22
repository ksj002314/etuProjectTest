package kr.hkit.pms.mapper.board;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.hkit.pms.domain.board.BoardFreeDTO;

@Mapper
public interface BoardFreeMapper {
//	public int freeinsertBoard(BoardFreeDTO params); //게시글 등록
//	public BoardFreeDTO selectFreeBoardDetail(int idx); // 게시글 조회
//	public int updateFreeBoard(BoardFreeDTO params); // 게시글 수정
//	public int deleteFreeBoard(int idx); // 게시글 삭제
//	public List<BoardFreeDTO> selectBoardList(); // 게시글 삭제 여부
//	public boolean cntPlus(int idx); // 조회수
//	public List<BoardFreeDTO> getlist(); 
	
	// public void insert(BoardFreeDTO freeboard);

	public List<BoardFreeDTO> freeselect();
	
	public void freeinsert(BoardFreeDTO freeboard);
	
}
