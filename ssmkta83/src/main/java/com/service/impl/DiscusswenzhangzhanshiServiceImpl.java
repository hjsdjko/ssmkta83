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


import com.dao.DiscusswenzhangzhanshiDao;
import com.entity.DiscusswenzhangzhanshiEntity;
import com.service.DiscusswenzhangzhanshiService;
import com.entity.vo.DiscusswenzhangzhanshiVO;
import com.entity.view.DiscusswenzhangzhanshiView;

@Service("discusswenzhangzhanshiService")
public class DiscusswenzhangzhanshiServiceImpl extends ServiceImpl<DiscusswenzhangzhanshiDao, DiscusswenzhangzhanshiEntity> implements DiscusswenzhangzhanshiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscusswenzhangzhanshiEntity> page = this.selectPage(
                new Query<DiscusswenzhangzhanshiEntity>(params).getPage(),
                new EntityWrapper<DiscusswenzhangzhanshiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscusswenzhangzhanshiEntity> wrapper) {
		  Page<DiscusswenzhangzhanshiView> page =new Query<DiscusswenzhangzhanshiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscusswenzhangzhanshiVO> selectListVO(Wrapper<DiscusswenzhangzhanshiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscusswenzhangzhanshiVO selectVO(Wrapper<DiscusswenzhangzhanshiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscusswenzhangzhanshiView> selectListView(Wrapper<DiscusswenzhangzhanshiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscusswenzhangzhanshiView selectView(Wrapper<DiscusswenzhangzhanshiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
