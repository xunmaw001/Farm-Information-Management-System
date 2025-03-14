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


import com.dao.NongshijiluDao;
import com.entity.NongshijiluEntity;
import com.service.NongshijiluService;
import com.entity.vo.NongshijiluVO;
import com.entity.view.NongshijiluView;

@Service("nongshijiluService")
public class NongshijiluServiceImpl extends ServiceImpl<NongshijiluDao, NongshijiluEntity> implements NongshijiluService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<NongshijiluEntity> page = this.selectPage(
                new Query<NongshijiluEntity>(params).getPage(),
                new EntityWrapper<NongshijiluEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<NongshijiluEntity> wrapper) {
		  Page<NongshijiluView> page =new Query<NongshijiluView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<NongshijiluVO> selectListVO(Wrapper<NongshijiluEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public NongshijiluVO selectVO(Wrapper<NongshijiluEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<NongshijiluView> selectListView(Wrapper<NongshijiluEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public NongshijiluView selectView(Wrapper<NongshijiluEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
