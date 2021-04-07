package com.team.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team.common.Search;
import com.team.domain.BoardVO;
import com.team.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO dao;
	

	@Override
	public void regist(BoardVO board) throws Exception {
		dao.create(board);
	}

	@Override
	public BoardVO read(int applyid) throws Exception {
		return dao.read(applyid);
	}


	@Override
	public void remove(int applyid) throws Exception {
		dao.delete(applyid);
	}

	@Override
	public void modify(BoardVO board) throws Exception {
		dao.update(board);
	}
	
	@Override
	public List<BoardVO> workflow() throws Exception {
		return dao.workflow();
	}

	@Override
	public int getBoardListCnt(Search search) throws Exception {
		return dao.getBoardListCnt(search);
	}

	@Override
	public List<BoardVO> getBoardList(Search search) throws Exception {
		return dao.getBoardList(search);
	}

	@Override
	public void approved(BoardVO board) throws Exception {
		dao.updateApproved(board);
	}
	
	
	


}
