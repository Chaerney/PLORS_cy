package kr.co.itfriend.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.co.itfriend.beans.LibraryBean;
import kr.co.itfriend.beans.ScrollBookBean;
import kr.co.itfriend.service.LibraryService;

@RestController
public class RestLibraryController {

	@Autowired
	LibraryService libraryService;
	
	@Resource(name = "scrollBookBean")
	ScrollBookBean scrollBookBean;
	
	@GetMapping("/MAIN/librarySearch/{keyword}")
	public ResponseEntity<List<LibraryBean>> searchLibraryByKeyword(@PathVariable String keyword){
		
		List<LibraryBean> librarylist = libraryService.searchLibraryByAddress(keyword);
		
		return new ResponseEntity<List<LibraryBean>>(librarylist, HttpStatus.OK);
	}
	
	@GetMapping("/scroll/librarySearch")
	public ResponseEntity<LibraryBean> searchLibraryByLbno(@RequestParam("lbno") String lbno){
		
		LibraryBean library = libraryService.searchLibraryByLnbo(lbno);
		
		return new ResponseEntity<LibraryBean>(library, HttpStatus.OK);
	}
	
	@GetMapping("/scroll/bookNextSearch/")
//	public ResponseEntity<ScrollBookBean> searchNextBooks(){
		public void searchNextBooks(@RequestParam("lbno") String lbno){
		
//		List<LibraryBean> booklist = libraryService.searchLibraryByLnbo(lbno);
		
//		return new ResponseEntity<ScrollBookBean>(librarylist, HttpStatus.OK);
	}
}
