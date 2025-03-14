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
 * 资金统计
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2020-11-05 11:57:46
 */
@TableName("zijintongji")
public class ZijintongjiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public ZijintongjiEntity() {
		
	}
	
	public ZijintongjiEntity(T t) {
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
	 * 年份
	 */
					
	private String nianfen;
	
	/**
	 * 月份
	 */
					
	private String yuefen;
	
	/**
	 * 商品收入
	 */
					
	private Integer shangpinshouru;
	
	/**
	 * 收入事项
	 */
					
	private String shourushixiang;
	
	/**
	 * 收入金额
	 */
					
	private Integer shourujine;
	
	/**
	 * 化肥支出
	 */
					
	private Integer huafeizhichu;
	
	/**
	 * 农药支出
	 */
					
	private Integer nongyaozhichu;
	
	/**
	 * 农具维护
	 */
					
	private Integer nongjuweihu;
	
	/**
	 * 农机维护
	 */
					
	private Integer nongjiweihu;
	
	/**
	 * 传感器维护
	 */
					
	private Integer chuanganqiweihu;
	
	/**
	 * 支出事项
	 */
					
	private String zhichushixiang;
	
	/**
	 * 支出金额
	 */
					
	private Integer zhichujine;
	
	/**
	 * 结余金额
	 */
					
	private String jieyujine;
	
	/**
	 * 结余状态
	 */
					
	private String jieyuzhuangtai;
	
	/**
	 * 登记日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date dengjiriqi;
	
	
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
	 * 设置：年份
	 */
	public void setNianfen(String nianfen) {
		this.nianfen = nianfen;
	}
	/**
	 * 获取：年份
	 */
	public String getNianfen() {
		return nianfen;
	}
	/**
	 * 设置：月份
	 */
	public void setYuefen(String yuefen) {
		this.yuefen = yuefen;
	}
	/**
	 * 获取：月份
	 */
	public String getYuefen() {
		return yuefen;
	}
	/**
	 * 设置：商品收入
	 */
	public void setShangpinshouru(Integer shangpinshouru) {
		this.shangpinshouru = shangpinshouru;
	}
	/**
	 * 获取：商品收入
	 */
	public Integer getShangpinshouru() {
		return shangpinshouru;
	}
	/**
	 * 设置：收入事项
	 */
	public void setShourushixiang(String shourushixiang) {
		this.shourushixiang = shourushixiang;
	}
	/**
	 * 获取：收入事项
	 */
	public String getShourushixiang() {
		return shourushixiang;
	}
	/**
	 * 设置：收入金额
	 */
	public void setShourujine(Integer shourujine) {
		this.shourujine = shourujine;
	}
	/**
	 * 获取：收入金额
	 */
	public Integer getShourujine() {
		return shourujine;
	}
	/**
	 * 设置：化肥支出
	 */
	public void setHuafeizhichu(Integer huafeizhichu) {
		this.huafeizhichu = huafeizhichu;
	}
	/**
	 * 获取：化肥支出
	 */
	public Integer getHuafeizhichu() {
		return huafeizhichu;
	}
	/**
	 * 设置：农药支出
	 */
	public void setNongyaozhichu(Integer nongyaozhichu) {
		this.nongyaozhichu = nongyaozhichu;
	}
	/**
	 * 获取：农药支出
	 */
	public Integer getNongyaozhichu() {
		return nongyaozhichu;
	}
	/**
	 * 设置：农具维护
	 */
	public void setNongjuweihu(Integer nongjuweihu) {
		this.nongjuweihu = nongjuweihu;
	}
	/**
	 * 获取：农具维护
	 */
	public Integer getNongjuweihu() {
		return nongjuweihu;
	}
	/**
	 * 设置：农机维护
	 */
	public void setNongjiweihu(Integer nongjiweihu) {
		this.nongjiweihu = nongjiweihu;
	}
	/**
	 * 获取：农机维护
	 */
	public Integer getNongjiweihu() {
		return nongjiweihu;
	}
	/**
	 * 设置：传感器维护
	 */
	public void setChuanganqiweihu(Integer chuanganqiweihu) {
		this.chuanganqiweihu = chuanganqiweihu;
	}
	/**
	 * 获取：传感器维护
	 */
	public Integer getChuanganqiweihu() {
		return chuanganqiweihu;
	}
	/**
	 * 设置：支出事项
	 */
	public void setZhichushixiang(String zhichushixiang) {
		this.zhichushixiang = zhichushixiang;
	}
	/**
	 * 获取：支出事项
	 */
	public String getZhichushixiang() {
		return zhichushixiang;
	}
	/**
	 * 设置：支出金额
	 */
	public void setZhichujine(Integer zhichujine) {
		this.zhichujine = zhichujine;
	}
	/**
	 * 获取：支出金额
	 */
	public Integer getZhichujine() {
		return zhichujine;
	}
	/**
	 * 设置：结余金额
	 */
	public void setJieyujine(String jieyujine) {
		this.jieyujine = jieyujine;
	}
	/**
	 * 获取：结余金额
	 */
	public String getJieyujine() {
		return jieyujine;
	}
	/**
	 * 设置：结余状态
	 */
	public void setJieyuzhuangtai(String jieyuzhuangtai) {
		this.jieyuzhuangtai = jieyuzhuangtai;
	}
	/**
	 * 获取：结余状态
	 */
	public String getJieyuzhuangtai() {
		return jieyuzhuangtai;
	}
	/**
	 * 设置：登记日期
	 */
	public void setDengjiriqi(Date dengjiriqi) {
		this.dengjiriqi = dengjiriqi;
	}
	/**
	 * 获取：登记日期
	 */
	public Date getDengjiriqi() {
		return dengjiriqi;
	}

}
