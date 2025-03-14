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


import com.dao.NongzuowuchanpinDao;
import com.entity.NongzuowuchanpinEntity;
import com.service.NongzuowuchanpinService;
import com.entity.vo.NongzuowuchanpinVO;
import com.entity.view.NongzuowuchanpinView;

@Service("nongzuowuchanpinService")
public class NongzuowuchanpinServiceImpl extends ServiceImpl<NongzuowuchanpinDao, NongzuowuchanpinEntity> implements NongzuowuchanpinService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<NongzuowuchanpinEntity> page = this.selectPage(
                new Query<NongzuowuchanpinEntity>(params).getPage(),
                new EntityWrapper<NongzuowuchanpinEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<NongzuowuchanpinEntity> wrapper) {
		  Page<NongzuowuchanpinView> page =new Query<NongzuowuchanpinView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<NongzuowuchanpinVO> selectListVO(Wrapper<NongzuowuchanpinEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public NongzuowuchanpinVO selectVO(Wrapper<NongzuowuchanpinEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<NongzuowuchanpinView> selectListView(Wrapper<NongzuowuchanpinEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public NongzuowuchanpinView selectView(Wrapper<NongzuowuchanpinEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
