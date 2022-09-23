package kr.hkit.pms.mapper.board;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.hkit.pms.domain.board.BoardNoticeDTO;

@Mapper
public interface BoardNoticeMapper {
	
	
	public List<BoardNoticeDTO> noticeselect();
	
	public void noticeinsert(BoardNoticeDTO noticeboard);
	
	public BoardNoticeDTO noticeread(Long idx);
}
