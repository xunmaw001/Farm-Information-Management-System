package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.NongzixinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.NongzixinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.NongzixinxiView;


/**
 * 农资信息
 *
 * @author 
 * @email 
 * @date 2020-11-05 11:57:46
 */
public interface NongzixinxiService extends IService<NongzixinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<NongzixinxiVO> selectListVO(Wrapper<NongzixinxiEntity> wrapper);
   	
   	NongzixinxiVO selectVO(@Param("ew") Wrapper<NongzixinxiEntity> wrapper);
   	
   	List<NongzixinxiView> selectListView(Wrapper<NongzixinxiEntity> wrapper);
   	
   	NongzixinxiView selectView(@Param("ew") Wrapper<NongzixinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<NongzixinxiEntity> wrapper);
   	
}

