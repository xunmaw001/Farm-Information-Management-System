package com.dao;

import com.entity.NongshijiluEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.NongshijiluVO;
import com.entity.view.NongshijiluView;


/**
 * 农事记录
 * 
 * @author 
 * @email 
 * @date 2020-11-05 11:57:46
 */
public interface NongshijiluDao extends BaseMapper<NongshijiluEntity> {
	
	List<NongshijiluVO> selectListVO(@Param("ew") Wrapper<NongshijiluEntity> wrapper);
	
	NongshijiluVO selectVO(@Param("ew") Wrapper<NongshijiluEntity> wrapper);
	
	List<NongshijiluView> selectListView(@Param("ew") Wrapper<NongshijiluEntity> wrapper);

	List<NongshijiluView> selectListView(Pagination page,@Param("ew") Wrapper<NongshijiluEntity> wrapper);
	
	NongshijiluView selectView(@Param("ew") Wrapper<NongshijiluEntity> wrapper);
	
}
