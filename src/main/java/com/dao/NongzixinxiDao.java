package com.dao;

import com.entity.NongzixinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.NongzixinxiVO;
import com.entity.view.NongzixinxiView;


/**
 * 农资信息
 * 
 * @author 
 * @email 
 * @date 2020-11-05 11:57:46
 */
public interface NongzixinxiDao extends BaseMapper<NongzixinxiEntity> {
	
	List<NongzixinxiVO> selectListVO(@Param("ew") Wrapper<NongzixinxiEntity> wrapper);
	
	NongzixinxiVO selectVO(@Param("ew") Wrapper<NongzixinxiEntity> wrapper);
	
	List<NongzixinxiView> selectListView(@Param("ew") Wrapper<NongzixinxiEntity> wrapper);

	List<NongzixinxiView> selectListView(Pagination page,@Param("ew") Wrapper<NongzixinxiEntity> wrapper);
	
	NongzixinxiView selectView(@Param("ew") Wrapper<NongzixinxiEntity> wrapper);
	
}
