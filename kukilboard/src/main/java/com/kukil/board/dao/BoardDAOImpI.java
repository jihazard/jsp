package com.kukil.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kukil.board.vo.BoardVO;


@Repository
public class BoardDAOImpI implements BoardDAO {

	@Autowired
	public SqlSession session;


	@Override
	public List<BoardVO> list() {
		// TODO Auto-generated method stub
		return session.selectList("list");
	}

}
