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


import com.dao.ChuanganqiDao;
import com.entity.ChuanganqiEntity;
import com.service.ChuanganqiService;
import com.entity.vo.ChuanganqiVO;
import com.entity.view.ChuanganqiView;

@Service("chuanganqiService")
public class ChuanganqiServiceImpl extends ServiceImpl<ChuanganqiDao, ChuanganqiEntity> implements ChuanganqiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ChuanganqiEntity> page = this.selectPage(
                new Query<ChuanganqiEntity>(params).getPage(),
                new EntityWrapper<ChuanganqiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ChuanganqiEntity> wrapper) {
		  Page<ChuanganqiView> page =new Query<ChuanganqiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ChuanganqiVO> selectListVO(Wrapper<ChuanganqiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ChuanganqiVO selectVO(Wrapper<ChuanganqiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ChuanganqiView> selectListView(Wrapper<ChuanganqiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ChuanganqiView selectView(Wrapper<ChuanganqiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
