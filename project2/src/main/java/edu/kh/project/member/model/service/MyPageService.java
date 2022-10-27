package edu.kh.project.member.model.service;

import java.util.Map;

import edu.kh.project.member.model.vo.Member;

// 설계적 + 유지보수 + AOP 사용목적
public interface MyPageService {

	
	
	/** 회원 정보 수정 서비스
	 * @param inputMember
	 * @return result
	 */
	// interface는 써도 abstract 안써도 abstract
	/* public abstract */ int updateInfo(Member inputMember);

	int changePw(Map<String, Object> paramMap);

	/** 회원 탈퇴 서비스
	 * @param memberNo
	 * @param memberPw
	 * @return result
	 */
	int memberDelete(int memberNo, String memberPw); 

}
