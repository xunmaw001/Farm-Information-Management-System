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
 * 传感器
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2020-11-05 11:57:46
 */
@TableName("chuanganqi")
public class ChuanganqiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public ChuanganqiEntity() {
		
	}
	
	public ChuanganqiEntity(T t) {
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
	 * 传感器名称
	 */
					
	private String chuanganqimingcheng;
	
	/**
	 * 传感器状态
	 */
					
	private String chuanganqizhuangtai;
	
	/**
	 * 最高数值
	 */
					
	private String zuigaoshuzhi;
	
	/**
	 * 最低数值
	 */
					
	private String zuidishuzhi;
	
	/**
	 * 传感器数据
	 */
					
	private String chuanganqishuju;
	
	/**
	 * 登记时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date dengjishijian;
	
	
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
	 * 设置：传感器名称
	 */
	public void setChuanganqimingcheng(String chuanganqimingcheng) {
		this.chuanganqimingcheng = chuanganqimingcheng;
	}
	/**
	 * 获取：传感器名称
	 */
	public String getChuanganqimingcheng() {
		return chuanganqimingcheng;
	}
	/**
	 * 设置：传感器状态
	 */
	public void setChuanganqizhuangtai(String chuanganqizhuangtai) {
		this.chuanganqizhuangtai = chuanganqizhuangtai;
	}
	/**
	 * 获取：传感器状态
	 */
	public String getChuanganqizhuangtai() {
		return chuanganqizhuangtai;
	}
	/**
	 * 设置：最高数值
	 */
	public void setZuigaoshuzhi(String zuigaoshuzhi) {
		this.zuigaoshuzhi = zuigaoshuzhi;
	}
	/**
	 * 获取：最高数值
	 */
	public String getZuigaoshuzhi() {
		return zuigaoshuzhi;
	}
	/**
	 * 设置：最低数值
	 */
	public void setZuidishuzhi(String zuidishuzhi) {
		this.zuidishuzhi = zuidishuzhi;
	}
	/**
	 * 获取：最低数值
	 */
	public String getZuidishuzhi() {
		return zuidishuzhi;
	}
	/**
	 * 设置：传感器数据
	 */
	public void setChuanganqishuju(String chuanganqishuju) {
		this.chuanganqishuju = chuanganqishuju;
	}
	/**
	 * 获取：传感器数据
	 */
	public String getChuanganqishuju() {
		return chuanganqishuju;
	}
	/**
	 * 设置：登记时间
	 */
	public void setDengjishijian(Date dengjishijian) {
		this.dengjishijian = dengjishijian;
	}
	/**
	 * 获取：登记时间
	 */
	public Date getDengjishijian() {
		return dengjishijian;
	}

}
