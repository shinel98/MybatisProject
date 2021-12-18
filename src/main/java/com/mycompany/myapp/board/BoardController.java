package com.mycompany.myapp.board;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	// 기본 페이지 
	@RequestMapping(value="/board/list", method = RequestMethod.GET)
		public String boardlist(Model model) {
			model.addAttribute("list", boardService.getBoardList());
			return "posts";
		}
	// 추가 
	@RequestMapping(value="/board/add", method = RequestMethod.GET)
		public String addPost() {
		return "addpostform";
	}
	@RequestMapping(value="/board/addpost", method = RequestMethod.GET)
		public String addPostOK(BoardVO vo) {
		int i = boardService.insertBoard(vo);
		if(i==0)
			System.out.println("데이터 추가 실패 ");
		else 
			System.out.println("데이터 추가 성공!!!");
		return "redirect:list";
	}
	
	// 삭제 
	@RequestMapping(value="/board/delete/{id}", method = RequestMethod.GET)
		public String deletePost(@PathVariable("id") int id) {
			int i = boardService.deleteBoard(id);
			if(i==0)
				System.out.println("데이터 삭제 실패 ");
			else
				System.out.println("데이터 삭제 성공!!!");
			return "redirect:../list";
		}
	// 수정 
	@RequestMapping(value="/board/editpost/{id}", method = RequestMethod.GET)
		public String editPost(@PathVariable("id") int id, Model model) {
		BoardVO boardVO = boardService.getBoard(id);
		model.addAttribute("boardVO", boardVO);
		return "editform";
	}
	
	@RequestMapping(value="/board/editpost/editok", method = RequestMethod.GET)
	public String editOk(BoardVO vo) {
		int result = boardService.updateBoard(vo);
		if(result == 0)
			System.out.println("수정 실패 ");
		else
			System.out.println("수정 완료!!");
		return "redirect:../list";
	}
	
}
