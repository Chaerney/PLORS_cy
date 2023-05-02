package kr.co.itfriend.beans;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PageBean {

	// 최소 페이지 번호
	private int min;
	// 최대 페이지 번호
	private int max;
	// 이전 버튼의 페이지 번호
	private int prevPage;
	// 다음 버튼의 페이지 번호
	private int nextPage;
	// 전체 페이지 개수
	private int pageCnt;
	// 현재 페이지 번호
	private int currentPage;
	
	//contentCnt : 전체글 개수(table), currentPage : 현재 글 번호(param), 
		//contentPageCnt : 페이지당 글의 개수(property), 10개
		//paginationCnt : 페이지 버튼의 개수(property) 10개
		
		public PageBean(int contentCnt, int currentPage, int contentPageCnt, int paginationCnt) {
			//현재 페이지 번호
			this.currentPage = currentPage;
			
			//전체 페이지 개수
			pageCnt = contentCnt / contentPageCnt; 
			// 533/10=53.3이므로 한 페이지를 더 추가해야 함
			if(contentCnt % contentPageCnt > 0) {
				pageCnt++;
			}
			/* 
			 1 ~ 10 : 1(최소), 10(최대)
			 11 ~ 20 : 11, 20
			 21 ~ 30 : 21, 30
			
			//최대 10,20,30은 최소에 9를 더하면 되므로 -1을 해줌 -> 최소에 9씩 증가
			 //-1
			 0 ~ 9 : 1
			 10 ~ 19 : 11
			 20 ~ 29 : 21
			
			//페이지당 글의갯수로 나누면
			0 : 1/10
			1 : 11/10
			2 : 21/10
			//페이지당 글의갯수로 다시 곱하면
			0:1
			10:11
			20:21
			//+1를 하면
			1:1
			11:11
			21:21*/
			
			min = ((currentPage - 1) / contentPageCnt) * contentPageCnt + 1;
			max = min + paginationCnt - 1;
			
			//글의 개수 63 max=10, pagecnt=6, 
			if(max > pageCnt) {
				max = pageCnt;
			}
			prevPage = min - 1;
			nextPage = max + 1;
			
			//마지막 페이지에 더 이상 글이 존재하지 않을 때 넘어가지 않도록
			if(nextPage > pageCnt) {
				nextPage = pageCnt;
			}
		}
}
