package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.NongzixinxiEntity;
import com.entity.view.NongzixinxiView;

import com.service.NongzixinxiService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 农资信息
 * 后端接口
 * @author 
 * @email 
 * @date 2020-11-05 11:57:46
 */
@RestController
@RequestMapping("/nongzixinxi")
public class NongzixinxiController {
    @Autowired
    private NongzixinxiService nongzixinxiService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,NongzixinxiEntity nongzixinxi, HttpServletRequest request){

        EntityWrapper<NongzixinxiEntity> ew = new EntityWrapper<NongzixinxiEntity>();
    	PageUtils page = nongzixinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, nongzixinxi), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,NongzixinxiEntity nongzixinxi, HttpServletRequest request){
        EntityWrapper<NongzixinxiEntity> ew = new EntityWrapper<NongzixinxiEntity>();
    	PageUtils page = nongzixinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, nongzixinxi), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( NongzixinxiEntity nongzixinxi){
       	EntityWrapper<NongzixinxiEntity> ew = new EntityWrapper<NongzixinxiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( nongzixinxi, "nongzixinxi")); 
        return R.ok().put("data", nongzixinxiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(NongzixinxiEntity nongzixinxi){
        EntityWrapper< NongzixinxiEntity> ew = new EntityWrapper< NongzixinxiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( nongzixinxi, "nongzixinxi")); 
		NongzixinxiView nongzixinxiView =  nongzixinxiService.selectView(ew);
		return R.ok("查询农资信息成功").put("data", nongzixinxiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") String id){
        NongzixinxiEntity nongzixinxi = nongzixinxiService.selectById(id);
        return R.ok().put("data", nongzixinxi);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") String id){
        NongzixinxiEntity nongzixinxi = nongzixinxiService.selectById(id);
        return R.ok().put("data", nongzixinxi);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody NongzixinxiEntity nongzixinxi, HttpServletRequest request){
    	nongzixinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(nongzixinxi);

        nongzixinxiService.insert(nongzixinxi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody NongzixinxiEntity nongzixinxi, HttpServletRequest request){
    	nongzixinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(nongzixinxi);

        nongzixinxiService.insert(nongzixinxi);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody NongzixinxiEntity nongzixinxi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(nongzixinxi);
        nongzixinxiService.updateById(nongzixinxi);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        nongzixinxiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null && !map.get("remindstart").toString().equals("")) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null && !map.get("remindend").toString().equals("")) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<NongzixinxiEntity> wrapper = new EntityWrapper<NongzixinxiEntity>();
		if(map.get("remindstart")!=null && !map.get("remindstart").toString().equals("")) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null && !map.get("remindend").toString().equals("")) {
			wrapper.le(columnName, map.get("remindend"));
		}


		int count = nongzixinxiService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	


}
