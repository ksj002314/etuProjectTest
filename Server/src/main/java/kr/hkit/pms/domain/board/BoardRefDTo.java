package kr.hkit.pms.domain.board;

import java.time.LocalDate;

import lombok.Data;

@Data
public class BoardRefDTo {
	private int ref_idx; // 인덱스
	private String file_name; // 파일 이름
	private String file_save; // 저장 파일 이름
	private int file_size; // 파일 크기
	private String file_path; // 파일 경로
	private LocalDate ref_register_time; // 업로드 시간
}
