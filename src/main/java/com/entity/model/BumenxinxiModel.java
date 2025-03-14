package com.entity.model;

import com.entity.BumenxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 部门信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2020-11-05 11:57:46
 */
public class BumenxinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 部门名称
	 */
	
	private String bumenmingcheng;
		
	/**
	 * 部门人数
	 */
	
	private String bumenrenshu;
		
	/**
	 * 办公室
	 */
	
	private String bangongshi;
		
	/**
	 * 负责人
	 */
	
	private String fuzeren;
		
	/**
	 * 联系电话
	 */
	
	private String lianxidianhua;
		
	/**
	 * 部门公告
	 */
	
	private String bumengonggao;
				
	
	/**
	 * 设置：部门名称
	 */
	 
	public void setBumenmingcheng(String bumenmingcheng) {
		this.bumenmingcheng = bumenmingcheng;
	}
	
	/**
	 * 获取：部门名称
	 */
	public String getBumenmingcheng() {
		return bumenmingcheng;
	}
				
	
	/**
	 * 设置：部门人数
	 */
	 
	public void setBumenrenshu(String bumenrenshu) {
		this.bumenrenshu = bumenrenshu;
	}
	
	/**
	 * 获取：部门人数
	 */
	public String getBumenrenshu() {
		return bumenrenshu;
	}
				
	
	/**
	 * 设置：办公室
	 */
	 
	public void setBangongshi(String bangongshi) {
		this.bangongshi = bangongshi;
	}
	
	/**
	 * 获取：办公室
	 */
	public String getBangongshi() {
		return bangongshi;
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
	 * 设置：联系电话
	 */
	 
	public void setLianxidianhua(String lianxidianhua) {
		this.lianxidianhua = lianxidianhua;
	}
	
	/**
	 * 获取：联系电话
	 */
	public String getLianxidianhua() {
		return lianxidianhua;
	}
				
	
	/**
	 * 设置：部门公告
	 */
	 
	public void setBumengonggao(String bumengonggao) {
		this.bumengonggao = bumengonggao;
	}
	
	/**
	 * 获取：部门公告
	 */
	public String getBumengonggao() {
		return bumengonggao;
	}
			
}
