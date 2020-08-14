package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.KFCCategoryVo;
import com.javaex.vo.KFCMenuVo;
import com.javaex.vo.KFCPageVo;


@Repository
public class KFCDao {
	@Autowired
	SqlSession sqlSession;
	
	public List<KFCCategoryVo> selectCateList() {
		return sqlSession.selectList("kfc.selectCateList");
	}
	
	public List<KFCMenuVo> selectMenuList(KFCPageVo kfcPageVo){
		return sqlSession.selectList("kfc.selectMenuList", kfcPageVo);
	}
	
	public int selectCountMenu(int categoruNo) {
		return sqlSession.selectOne("kfc.selectCountMenu", categoruNo);
	}
	
	public KFCMenuVo selectMenu(int menuNo) {
		return sqlSession.selectOne("kfc.selectMenu", menuNo);
	}
}
