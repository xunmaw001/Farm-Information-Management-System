package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JishuzhuanjiaEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JishuzhuanjiaVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JishuzhuanjiaView;


/**
 * 技术专家
 *
 * @author 
 * @email 
 * @date 2020-11-05 11:57:46
 */
public interface JishuzhuanjiaService extends IService<JishuzhuanjiaEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JishuzhuanjiaVO> selectListVO(Wrapper<JishuzhuanjiaEntity> wrapper);
   	
   	JishuzhuanjiaVO selectVO(@Param("ew") Wrapper<JishuzhuanjiaEntity> wrapper);
   	
   	List<JishuzhuanjiaView> selectListView(Wrapper<JishuzhuanjiaEntity> wrapper);
   	
   	JishuzhuanjiaView selectView(@Param("ew") Wrapper<JishuzhuanjiaEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JishuzhuanjiaEntity> wrapper);
   	
}

