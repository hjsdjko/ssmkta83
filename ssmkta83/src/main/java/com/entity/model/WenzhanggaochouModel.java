package com.entity.model;

import com.entity.WenzhanggaochouEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 文章稿酬
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2021-05-20 17:28:22
 */
public class WenzhanggaochouModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 姓名
	 */
	
	private String xingming;
		
	/**
	 * 文章字数
	 */
	
	private Integer wenzhangzishu;
		
	/**
	 * 单价
	 */
	
	private Float danjia;
		
	/**
	 * 总价
	 */
	
	private String zongjia;
		
	/**
	 * 登记时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date dengjishijian;
		
	/**
	 * 票据
	 */
	
	private String piaoju;
		
	/**
	 * 编辑账号
	 */
	
	private String bianjizhanghao;
		
	/**
	 * 编辑姓名
	 */
	
	private String bianjixingming;
		
	/**
	 * 是否支付
	 */
	
	private String ispay;
		
	/**
	 * 用户id
	 */
	
	private Long userid;
				
	
	/**
	 * 设置：姓名
	 */
	 
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
				
	
	/**
	 * 设置：文章字数
	 */
	 
	public void setWenzhangzishu(Integer wenzhangzishu) {
		this.wenzhangzishu = wenzhangzishu;
	}
	
	/**
	 * 获取：文章字数
	 */
	public Integer getWenzhangzishu() {
		return wenzhangzishu;
	}
				
	
	/**
	 * 设置：单价
	 */
	 
	public void setDanjia(Float danjia) {
		this.danjia = danjia;
	}
	
	/**
	 * 获取：单价
	 */
	public Float getDanjia() {
		return danjia;
	}
				
	
	/**
	 * 设置：总价
	 */
	 
	public void setZongjia(String zongjia) {
		this.zongjia = zongjia;
	}
	
	/**
	 * 获取：总价
	 */
	public String getZongjia() {
		return zongjia;
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
				
	
	/**
	 * 设置：票据
	 */
	 
	public void setPiaoju(String piaoju) {
		this.piaoju = piaoju;
	}
	
	/**
	 * 获取：票据
	 */
	public String getPiaoju() {
		return piaoju;
	}
				
	
	/**
	 * 设置：编辑账号
	 */
	 
	public void setBianjizhanghao(String bianjizhanghao) {
		this.bianjizhanghao = bianjizhanghao;
	}
	
	/**
	 * 获取：编辑账号
	 */
	public String getBianjizhanghao() {
		return bianjizhanghao;
	}
				
	
	/**
	 * 设置：编辑姓名
	 */
	 
	public void setBianjixingming(String bianjixingming) {
		this.bianjixingming = bianjixingming;
	}
	
	/**
	 * 获取：编辑姓名
	 */
	public String getBianjixingming() {
		return bianjixingming;
	}
				
	
	/**
	 * 设置：是否支付
	 */
	 
	public void setIspay(String ispay) {
		this.ispay = ispay;
	}
	
	/**
	 * 获取：是否支付
	 */
	public String getIspay() {
		return ispay;
	}
				
	
	/**
	 * 设置：用户id
	 */
	 
	public void setUserid(Long userid) {
		this.userid = userid;
	}
	
	/**
	 * 获取：用户id
	 */
	public Long getUserid() {
		return userid;
	}
			
}
