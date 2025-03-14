package com.entity.view;

import com.entity.ZijintongjiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 资金统计
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-11-05 11:57:46
 */
@TableName("zijintongji")
public class ZijintongjiView  extends ZijintongjiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ZijintongjiView(){
	}
 
 	public ZijintongjiView(ZijintongjiEntity zijintongjiEntity){
 	try {
			BeanUtils.copyProperties(this, zijintongjiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
