package kr.hkit.pms.domain.board;

import java.time.LocalDateTime;

import lombok.Data;

@Data
public class BoardNoticeDTO {
	private int notice_idx; // 인덱스
	private String notice_title; // 제목
	private String notice_write; // 내용
	private String notice_view_cnt; //작성자
	private String notice_yn; // 공지글 여부
	private String sercret_yn; // 비밀글 여부
	private String notice_register_time; // 시간
}
