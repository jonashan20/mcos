package com.team.persistence;

import java.util.List;

import com.team.common.Pagination;
import com.team.common.Search;
import com.notice.domain.NoticeBoardVO;
import com.team.domain.BoardVO;

public interface BoardDAO {

	public void create(BoardVO vo) throws Exception;

	public BoardVO read(int applyid) throws Exception;

	public void update(BoardVO board) throws Exception;
	
	public void delete(int applyid) throws Exception;

	public List<BoardVO> workflow() throws Exception;

	public int getBoardListCnt(Search search) throws Exception;

	public List<BoardVO> getBoardList(Search search)throws Exception;

	public void updateApproved(BoardVO board) throws Exception;



}