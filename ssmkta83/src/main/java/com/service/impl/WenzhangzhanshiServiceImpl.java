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


import com.dao.WenzhangzhanshiDao;
import com.entity.WenzhangzhanshiEntity;
import com.service.WenzhangzhanshiService;
import com.entity.vo.WenzhangzhanshiVO;
import com.entity.view.WenzhangzhanshiView;

@Service("wenzhangzhanshiService")
public class WenzhangzhanshiServiceImpl extends ServiceImpl<WenzhangzhanshiDao, WenzhangzhanshiEntity> implements WenzhangzhanshiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<WenzhangzhanshiEntity> page = this.selectPage(
                new Query<WenzhangzhanshiEntity>(params).getPage(),
                new EntityWrapper<WenzhangzhanshiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<WenzhangzhanshiEntity> wrapper) {
		  Page<WenzhangzhanshiView> page =new Query<WenzhangzhanshiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<WenzhangzhanshiVO> selectListVO(Wrapper<WenzhangzhanshiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public WenzhangzhanshiVO selectVO(Wrapper<WenzhangzhanshiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<WenzhangzhanshiView> selectListView(Wrapper<WenzhangzhanshiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public WenzhangzhanshiView selectView(Wrapper<WenzhangzhanshiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
