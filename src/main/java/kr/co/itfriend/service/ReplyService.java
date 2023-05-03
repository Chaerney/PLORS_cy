package kr.co.itfriend.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.itfriend.beans.ReplyBean;
import kr.co.itfriend.beans.UserBean;
import kr.co.itfriend.dao.ReplyDao;

@Service
public class ReplyService {

	@Autowired
	private ReplyDao replyDao;
	
	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;

	public List<ReplyBean> list(int nbqa_no) throws Exception {

		return replyDao.list(nbqa_no);
	}

	public void write(ReplyBean replyBean) throws Exception {
		
		replyDao.write(replyBean);
	}

	public void modify(ReplyBean replyBean) throws Exception {

		replyDao.modify(replyBean);
	}

	public void delete(int rp_no) throws Exception {

		replyDao.delete(rp_no);
	}

}
