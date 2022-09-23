package kr.hkit.pms.service.board;




import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.hkit.pms.domain.board.BoardNoticeDTO;
import kr.hkit.pms.mapper.board.BoardNoticeMapper;
import lombok.extern.log4j.Log4j2;

@Log4j2
@Service
public class NoticeBoardImpl implements NoticeBoard{
	
	@Autowired
	private BoardNoticeMapper notice_mapper;

	@Override
	public List<BoardNoticeDTO> getNoticeList() {
		return notice_mapper.noticeselect();
	}

	@Override
	public void noticeinsert(BoardNoticeDTO noticeboard) {
		log.info("register----" + noticeboard);
		
		notice_mapper.noticeinsert(noticeboard);
	}

	@Override
	public BoardNoticeDTO get(Long idx) {
		log.info("get................");
		return notice_mapper.noticeread(idx);
	}
	
		
	
}
