package com.wenlong.service.impl;

import com.wenlong.dao.WaiterIFMapper;
import com.wenlong.dao.WaiterInfoMapper;
import com.wenlong.dto.Page;
import com.wenlong.dto.Result;
import com.wenlong.pojo.po.WaiterInfo;
import com.wenlong.pojo.po.WaiterInfoExample;
import com.wenlong.pojo.vo.WaiterInfoSearch;
import com.wenlong.service.WaiterInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class WaiterInfoServiceImpl implements WaiterInfoService {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private WaiterInfoMapper waiterInfoDao;
    @Autowired
    private WaiterIFMapper waiterIFDao;
    @Override
    public Result<WaiterInfo> listWaiterInfoByPage(Page page) {
        Result<WaiterInfo> result = new Result<WaiterInfo>();
        List<WaiterInfo> list = waiterIFDao.selectlistWaiterInfoByPage(page);
        Long count = Long.valueOf(waiterInfoDao.countByExample(null));
        result.setRows(list);
        result.setTotal(count);
        return result;
    }

    @Override
    public WaiterInfo selectWaiterInfoById(Integer waiterId) {
        WaiterInfo waiterInfo = waiterInfoDao.selectByPrimaryKey(waiterId);
        return waiterInfo;
    }

    @Override
    public int deleteWaiterInfoById(List<Integer> waiterIds) {
        int i = 0;
        try {
            WaiterInfo waiterInfo = new WaiterInfo();
            waiterInfo.setWaiterStatus(0);
            //创建模板
            WaiterInfoExample example = new WaiterInfoExample();
            WaiterInfoExample.Criteria criteria = example.createCriteria();
            criteria.andWaiterIdIn(waiterIds);
            //更新操作
            i = waiterInfoDao.updateByExampleSelective(waiterInfo, example);
        } catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage(),e);
        }
        return i;
    }

    @Override
    public Result<WaiterInfo> listUserInfoBySearch(WaiterInfoSearch waiterInfoSearch) {
        Result<WaiterInfo> result = new Result<WaiterInfo>();
        List<WaiterInfo> list = waiterIFDao.selectlistWaiterInfoBySearch(waiterInfoSearch);
        result.setRows(list);
        result.setTotal(Long.valueOf(list.size()));
        return result;
    }

    @Override
    public int waiterInfoModifySave(WaiterInfo waiterInfo) {
        int i = 0;
        try {
            WaiterInfoExample example = new WaiterInfoExample();
            WaiterInfoExample.Criteria criteria = example.createCriteria();
            criteria.andWaiterIdEqualTo(waiterInfo.getWaiterId());
            i = waiterInfoDao.updateByExampleSelective(waiterInfo, example);
        } catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage(),e);
        }
        return i;
    }

    @Override
    public int waiterInfoAddSave(WaiterInfo waiterInfo) {
        int i = 0;
        try {
            i = waiterInfoDao.insertSelective(waiterInfo);
        } catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage(),e);
        }
        return i;
    }
}
