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
 * 销售统计
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2020-11-05 11:57:46
 */
@TableName("xiaoshoutongji")
public class XiaoshoutongjiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public XiaoshoutongjiEntity() {
		
	}
	
	public XiaoshoutongjiEntity(T t) {
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
	 * 商品名称
	 */
					
	private String shangpinmingcheng;
	
	/**
	 * 客户姓名
	 */
					
	private String kehuxingming;
	
	/**
	 * 销售数量
	 */
					
	private String xiaoshoushuliang;
	
	/**
	 * 销售价格
	 */
					
	private String xiaoshoujiage;
	
	/**
	 * 销售日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date xiaoshouriqi;
	
	
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
	 * 设置：商品名称
	 */
	public void setShangpinmingcheng(String shangpinmingcheng) {
		this.shangpinmingcheng = shangpinmingcheng;
	}
	/**
	 * 获取：商品名称
	 */
	public String getShangpinmingcheng() {
		return shangpinmingcheng;
	}
	/**
	 * 设置：客户姓名
	 */
	public void setKehuxingming(String kehuxingming) {
		this.kehuxingming = kehuxingming;
	}
	/**
	 * 获取：客户姓名
	 */
	public String getKehuxingming() {
		return kehuxingming;
	}
	/**
	 * 设置：销售数量
	 */
	public void setXiaoshoushuliang(String xiaoshoushuliang) {
		this.xiaoshoushuliang = xiaoshoushuliang;
	}
	/**
	 * 获取：销售数量
	 */
	public String getXiaoshoushuliang() {
		return xiaoshoushuliang;
	}
	/**
	 * 设置：销售价格
	 */
	public void setXiaoshoujiage(String xiaoshoujiage) {
		this.xiaoshoujiage = xiaoshoujiage;
	}
	/**
	 * 获取：销售价格
	 */
	public String getXiaoshoujiage() {
		return xiaoshoujiage;
	}
	/**
	 * 设置：销售日期
	 */
	public void setXiaoshouriqi(Date xiaoshouriqi) {
		this.xiaoshouriqi = xiaoshouriqi;
	}
	/**
	 * 获取：销售日期
	 */
	public Date getXiaoshouriqi() {
		return xiaoshouriqi;
	}

}
