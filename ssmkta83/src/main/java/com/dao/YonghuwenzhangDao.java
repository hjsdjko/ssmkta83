package com.dao;

import com.entity.YonghuwenzhangEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YonghuwenzhangVO;
import com.entity.view.YonghuwenzhangView;


/**
 * 用户文章
 * 
 * @author 
 * @email 
 * @date 2021-05-20 17:28:22
 */
public interface YonghuwenzhangDao extends BaseMapper<YonghuwenzhangEntity> {
	
	List<YonghuwenzhangVO> selectListVO(@Param("ew") Wrapper<YonghuwenzhangEntity> wrapper);
	
	YonghuwenzhangVO selectVO(@Param("ew") Wrapper<YonghuwenzhangEntity> wrapper);
	
	List<YonghuwenzhangView> selectListView(@Param("ew") Wrapper<YonghuwenzhangEntity> wrapper);

	List<YonghuwenzhangView> selectListView(Pagination page,@Param("ew") Wrapper<YonghuwenzhangEntity> wrapper);
	
	YonghuwenzhangView selectView(@Param("ew") Wrapper<YonghuwenzhangEntity> wrapper);
	
}
