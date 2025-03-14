package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 技术专家
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2020-11-05 11:57:46
 */
@TableName("jishuzhuanjia")
public class JishuzhuanjiaEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public JishuzhuanjiaEntity() {
		
	}
	
	public JishuzhuanjiaEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 专家账号
	 */
					
	private String zhuanjiazhanghao;
	
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
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：专家账号
	 */
	public void setZhuanjiazhanghao(String zhuanjiazhanghao) {
		this.zhuanjiazhanghao = zhuanjiazhanghao;
	}
	/**
	 * 获取：专家账号
	 */
	public String getZhuanjiazhanghao() {
		return zhuanjiazhanghao;
	}
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
