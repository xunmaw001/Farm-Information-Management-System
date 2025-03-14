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


import com.dao.ZijintongjiDao;
import com.entity.ZijintongjiEntity;
import com.service.ZijintongjiService;
import com.entity.vo.ZijintongjiVO;
import com.entity.view.ZijintongjiView;

@Service("zijintongjiService")
public class ZijintongjiServiceImpl extends ServiceImpl<ZijintongjiDao, ZijintongjiEntity> implements ZijintongjiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ZijintongjiEntity> page = this.selectPage(
                new Query<ZijintongjiEntity>(params).getPage(),
                new EntityWrapper<ZijintongjiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ZijintongjiEntity> wrapper) {
		  Page<ZijintongjiView> page =new Query<ZijintongjiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ZijintongjiVO> selectListVO(Wrapper<ZijintongjiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ZijintongjiVO selectVO(Wrapper<ZijintongjiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ZijintongjiView> selectListView(Wrapper<ZijintongjiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ZijintongjiView selectView(Wrapper<ZijintongjiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
