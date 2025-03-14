package com.entity.model;

import com.entity.ChuanganqiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 传感器
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2020-11-05 11:57:46
 */
public class ChuanganqiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
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
