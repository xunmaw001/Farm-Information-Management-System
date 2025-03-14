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

import com.entity.NongzuowuchanpinEntity;
import com.entity.view.NongzuowuchanpinView;

import com.service.NongzuowuchanpinService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 农作物产品
 * 后端接口
 * @author 
 * @email 
 * @date 2020-11-05 11:57:46
 */
@RestController
@RequestMapping("/nongzuowuchanpin")
public class NongzuowuchanpinController {
    @Autowired
    private NongzuowuchanpinService nongzuowuchanpinService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,NongzuowuchanpinEntity nongzuowuchanpin, HttpServletRequest request){

        EntityWrapper<NongzuowuchanpinEntity> ew = new EntityWrapper<NongzuowuchanpinEntity>();
    	PageUtils page = nongzuowuchanpinService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, nongzuowuchanpin), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,NongzuowuchanpinEntity nongzuowuchanpin, HttpServletRequest request){
        EntityWrapper<NongzuowuchanpinEntity> ew = new EntityWrapper<NongzuowuchanpinEntity>();
    	PageUtils page = nongzuowuchanpinService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, nongzuowuchanpin), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( NongzuowuchanpinEntity nongzuowuchanpin){
       	EntityWrapper<NongzuowuchanpinEntity> ew = new EntityWrapper<NongzuowuchanpinEntity>();
      	ew.allEq(MPUtil.allEQMapPre( nongzuowuchanpin, "nongzuowuchanpin")); 
        return R.ok().put("data", nongzuowuchanpinService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(NongzuowuchanpinEntity nongzuowuchanpin){
        EntityWrapper< NongzuowuchanpinEntity> ew = new EntityWrapper< NongzuowuchanpinEntity>();
 		ew.allEq(MPUtil.allEQMapPre( nongzuowuchanpin, "nongzuowuchanpin")); 
		NongzuowuchanpinView nongzuowuchanpinView =  nongzuowuchanpinService.selectView(ew);
		return R.ok("查询农作物产品成功").put("data", nongzuowuchanpinView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") String id){
        NongzuowuchanpinEntity nongzuowuchanpin = nongzuowuchanpinService.selectById(id);
        return R.ok().put("data", nongzuowuchanpin);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") String id){
        NongzuowuchanpinEntity nongzuowuchanpin = nongzuowuchanpinService.selectById(id);
        return R.ok().put("data", nongzuowuchanpin);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody NongzuowuchanpinEntity nongzuowuchanpin, HttpServletRequest request){
    	nongzuowuchanpin.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(nongzuowuchanpin);

        nongzuowuchanpinService.insert(nongzuowuchanpin);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody NongzuowuchanpinEntity nongzuowuchanpin, HttpServletRequest request){
    	nongzuowuchanpin.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(nongzuowuchanpin);

        nongzuowuchanpinService.insert(nongzuowuchanpin);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody NongzuowuchanpinEntity nongzuowuchanpin, HttpServletRequest request){
        //ValidatorUtils.validateEntity(nongzuowuchanpin);
        nongzuowuchanpinService.updateById(nongzuowuchanpin);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        nongzuowuchanpinService.deleteBatchIds(Arrays.asList(ids));
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
		
		Wrapper<NongzuowuchanpinEntity> wrapper = new EntityWrapper<NongzuowuchanpinEntity>();
		if(map.get("remindstart")!=null && !map.get("remindstart").toString().equals("")) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null && !map.get("remindend").toString().equals("")) {
			wrapper.le(columnName, map.get("remindend"));
		}


		int count = nongzuowuchanpinService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	


}
