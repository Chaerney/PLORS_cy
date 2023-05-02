package kr.co.itfriend.service;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.io.FilenameUtils;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.itfriend.beans.NBQABean;
import kr.co.itfriend.beans.PageBean;
import kr.co.itfriend.beans.UserBean;
import kr.co.itfriend.dao.BoardDao;

@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class BoardService {

	@Autowired
	private BoardDao boardDao;
	
	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;
	
	@Value("${path.upload}")
	private String path_upload;
	
	@Value("${page.listcnt}")
	private int page_listcnt;

	@Value("${page.paginationcnt}")
	private int page_paginationcnt;
	
	
	private String saveUploadFile(MultipartFile upload_file) {
		
		String file_name = System.currentTimeMillis()+"_"+
						FilenameUtils.getBaseName(upload_file.getOriginalFilename()) + "." + 
						FilenameUtils.getExtension(upload_file.getOriginalFilename());
		try {
			upload_file.transferTo(new File(path_upload+"/"+file_name));
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return file_name;
	}
	
	public void addContentInfo(NBQABean writeContentBean) {
		
		/*
		 * System.out.println(writeContentBean.getContent_subject());
		 * System.out.println(writeContentBean.getContent_text());
		 * System.out.println(writeContentBean.getUpload_file().getSize());
		 */
		
		MultipartFile upload_file = writeContentBean.getUpload_file();
		
		if(upload_file.getSize() > 0) {
			String file_name = saveUploadFile(upload_file);
			System.out.println(file_name);
			writeContentBean.setNbqa_file(file_name);
		}
		writeContentBean.setMb_no(loginUserBean.getMb_no());
		
		boardDao.addContentInfo(writeContentBean);
	}
	
	public String getBoardName(int board_id) {
		return boardDao.getBoardName(board_id);
	}
	
	public List<NBQABean> getContentList(int board_id, int page) {		
		
		int start = (page - 1) * page_listcnt;
		RowBounds rowBounds = new RowBounds(start, page_listcnt);
		
		return boardDao.getContentList(board_id, rowBounds);
		
	}
	
	public NBQABean getContentInfo(int nbqa_no) {
		return boardDao.getContentInfo(nbqa_no);
	}
	
	public void modifyContentInfo(NBQABean modifyContentBean) {
		//첨부파일에 대한 처리
		MultipartFile upload_file = modifyContentBean.getUpload_file();
		
		if(upload_file.getSize() > 0) {
			String file_name = saveUploadFile(upload_file);
			//System.out.println(file_name);
			modifyContentBean.setNbqa_file(file_name);
		}
		//================================================
		//객체 껴서 업로드
		boardDao.modifyContentInfo(modifyContentBean);
	}
	
	public void deleteContentInfo(int nbqa_no) {
		boardDao.deleteContentInfo(nbqa_no);
	}
	
	public PageBean getContentCnt(int nbqa_board_no, int currentPage) {
		//전체글의 갯수
		int content_cnt = boardDao.getContentCnt(nbqa_board_no);
		
		PageBean pageBean = new PageBean(content_cnt, currentPage, page_listcnt, page_paginationcnt);
		
		return pageBean;
	}
	
	//조회수 증가
	public void boardClickUpdate(int nbqa_click) {
		boardDao.boardClickUpdate(nbqa_click);
	}
	
	
}
