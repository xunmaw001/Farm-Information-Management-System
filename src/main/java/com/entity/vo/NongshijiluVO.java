package com.entity.vo;

import com.entity.NongshijiluEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 农事记录
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2020-11-05 11:57:46
 */
public class NongshijiluVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 蔬菜种类
	 */
	
	private String shucaizhonglei;
		
	/**
	 * 负责人
	 */
	
	private String fuzeren;
		
	/**
	 * 面积
	 */
	
	private String mianji;
		
	/**
	 * 数量
	 */
	
	private String shuliang;
		
	/**
	 * 时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date shijian;
		
	/**
	 * 详情
	 */
	
	private String xiangqing;
				
	
	/**
	 * 设置：蔬菜种类
	 */
	 
	public void setShucaizhonglei(String shucaizhonglei) {
		this.shucaizhonglei = shucaizhonglei;
	}
	
	/**
	 * 获取：蔬菜种类
	 */
	public String getShucaizhonglei() {
		return shucaizhonglei;
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
	 * 设置：面积
	 */
	 
	public void setMianji(String mianji) {
		this.mianji = mianji;
	}
	
	/**
	 * 获取：面积
	 */
	public String getMianji() {
		return mianji;
	}
				
	
	/**
	 * 设置：数量
	 */
	 
	public void setShuliang(String shuliang) {
		this.shuliang = shuliang;
	}
	
	/**
	 * 获取：数量
	 */
	public String getShuliang() {
		return shuliang;
	}
				
	
	/**
	 * 设置：时间
	 */
	 
	public void setShijian(Date shijian) {
		this.shijian = shijian;
	}
	
	/**
	 * 获取：时间
	 */
	public Date getShijian() {
		return shijian;
	}
				
	
	/**
	 * 设置：详情
	 */
	 
	public void setXiangqing(String xiangqing) {
		this.xiangqing = xiangqing;
	}
	
	/**
	 * 获取：详情
	 */
	public String getXiangqing() {
		return xiangqing;
	}
			
}
