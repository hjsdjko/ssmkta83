package com.dao;

import com.entity.WenzhanggaochouEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.WenzhanggaochouVO;
import com.entity.view.WenzhanggaochouView;


/**
 * 文章稿酬
 * 
 * @author 
 * @email 
 * @date 2021-05-20 17:28:22
 */
public interface WenzhanggaochouDao extends BaseMapper<WenzhanggaochouEntity> {
	
	List<WenzhanggaochouVO> selectListVO(@Param("ew") Wrapper<WenzhanggaochouEntity> wrapper);
	
	WenzhanggaochouVO selectVO(@Param("ew") Wrapper<WenzhanggaochouEntity> wrapper);
	
	List<WenzhanggaochouView> selectListView(@Param("ew") Wrapper<WenzhanggaochouEntity> wrapper);

	List<WenzhanggaochouView> selectListView(Pagination page,@Param("ew") Wrapper<WenzhanggaochouEntity> wrapper);
	
	WenzhanggaochouView selectView(@Param("ew") Wrapper<WenzhanggaochouEntity> wrapper);
	
}
