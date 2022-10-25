package edu.kh.project.member.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

// lombok 라이브러리
@NoArgsConstructor // 매개변수가 없는 기본 생성자
@Getter // ${} 이엘 구문 쓸 때 필요
@Setter
@ToString
public class Member {
	   private int memberNo;
	   private String memberEmail;
	   private String memberPw;
	   private String memberNickname;
	   private String memberTel;
	   private String memberAddress;
	   private String profileImage;
	   private String enrollDate;
	   private String memberDeleteFlag;
	   private int authority;
}
