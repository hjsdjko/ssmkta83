package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscusswenzhangzhanshiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscusswenzhangzhanshiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscusswenzhangzhanshiView;


/**
 * 文章展示评论表
 *
 * @author 
 * @email 
 * @date 2021-05-20 17:28:22
 */
public interface DiscusswenzhangzhanshiService extends IService<DiscusswenzhangzhanshiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscusswenzhangzhanshiVO> selectListVO(Wrapper<DiscusswenzhangzhanshiEntity> wrapper);
   	
   	DiscusswenzhangzhanshiVO selectVO(@Param("ew") Wrapper<DiscusswenzhangzhanshiEntity> wrapper);
   	
   	List<DiscusswenzhangzhanshiView> selectListView(Wrapper<DiscusswenzhangzhanshiEntity> wrapper);
   	
   	DiscusswenzhangzhanshiView selectView(@Param("ew") Wrapper<DiscusswenzhangzhanshiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscusswenzhangzhanshiEntity> wrapper);
   	
}

