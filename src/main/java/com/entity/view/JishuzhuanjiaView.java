package com.entity.view;

import com.entity.JishuzhuanjiaEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 技术专家
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-11-05 11:57:46
 */
@TableName("jishuzhuanjia")
public class JishuzhuanjiaView  extends JishuzhuanjiaEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public JishuzhuanjiaView(){
	}
 
 	public JishuzhuanjiaView(JishuzhuanjiaEntity jishuzhuanjiaEntity){
 	try {
			BeanUtils.copyProperties(this, jishuzhuanjiaEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
