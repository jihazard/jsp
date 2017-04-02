package com.kukil.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kukil.board.dao.BoardDAO;
import com.kukil.board.vo.BoardVO;


@Service
@Transactional
public class BoardServiceImpI implements BoardService{

	@Autowired
	public BoardDAO boardDAO;


	@Override
	public List<BoardVO> list() {
		// TODO Auto-generated method stub
		List<BoardVO> list=boardDAO.list();
		return list;
	}

}
