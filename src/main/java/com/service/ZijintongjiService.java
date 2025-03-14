package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ZijintongjiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ZijintongjiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ZijintongjiView;


/**
 * 资金统计
 *
 * @author 
 * @email 
 * @date 2020-11-05 11:57:46
 */
public interface ZijintongjiService extends IService<ZijintongjiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ZijintongjiVO> selectListVO(Wrapper<ZijintongjiEntity> wrapper);
   	
   	ZijintongjiVO selectVO(@Param("ew") Wrapper<ZijintongjiEntity> wrapper);
   	
   	List<ZijintongjiView> selectListView(Wrapper<ZijintongjiEntity> wrapper);
   	
   	ZijintongjiView selectView(@Param("ew") Wrapper<ZijintongjiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ZijintongjiEntity> wrapper);
   	
}

