package kr.hkit.pms.domain.board;

import java.time.LocalDate;

import lombok.Data;

@Data
public class BoardFreeDTO {
	private int free_idx; // 인덱스
	private String free_title; // 제목
	private String free_content; // 내용
	private String free_write; // 작성자
	private int free_view_cnt; // 조회수
	private LocalDate free_register_time; // 시간
}
