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


import com.dao.WenzhanggaochouDao;
import com.entity.WenzhanggaochouEntity;
import com.service.WenzhanggaochouService;
import com.entity.vo.WenzhanggaochouVO;
import com.entity.view.WenzhanggaochouView;

@Service("wenzhanggaochouService")
public class WenzhanggaochouServiceImpl extends ServiceImpl<WenzhanggaochouDao, WenzhanggaochouEntity> implements WenzhanggaochouService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<WenzhanggaochouEntity> page = this.selectPage(
                new Query<WenzhanggaochouEntity>(params).getPage(),
                new EntityWrapper<WenzhanggaochouEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<WenzhanggaochouEntity> wrapper) {
		  Page<WenzhanggaochouView> page =new Query<WenzhanggaochouView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<WenzhanggaochouVO> selectListVO(Wrapper<WenzhanggaochouEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public WenzhanggaochouVO selectVO(Wrapper<WenzhanggaochouEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<WenzhanggaochouView> selectListView(Wrapper<WenzhanggaochouEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public WenzhanggaochouView selectView(Wrapper<WenzhanggaochouEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
