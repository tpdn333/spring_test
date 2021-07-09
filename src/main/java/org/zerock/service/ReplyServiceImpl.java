package org.zerock.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReplyPageDTO;
import org.zerock.domain.ReplyVO;
import org.zerock.mapper.BoardMapper;
import org.zerock.mapper.ReplyMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ReplyServiceImpl implements ReplyService{
	
	@Setter(onMethod_ = @Autowired)
	private ReplyMapper mapper;
	
	@Setter(onMethod_ = @Autowired)
	private BoardMapper boardMapper;
	
	@Transactional
	@Override
	public int register(ReplyVO vo) {
		log.info("Reply register method 실행됨" + vo);
		
		boardMapper.updateReplyCnt(vo.getBno(), 1);
		
		return mapper.insert(vo);
	}

	@Override
	public ReplyVO get(Long rno) {
		log.info("Reply get method 실행됨" + rno);
		return mapper.read(rno);
	}

	@Override
	public int modify(ReplyVO vo) {
		log.info("Reply modify method 실행됨" + vo);
		return mapper.update(vo);
	}

	@Transactional
	@Override
	public int remove(Long rno) {
		log.info("Reply remove method 실행됨" + rno);
		
		ReplyVO vo = mapper.read(rno);
		
		boardMapper.updateReplyCnt(vo.getBno(), -1);
		
		return mapper.delete(rno);
	}

	@Override
	public List<ReplyVO> getList(Criteria cri, Long bno) {
		log.info("get Reply List of a Board " + bno);
		return mapper.getListWithPaging(cri, bno);
	}

	@Override
	public ReplyPageDTO getListPage(Criteria cri, Long bno) {
		int total = mapper.getCountByBno(bno);
//		int lastpage = (total-1) / cri.getAmount() + 1;
//		cri.setPageNum(lastpage);

		
		List<ReplyVO> list = new ArrayList<>(); 
		
		if (cri.getFrom() >= 0) {
			list = mapper.getListWithPaging(cri, bno);
		}
		log.info("total : " + total);
		return new ReplyPageDTO(total, list);
	}

}
