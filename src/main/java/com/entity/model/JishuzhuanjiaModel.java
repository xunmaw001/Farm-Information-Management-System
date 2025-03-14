package com.entity.model;

import com.entity.JishuzhuanjiaEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 技术专家
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2020-11-05 11:57:46
 */
public class JishuzhuanjiaModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 密码
	 */
	
	private String mima;
		
	/**
	 * 专家姓名
	 */
	
	private String zhuanjiaxingming;
		
	/**
	 * 性别
	 */
	
	private String xingbie;
		
	/**
	 * 专家级别
	 */
	
	private String zhuanjiajibie;
		
	/**
	 * 手机号码
	 */
	
	private String shoujihaoma;
		
	/**
	 * 邮箱号码
	 */
	
	private String youxianghaoma;
		
	/**
	 * 身份证号
	 */
	
	private String shenfenzhenghao;
		
	/**
	 * 专家照片
	 */
	
	private String zhuanjiazhaopian;
		
	/**
	 * 专家介绍
	 */
	
	private String zhuanjiajieshao;
		
	/**
	 * 余额
	 */
	
	private Float money;
				
	
	/**
	 * 设置：密码
	 */
	 
	public void setMima(String mima) {
		this.mima = mima;
	}
	
	/**
	 * 获取：密码
	 */
	public String getMima() {
		return mima;
	}
				
	
	/**
	 * 设置：专家姓名
	 */
	 
	public void setZhuanjiaxingming(String zhuanjiaxingming) {
		this.zhuanjiaxingming = zhuanjiaxingming;
	}
	
	/**
	 * 获取：专家姓名
	 */
	public String getZhuanjiaxingming() {
		return zhuanjiaxingming;
	}
				
	
	/**
	 * 设置：性别
	 */
	 
	public void setXingbie(String xingbie) {
		this.xingbie = xingbie;
	}
	
	/**
	 * 获取：性别
	 */
	public String getXingbie() {
		return xingbie;
	}
				
	
	/**
	 * 设置：专家级别
	 */
	 
	public void setZhuanjiajibie(String zhuanjiajibie) {
		this.zhuanjiajibie = zhuanjiajibie;
	}
	
	/**
	 * 获取：专家级别
	 */
	public String getZhuanjiajibie() {
		return zhuanjiajibie;
	}
				
	
	/**
	 * 设置：手机号码
	 */
	 
	public void setShoujihaoma(String shoujihaoma) {
		this.shoujihaoma = shoujihaoma;
	}
	
	/**
	 * 获取：手机号码
	 */
	public String getShoujihaoma() {
		return shoujihaoma;
	}
				
	
	/**
	 * 设置：邮箱号码
	 */
	 
	public void setYouxianghaoma(String youxianghaoma) {
		this.youxianghaoma = youxianghaoma;
	}
	
	/**
	 * 获取：邮箱号码
	 */
	public String getYouxianghaoma() {
		return youxianghaoma;
	}
				
	
	/**
	 * 设置：身份证号
	 */
	 
	public void setShenfenzhenghao(String shenfenzhenghao) {
		this.shenfenzhenghao = shenfenzhenghao;
	}
	
	/**
	 * 获取：身份证号
	 */
	public String getShenfenzhenghao() {
		return shenfenzhenghao;
	}
				
	
	/**
	 * 设置：专家照片
	 */
	 
	public void setZhuanjiazhaopian(String zhuanjiazhaopian) {
		this.zhuanjiazhaopian = zhuanjiazhaopian;
	}
	
	/**
	 * 获取：专家照片
	 */
	public String getZhuanjiazhaopian() {
		return zhuanjiazhaopian;
	}
				
	
	/**
	 * 设置：专家介绍
	 */
	 
	public void setZhuanjiajieshao(String zhuanjiajieshao) {
		this.zhuanjiajieshao = zhuanjiajieshao;
	}
	
	/**
	 * 获取：专家介绍
	 */
	public String getZhuanjiajieshao() {
		return zhuanjiajieshao;
	}
				
	
	/**
	 * 设置：余额
	 */
	 
	public void setMoney(Float money) {
		this.money = money;
	}
	
	/**
	 * 获取：余额
	 */
	public Float getMoney() {
		return money;
	}
			
}
