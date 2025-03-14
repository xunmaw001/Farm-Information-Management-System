package com.dao;

import com.entity.JishuzhuanjiaEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JishuzhuanjiaVO;
import com.entity.view.JishuzhuanjiaView;


/**
 * 技术专家
 * 
 * @author 
 * @email 
 * @date 2020-11-05 11:57:46
 */
public interface JishuzhuanjiaDao extends BaseMapper<JishuzhuanjiaEntity> {
	
	List<JishuzhuanjiaVO> selectListVO(@Param("ew") Wrapper<JishuzhuanjiaEntity> wrapper);
	
	JishuzhuanjiaVO selectVO(@Param("ew") Wrapper<JishuzhuanjiaEntity> wrapper);
	
	List<JishuzhuanjiaView> selectListView(@Param("ew") Wrapper<JishuzhuanjiaEntity> wrapper);

	List<JishuzhuanjiaView> selectListView(Pagination page,@Param("ew") Wrapper<JishuzhuanjiaEntity> wrapper);
	
	JishuzhuanjiaView selectView(@Param("ew") Wrapper<JishuzhuanjiaEntity> wrapper);
	
}
