package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.mapper.BoardMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService {

	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;

	@Override
	public void register(BoardVO board) {
		log.info("register......" + board);
		mapper.insertSelectKey(board);
	}

	@Override
	public BoardVO get(Long bno) {
		log.info(bno + "번 째 게시물 얻어오기!");
		return mapper.read(bno);
	}

//	@Override
//	public List<BoardVO> getList() {
//		log.info("getList.........");
//
//		return mapper.getList();
//	}
	@Override
	public List<BoardVO> getList(Criteria cri) {
		log.info("get List With Criteria" + cri);
		
		return mapper.getListWithPaging(cri);
	}

	@Override
	public boolean modify(BoardVO board) {
		log.info(board + "수정 하기!! ");

		return mapper.update(board) == 1;
	}

	@Override
	public boolean remove(Long bno) {
		log.info(bno + "번 째 게시물 삭제하기! ");

		return mapper.delete(bno) == 1;
	}

	@Override
	public int getTotal(Criteria cri) {
		log.info("전체 게시물 조회");
		
		return mapper.getTotalCount(cri);
	}

}
