package com.dao;

import com.entity.ChuanganqiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ChuanganqiVO;
import com.entity.view.ChuanganqiView;


/**
 * 传感器
 * 
 * @author 
 * @email 
 * @date 2020-11-05 11:57:46
 */
public interface ChuanganqiDao extends BaseMapper<ChuanganqiEntity> {
	
	List<ChuanganqiVO> selectListVO(@Param("ew") Wrapper<ChuanganqiEntity> wrapper);
	
	ChuanganqiVO selectVO(@Param("ew") Wrapper<ChuanganqiEntity> wrapper);
	
	List<ChuanganqiView> selectListView(@Param("ew") Wrapper<ChuanganqiEntity> wrapper);

	List<ChuanganqiView> selectListView(Pagination page,@Param("ew") Wrapper<ChuanganqiEntity> wrapper);
	
	ChuanganqiView selectView(@Param("ew") Wrapper<ChuanganqiEntity> wrapper);
	
}
