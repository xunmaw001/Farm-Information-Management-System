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

import com.entity.ChuanganqiEntity;
import com.entity.view.ChuanganqiView;

import com.service.ChuanganqiService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 传感器
 * 后端接口
 * @author 
 * @email 
 * @date 2020-11-05 11:57:46
 */
@RestController
@RequestMapping("/chuanganqi")
public class ChuanganqiController {
    @Autowired
    private ChuanganqiService chuanganqiService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,ChuanganqiEntity chuanganqi, HttpServletRequest request){

        EntityWrapper<ChuanganqiEntity> ew = new EntityWrapper<ChuanganqiEntity>();
    	PageUtils page = chuanganqiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, chuanganqi), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,ChuanganqiEntity chuanganqi, HttpServletRequest request){
        EntityWrapper<ChuanganqiEntity> ew = new EntityWrapper<ChuanganqiEntity>();
    	PageUtils page = chuanganqiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, chuanganqi), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( ChuanganqiEntity chuanganqi){
       	EntityWrapper<ChuanganqiEntity> ew = new EntityWrapper<ChuanganqiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( chuanganqi, "chuanganqi")); 
        return R.ok().put("data", chuanganqiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(ChuanganqiEntity chuanganqi){
        EntityWrapper< ChuanganqiEntity> ew = new EntityWrapper< ChuanganqiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( chuanganqi, "chuanganqi")); 
		ChuanganqiView chuanganqiView =  chuanganqiService.selectView(ew);
		return R.ok("查询传感器成功").put("data", chuanganqiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") String id){
        ChuanganqiEntity chuanganqi = chuanganqiService.selectById(id);
        return R.ok().put("data", chuanganqi);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") String id){
        ChuanganqiEntity chuanganqi = chuanganqiService.selectById(id);
        return R.ok().put("data", chuanganqi);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody ChuanganqiEntity chuanganqi, HttpServletRequest request){
    	chuanganqi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(chuanganqi);

        chuanganqiService.insert(chuanganqi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody ChuanganqiEntity chuanganqi, HttpServletRequest request){
    	chuanganqi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(chuanganqi);

        chuanganqiService.insert(chuanganqi);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody ChuanganqiEntity chuanganqi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(chuanganqi);
        chuanganqiService.updateById(chuanganqi);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        chuanganqiService.deleteBatchIds(Arrays.asList(ids));
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
		
		Wrapper<ChuanganqiEntity> wrapper = new EntityWrapper<ChuanganqiEntity>();
		if(map.get("remindstart")!=null && !map.get("remindstart").toString().equals("")) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null && !map.get("remindend").toString().equals("")) {
			wrapper.le(columnName, map.get("remindend"));
		}


		int count = chuanganqiService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	


}
