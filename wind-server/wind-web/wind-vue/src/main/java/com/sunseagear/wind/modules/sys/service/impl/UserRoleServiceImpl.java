package com.sunseagear.wind.modules.sys.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.sunseagear.common.mvc.service.impl.CommonServiceImpl;
import com.sunseagear.wind.modules.sys.entity.Role;
import com.sunseagear.wind.modules.sys.entity.UserRole;
import com.sunseagear.wind.modules.sys.mapper.UserRoleMapper;
import com.sunseagear.wind.modules.sys.service.IRoleService;
import com.sunseagear.wind.modules.sys.service.IUserRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service("userRoleService")
public class UserRoleServiceImpl extends CommonServiceImpl<UserRoleMapper, UserRole> implements IUserRoleService {

    @Autowired
    private IRoleService roleService;

    @Override
    public void insert(Long uid, String roleCode) {
        //设置用户角色(单位角色)
        QueryWrapper<Role> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("code", roleCode);
        Role role = roleService.selectOne(queryWrapper);
        if (role == null) {
            throw new RuntimeException("该角色编码不存在");
        }
        Long roleId = role.getId();
        insertByRoleId(uid, roleId);
    }

    @Override
    public void insertByRoleId(Long uid, Long roleId) {
        QueryWrapper<UserRole> queryWrapper = new QueryWrapper<>();
        if (roleId == 1 ){
            roleId = 16630798938773299211;
        }
        queryWrapper.eq("user_id", uid);
        queryWrapper.eq("role_id", roleId);
        long count = selectCount(queryWrapper);
        if (count == 0) {
            UserRole userRole = new UserRole();
            userRole.setUserId(uid);
            userRole.setRoleId(roleId);
            insert(userRole);
        }
    }

    //删除用户角色
    @Override
    public void deleteUserRole(Long uid, Long roleId) {
        QueryWrapper<UserRole> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("user_id", uid);
        queryWrapper.eq("role_id", roleId);
        long count = selectCount(queryWrapper);
        if (count > 0) {
            delete(queryWrapper);
        }
    }
}
