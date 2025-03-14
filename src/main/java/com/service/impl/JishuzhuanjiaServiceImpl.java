package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.JishuzhuanjiaDao;
import com.entity.JishuzhuanjiaEntity;
import com.service.JishuzhuanjiaService;
import com.entity.vo.JishuzhuanjiaVO;
import com.entity.view.JishuzhuanjiaView;

@Service("jishuzhuanjiaService")
public class JishuzhuanjiaServiceImpl extends ServiceImpl<JishuzhuanjiaDao, JishuzhuanjiaEntity> implements JishuzhuanjiaService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JishuzhuanjiaEntity> page = this.selectPage(
                new Query<JishuzhuanjiaEntity>(params).getPage(),
                new EntityWrapper<JishuzhuanjiaEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JishuzhuanjiaEntity> wrapper) {
		  Page<JishuzhuanjiaView> page =new Query<JishuzhuanjiaView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JishuzhuanjiaVO> selectListVO(Wrapper<JishuzhuanjiaEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JishuzhuanjiaVO selectVO(Wrapper<JishuzhuanjiaEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JishuzhuanjiaView> selectListView(Wrapper<JishuzhuanjiaEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JishuzhuanjiaView selectView(Wrapper<JishuzhuanjiaEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
