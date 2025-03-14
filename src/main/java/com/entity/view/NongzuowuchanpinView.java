package com.entity.view;

import com.entity.NongzuowuchanpinEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 农作物产品
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-11-05 11:57:46
 */
@TableName("nongzuowuchanpin")
public class NongzuowuchanpinView  extends NongzuowuchanpinEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public NongzuowuchanpinView(){
	}
 
 	public NongzuowuchanpinView(NongzuowuchanpinEntity nongzuowuchanpinEntity){
 	try {
			BeanUtils.copyProperties(this, nongzuowuchanpinEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
