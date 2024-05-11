package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.DiscusswenzhangzhanshiEntity;
import com.entity.view.DiscusswenzhangzhanshiView;

import com.service.DiscusswenzhangzhanshiService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 文章展示评论表
 * 后端接口
 * @author 
 * @email 
 * @date 2021-05-20 17:28:22
 */
@RestController
@RequestMapping("/discusswenzhangzhanshi")
public class DiscusswenzhangzhanshiController {
    @Autowired
    private DiscusswenzhangzhanshiService discusswenzhangzhanshiService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,DiscusswenzhangzhanshiEntity discusswenzhangzhanshi, 
		HttpServletRequest request){

        EntityWrapper<DiscusswenzhangzhanshiEntity> ew = new EntityWrapper<DiscusswenzhangzhanshiEntity>();
		PageUtils page = discusswenzhangzhanshiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, discusswenzhangzhanshi), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,DiscusswenzhangzhanshiEntity discusswenzhangzhanshi, 
		HttpServletRequest request){
        EntityWrapper<DiscusswenzhangzhanshiEntity> ew = new EntityWrapper<DiscusswenzhangzhanshiEntity>();
		PageUtils page = discusswenzhangzhanshiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, discusswenzhangzhanshi), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( DiscusswenzhangzhanshiEntity discusswenzhangzhanshi){
       	EntityWrapper<DiscusswenzhangzhanshiEntity> ew = new EntityWrapper<DiscusswenzhangzhanshiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( discusswenzhangzhanshi, "discusswenzhangzhanshi")); 
        return R.ok().put("data", discusswenzhangzhanshiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(DiscusswenzhangzhanshiEntity discusswenzhangzhanshi){
        EntityWrapper< DiscusswenzhangzhanshiEntity> ew = new EntityWrapper< DiscusswenzhangzhanshiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( discusswenzhangzhanshi, "discusswenzhangzhanshi")); 
		DiscusswenzhangzhanshiView discusswenzhangzhanshiView =  discusswenzhangzhanshiService.selectView(ew);
		return R.ok("查询文章展示评论表成功").put("data", discusswenzhangzhanshiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        DiscusswenzhangzhanshiEntity discusswenzhangzhanshi = discusswenzhangzhanshiService.selectById(id);
        return R.ok().put("data", discusswenzhangzhanshi);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        DiscusswenzhangzhanshiEntity discusswenzhangzhanshi = discusswenzhangzhanshiService.selectById(id);
        return R.ok().put("data", discusswenzhangzhanshi);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody DiscusswenzhangzhanshiEntity discusswenzhangzhanshi, HttpServletRequest request){
    	discusswenzhangzhanshi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(discusswenzhangzhanshi);

        discusswenzhangzhanshiService.insert(discusswenzhangzhanshi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody DiscusswenzhangzhanshiEntity discusswenzhangzhanshi, HttpServletRequest request){
    	discusswenzhangzhanshi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(discusswenzhangzhanshi);

        discusswenzhangzhanshiService.insert(discusswenzhangzhanshi);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody DiscusswenzhangzhanshiEntity discusswenzhangzhanshi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(discusswenzhangzhanshi);
        discusswenzhangzhanshiService.updateById(discusswenzhangzhanshi);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        discusswenzhangzhanshiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<DiscusswenzhangzhanshiEntity> wrapper = new EntityWrapper<DiscusswenzhangzhanshiEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}


		int count = discusswenzhangzhanshiService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	


}
