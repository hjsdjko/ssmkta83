package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.YonghuwenzhangDao;
import com.entity.YonghuwenzhangEntity;
import com.service.YonghuwenzhangService;
import com.entity.vo.YonghuwenzhangVO;
import com.entity.view.YonghuwenzhangView;

@Service("yonghuwenzhangService")
public class YonghuwenzhangServiceImpl extends ServiceImpl<YonghuwenzhangDao, YonghuwenzhangEntity> implements YonghuwenzhangService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YonghuwenzhangEntity> page = this.selectPage(
                new Query<YonghuwenzhangEntity>(params).getPage(),
                new EntityWrapper<YonghuwenzhangEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YonghuwenzhangEntity> wrapper) {
		  Page<YonghuwenzhangView> page =new Query<YonghuwenzhangView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YonghuwenzhangVO> selectListVO(Wrapper<YonghuwenzhangEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YonghuwenzhangVO selectVO(Wrapper<YonghuwenzhangEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YonghuwenzhangView> selectListView(Wrapper<YonghuwenzhangEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YonghuwenzhangView selectView(Wrapper<YonghuwenzhangEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
