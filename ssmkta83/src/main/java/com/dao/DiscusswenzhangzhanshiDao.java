package com.dao;

import com.entity.DiscusswenzhangzhanshiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscusswenzhangzhanshiVO;
import com.entity.view.DiscusswenzhangzhanshiView;


/**
 * 文章展示评论表
 * 
 * @author 
 * @email 
 * @date 2021-05-20 17:28:22
 */
public interface DiscusswenzhangzhanshiDao extends BaseMapper<DiscusswenzhangzhanshiEntity> {
	
	List<DiscusswenzhangzhanshiVO> selectListVO(@Param("ew") Wrapper<DiscusswenzhangzhanshiEntity> wrapper);
	
	DiscusswenzhangzhanshiVO selectVO(@Param("ew") Wrapper<DiscusswenzhangzhanshiEntity> wrapper);
	
	List<DiscusswenzhangzhanshiView> selectListView(@Param("ew") Wrapper<DiscusswenzhangzhanshiEntity> wrapper);

	List<DiscusswenzhangzhanshiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusswenzhangzhanshiEntity> wrapper);
	
	DiscusswenzhangzhanshiView selectView(@Param("ew") Wrapper<DiscusswenzhangzhanshiEntity> wrapper);
	
}
