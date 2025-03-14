package com.dao;

import com.entity.NongzuowuchanpinEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.NongzuowuchanpinVO;
import com.entity.view.NongzuowuchanpinView;


/**
 * 农作物产品
 * 
 * @author 
 * @email 
 * @date 2020-11-05 11:57:46
 */
public interface NongzuowuchanpinDao extends BaseMapper<NongzuowuchanpinEntity> {
	
	List<NongzuowuchanpinVO> selectListVO(@Param("ew") Wrapper<NongzuowuchanpinEntity> wrapper);
	
	NongzuowuchanpinVO selectVO(@Param("ew") Wrapper<NongzuowuchanpinEntity> wrapper);
	
	List<NongzuowuchanpinView> selectListView(@Param("ew") Wrapper<NongzuowuchanpinEntity> wrapper);

	List<NongzuowuchanpinView> selectListView(Pagination page,@Param("ew") Wrapper<NongzuowuchanpinEntity> wrapper);
	
	NongzuowuchanpinView selectView(@Param("ew") Wrapper<NongzuowuchanpinEntity> wrapper);
	
}
