package com.junefw.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService{

	@Autowired
	CodeDao dao;

//	infrCodeGroup
	
	@Override
	public int selectOneCount(CodeVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	
	@Override
	public List<Code> selectList(CodeVo vo) throws Exception {
		return dao.selecList(vo);
	}

	@Override
	public int insert(Code dto) throws Exception {
		
		dao.insert(dto); //ifcgName, ifcdName
		dao.insertCode(dto); //ifcgName, ifcdName, ifcgSeq
		
		return 1;
	}

	@Override
	public Code selectOne(CodeVo vo) throws Exception {
		return dao.selectOne(vo);
	}

	@Override
	public int update(Code dto) throws Exception {
		return dao.update(dto);
	}

	@Override
	public int updelete(CodeVo vo) throws Exception {
		
		return dao.delete(vo);
	}

	@Override
	public int delete(CodeVo vo) throws Exception {
		
		return dao.updateDelet(vo);
	}
	
	
//	infrCode
	
	
	@Override
	public List<Code> selectListCode(CodeVo vo) throws Exception { 
		return dao.selecListCode(vo);
	}

	@Override
	public int insertCode(Code dto) throws Exception {
		return dao.insertCode(dto);
	}

	@Override
	public Code selectOneCode(CodeVo vo) throws Exception {
		return dao.selectOneCode(vo);
	}

	@Override
	public int updateCode(Code dto) throws Exception {
		return dao.updateCode(dto);
	}

	@PostConstruct
	public List<Code> selectListForCache(){
		
		List<Code> codeListFromDb = (ArrayList<Code>) dao.selectListForCache();
		
		Code.CacheCodeArrayList.clear();
		Code.CacheCodeArrayList.addAll(codeListFromDb);
		System.out.println("cachedArrayList : " + Code.CacheCodeArrayList.size() + "chached!");
		
		return null;
		
	}
	
	public static List<Code> selectListCachedCode(String ifcgSeq) throws Exception{
		
		List<Code> rt = new ArrayList<Code>();
			for(Code codeRow : Code.CacheCodeArrayList) {
				if(codeRow.getIfcgSeq().equals(ifcgSeq)) {
					rt.add(codeRow);
				} else {
					
				}
			}
			return rt;
	}

	
	
	

}
