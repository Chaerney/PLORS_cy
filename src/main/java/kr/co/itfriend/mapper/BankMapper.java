package kr.co.itfriend.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.co.itfriend.beans.fakeBank;


public interface BankMapper {

	
	    
		@Insert("INSERT INTO fakeBank (bankName, accountNumber, mb_id) VALUES (#{bankName}, #{accountNumber}, 'hong')")
		void insertFakeBank(@Param("bankName") String bankName, @Param("accountNumber") String accountNumber);
	    
	    @Update("UPDATE Member SET MB_SecondPwd = #{MB_SecondPwd} WHERE mb_id= 'hong' ")
	    void updateSecondPwd(String MB_SecondPwd);
	    
	    @Select("SELECT * FROM fakeBank WHERE mb_id ='hong'")
	    List<fakeBank> selectFakeBankByUserId();
}
