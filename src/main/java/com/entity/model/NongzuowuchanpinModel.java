package com.entity.model;

import com.entity.NongzuowuchanpinEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 农作物产品
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2020-11-05 11:57:46
 */
public class NongzuowuchanpinModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 农作物名称
	 */
	
	private String nongzuowumingcheng;
		
	/**
	 * 农作物图片
	 */
	
	private String nongzuowutupian;
		
	/**
	 * 负责人
	 */
	
	private String fuzeren;
		
	/**
	 * 种植面积
	 */
	
	private String zhongzhimianji;
		
	/**
	 * 种植时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date zhongzhishijian;
		
	/**
	 * 生产环境数据
	 */
	
	private String shengchanhuanjingshuju;
		
	/**
	 * 预计采收时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date yujicaishoushijian;
		
	/**
	 * 预计产量
	 */
	
	private String yujichanliang;
		
	/**
	 * 详情备注
	 */
	
	private String xiangqingbeizhu;
				
	
	/**
	 * 设置：农作物名称
	 */
	 
	public void setNongzuowumingcheng(String nongzuowumingcheng) {
		this.nongzuowumingcheng = nongzuowumingcheng;
	}
	
	/**
	 * 获取：农作物名称
	 */
	public String getNongzuowumingcheng() {
		return nongzuowumingcheng;
	}
				
	
	/**
	 * 设置：农作物图片
	 */
	 
	public void setNongzuowutupian(String nongzuowutupian) {
		this.nongzuowutupian = nongzuowutupian;
	}
	
	/**
	 * 获取：农作物图片
	 */
	public String getNongzuowutupian() {
		return nongzuowutupian;
	}
				
	
	/**
	 * 设置：负责人
	 */
	 
	public void setFuzeren(String fuzeren) {
		this.fuzeren = fuzeren;
	}
	
	/**
	 * 获取：负责人
	 */
	public String getFuzeren() {
		return fuzeren;
	}
				
	
	/**
	 * 设置：种植面积
	 */
	 
	public void setZhongzhimianji(String zhongzhimianji) {
		this.zhongzhimianji = zhongzhimianji;
	}
	
	/**
	 * 获取：种植面积
	 */
	public String getZhongzhimianji() {
		return zhongzhimianji;
	}
				
	
	/**
	 * 设置：种植时间
	 */
	 
	public void setZhongzhishijian(Date zhongzhishijian) {
		this.zhongzhishijian = zhongzhishijian;
	}
	
	/**
	 * 获取：种植时间
	 */
	public Date getZhongzhishijian() {
		return zhongzhishijian;
	}
				
	
	/**
	 * 设置：生产环境数据
	 */
	 
	public void setShengchanhuanjingshuju(String shengchanhuanjingshuju) {
		this.shengchanhuanjingshuju = shengchanhuanjingshuju;
	}
	
	/**
	 * 获取：生产环境数据
	 */
	public String getShengchanhuanjingshuju() {
		return shengchanhuanjingshuju;
	}
				
	
	/**
	 * 设置：预计采收时间
	 */
	 
	public void setYujicaishoushijian(Date yujicaishoushijian) {
		this.yujicaishoushijian = yujicaishoushijian;
	}
	
	/**
	 * 获取：预计采收时间
	 */
	public Date getYujicaishoushijian() {
		return yujicaishoushijian;
	}
				
	
	/**
	 * 设置：预计产量
	 */
	 
	public void setYujichanliang(String yujichanliang) {
		this.yujichanliang = yujichanliang;
	}
	
	/**
	 * 获取：预计产量
	 */
	public String getYujichanliang() {
		return yujichanliang;
	}
				
	
	/**
	 * 设置：详情备注
	 */
	 
	public void setXiangqingbeizhu(String xiangqingbeizhu) {
		this.xiangqingbeizhu = xiangqingbeizhu;
	}
	
	/**
	 * 获取：详情备注
	 */
	public String getXiangqingbeizhu() {
		return xiangqingbeizhu;
	}
			
}
