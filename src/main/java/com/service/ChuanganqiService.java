package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ChuanganqiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ChuanganqiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ChuanganqiView;


/**
 * 传感器
 *
 * @author 
 * @email 
 * @date 2020-11-05 11:57:46
 */
public interface ChuanganqiService extends IService<ChuanganqiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ChuanganqiVO> selectListVO(Wrapper<ChuanganqiEntity> wrapper);
   	
   	ChuanganqiVO selectVO(@Param("ew") Wrapper<ChuanganqiEntity> wrapper);
   	
   	List<ChuanganqiView> selectListView(Wrapper<ChuanganqiEntity> wrapper);
   	
   	ChuanganqiView selectView(@Param("ew") Wrapper<ChuanganqiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ChuanganqiEntity> wrapper);
   	
}

