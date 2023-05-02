package kr.co.itfriend.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import kr.co.itfriend.beans.BookRankingVo;

public interface BookRankingMapper {

   @Select("select * from RANKING where TB_NO <=20")
   public List<BookRankingVo> getRanking();
   
   @Select("select * from RANKING where TB_NO = #{TB_NO}")
   public BookRankingVo getTBookInfo(String TB_NO);
   
   @Select("select TB_ISBN13 from RANKING")
   public List<BookRankingVo> getTBookIsbn();
   
   
   @Update("update TOP_BOOK set TB_PLOT = '#{TB_PLOT}' where TB_ISBN13=${TB_ISBN13}")
   public   void update_plot(BookRankingVo update);



}