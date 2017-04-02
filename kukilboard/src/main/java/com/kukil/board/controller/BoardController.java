package com.kukil.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kukil.board.service.BoardService;
import com.kukil.board.vo.BoardVO;

@RequestMapping(value="/board")
@Controller
public class BoardController {

	@Autowired
	public BoardService boardService;

	@RequestMapping(value="/list.do")
	public String list(Model model){

		List<BoardVO> vo=null;
		vo=boardService.list();
		model.addAttribute("list", vo);

		return "/board/list";



	}

}
