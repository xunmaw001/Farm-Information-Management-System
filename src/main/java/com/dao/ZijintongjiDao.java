package com.dao;

import com.entity.ZijintongjiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZijintongjiVO;
import com.entity.view.ZijintongjiView;


/**
 * 资金统计
 * 
 * @author 
 * @email 
 * @date 2020-11-05 11:57:46
 */
public interface ZijintongjiDao extends BaseMapper<ZijintongjiEntity> {
	
	List<ZijintongjiVO> selectListVO(@Param("ew") Wrapper<ZijintongjiEntity> wrapper);
	
	ZijintongjiVO selectVO(@Param("ew") Wrapper<ZijintongjiEntity> wrapper);
	
	List<ZijintongjiView> selectListView(@Param("ew") Wrapper<ZijintongjiEntity> wrapper);

	List<ZijintongjiView> selectListView(Pagination page,@Param("ew") Wrapper<ZijintongjiEntity> wrapper);
	
	ZijintongjiView selectView(@Param("ew") Wrapper<ZijintongjiEntity> wrapper);
	
}
