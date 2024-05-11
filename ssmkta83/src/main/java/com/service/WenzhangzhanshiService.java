package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.WenzhangzhanshiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.WenzhangzhanshiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.WenzhangzhanshiView;


/**
 * 文章展示
 *
 * @author 
 * @email 
 * @date 2021-05-20 17:28:22
 */
public interface WenzhangzhanshiService extends IService<WenzhangzhanshiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<WenzhangzhanshiVO> selectListVO(Wrapper<WenzhangzhanshiEntity> wrapper);
   	
   	WenzhangzhanshiVO selectVO(@Param("ew") Wrapper<WenzhangzhanshiEntity> wrapper);
   	
   	List<WenzhangzhanshiView> selectListView(Wrapper<WenzhangzhanshiEntity> wrapper);
   	
   	WenzhangzhanshiView selectView(@Param("ew") Wrapper<WenzhangzhanshiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<WenzhangzhanshiEntity> wrapper);
   	
}

