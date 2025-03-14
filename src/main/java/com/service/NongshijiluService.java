package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.NongshijiluEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.NongshijiluVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.NongshijiluView;


/**
 * 农事记录
 *
 * @author 
 * @email 
 * @date 2020-11-05 11:57:46
 */
public interface NongshijiluService extends IService<NongshijiluEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<NongshijiluVO> selectListVO(Wrapper<NongshijiluEntity> wrapper);
   	
   	NongshijiluVO selectVO(@Param("ew") Wrapper<NongshijiluEntity> wrapper);
   	
   	List<NongshijiluView> selectListView(Wrapper<NongshijiluEntity> wrapper);
   	
   	NongshijiluView selectView(@Param("ew") Wrapper<NongshijiluEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<NongshijiluEntity> wrapper);
   	
}

