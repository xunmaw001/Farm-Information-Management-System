package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.NongzuowuchanpinEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.NongzuowuchanpinVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.NongzuowuchanpinView;


/**
 * 农作物产品
 *
 * @author 
 * @email 
 * @date 2020-11-05 11:57:46
 */
public interface NongzuowuchanpinService extends IService<NongzuowuchanpinEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<NongzuowuchanpinVO> selectListVO(Wrapper<NongzuowuchanpinEntity> wrapper);
   	
   	NongzuowuchanpinVO selectVO(@Param("ew") Wrapper<NongzuowuchanpinEntity> wrapper);
   	
   	List<NongzuowuchanpinView> selectListView(Wrapper<NongzuowuchanpinEntity> wrapper);
   	
   	NongzuowuchanpinView selectView(@Param("ew") Wrapper<NongzuowuchanpinEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<NongzuowuchanpinEntity> wrapper);
   	
}

