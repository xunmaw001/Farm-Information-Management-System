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


import com.dao.NongzixinxiDao;
import com.entity.NongzixinxiEntity;
import com.service.NongzixinxiService;
import com.entity.vo.NongzixinxiVO;
import com.entity.view.NongzixinxiView;

@Service("nongzixinxiService")
public class NongzixinxiServiceImpl extends ServiceImpl<NongzixinxiDao, NongzixinxiEntity> implements NongzixinxiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<NongzixinxiEntity> page = this.selectPage(
                new Query<NongzixinxiEntity>(params).getPage(),
                new EntityWrapper<NongzixinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<NongzixinxiEntity> wrapper) {
		  Page<NongzixinxiView> page =new Query<NongzixinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<NongzixinxiVO> selectListVO(Wrapper<NongzixinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public NongzixinxiVO selectVO(Wrapper<NongzixinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<NongzixinxiView> selectListView(Wrapper<NongzixinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public NongzixinxiView selectView(Wrapper<NongzixinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
