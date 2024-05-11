package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.WenzhanggaochouEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.WenzhanggaochouVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.WenzhanggaochouView;


/**
 * 文章稿酬
 *
 * @author 
 * @email 
 * @date 2021-05-20 17:28:22
 */
public interface WenzhanggaochouService extends IService<WenzhanggaochouEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<WenzhanggaochouVO> selectListVO(Wrapper<WenzhanggaochouEntity> wrapper);
   	
   	WenzhanggaochouVO selectVO(@Param("ew") Wrapper<WenzhanggaochouEntity> wrapper);
   	
   	List<WenzhanggaochouView> selectListView(Wrapper<WenzhanggaochouEntity> wrapper);
   	
   	WenzhanggaochouView selectView(@Param("ew") Wrapper<WenzhanggaochouEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<WenzhanggaochouEntity> wrapper);
   	
}

