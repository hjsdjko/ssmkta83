package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YonghuwenzhangEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YonghuwenzhangVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YonghuwenzhangView;


/**
 * 用户文章
 *
 * @author 
 * @email 
 * @date 2021-05-20 17:28:22
 */
public interface YonghuwenzhangService extends IService<YonghuwenzhangEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YonghuwenzhangVO> selectListVO(Wrapper<YonghuwenzhangEntity> wrapper);
   	
   	YonghuwenzhangVO selectVO(@Param("ew") Wrapper<YonghuwenzhangEntity> wrapper);
   	
   	List<YonghuwenzhangView> selectListView(Wrapper<YonghuwenzhangEntity> wrapper);
   	
   	YonghuwenzhangView selectView(@Param("ew") Wrapper<YonghuwenzhangEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YonghuwenzhangEntity> wrapper);
   	
}

