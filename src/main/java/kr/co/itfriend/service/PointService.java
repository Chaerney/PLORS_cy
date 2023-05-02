package kr.co.itfriend.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PointService {

	
		@Autowired
	    private AesEncryptorService aesEncryptorService;

	    public boolean validatePassword(String pwd1, String pwd2) throws Exception {
	        if(pwd1.equals(pwd2)) {
	            String encryptedPwd = aesEncryptorService.encrypt(pwd1);
	            System.out.println("암호화된 비밀번호 : " + encryptedPwd);
	            
	            // 암호화된 비밀번호를 DB에 저장하는 로직 구현
	            // ...
	            
	            String decryptedPwd = aesEncryptorService.decrypt(encryptedPwd);
	            System.out.println("복호화된 비밀번호 : " + decryptedPwd);
	            System.out.println("비밀번호 일치");
	            return true;
	        } else {
	            System.out.println("비밀번호 불일치");
	            return false;
	        }
	    }
}
