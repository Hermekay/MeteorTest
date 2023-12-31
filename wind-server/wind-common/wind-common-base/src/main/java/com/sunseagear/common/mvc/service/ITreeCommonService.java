package com.sunseagear.common.mvc.service;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.sunseagear.common.mvc.entity.TreeEntity;

import java.io.Serializable;
import java.util.List;

public interface ITreeCommonService<T extends TreeEntity<ID>, ID extends Serializable>
        extends ICommonService<T> {
    public List<T> selectTreeList(Wrapper<T> wrapper);

}
