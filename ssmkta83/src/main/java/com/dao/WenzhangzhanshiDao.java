package com.dao;

import com.entity.WenzhangzhanshiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.WenzhangzhanshiVO;
import com.entity.view.WenzhangzhanshiView;


/**
 * 文章展示
 * 
 * @author 
 * @email 
 * @date 2021-05-20 17:28:22
 */
public interface WenzhangzhanshiDao extends BaseMapper<WenzhangzhanshiEntity> {
	
	List<WenzhangzhanshiVO> selectListVO(@Param("ew") Wrapper<WenzhangzhanshiEntity> wrapper);
	
	WenzhangzhanshiVO selectVO(@Param("ew") Wrapper<WenzhangzhanshiEntity> wrapper);
	
	List<WenzhangzhanshiView> selectListView(@Param("ew") Wrapper<WenzhangzhanshiEntity> wrapper);

	List<WenzhangzhanshiView> selectListView(Pagination page,@Param("ew") Wrapper<WenzhangzhanshiEntity> wrapper);
	
	WenzhangzhanshiView selectView(@Param("ew") Wrapper<WenzhangzhanshiEntity> wrapper);
	
}
