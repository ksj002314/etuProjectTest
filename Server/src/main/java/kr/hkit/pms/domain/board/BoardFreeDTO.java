package kr.hkit.pms.domain.board;

import java.time.LocalDate;

import lombok.Data;

@Data
public class BoardFreeDTO {
	private int IDX; // 인덱스
	private String CUM_TITLE; // 제목
	private String CUM_CONTENTS; // 내용
	private String CUM_WRITER; // 작성자
	private int CUM_VIEW_CNT; // 조회수
	private LocalDate CUM_REGISTER_TIME; // 시간
}
