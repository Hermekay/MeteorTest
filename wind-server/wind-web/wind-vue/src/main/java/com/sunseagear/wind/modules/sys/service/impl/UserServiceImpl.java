package com.sunseagear.wind.modules.sys.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.sunseagear.common.mvc.service.impl.CommonServiceImpl;
import com.sunseagear.common.utils.StringUtils;
import com.sunseagear.wind.modules.sys.entity.User;
import com.sunseagear.wind.modules.sys.entity.UserRole;
import com.sunseagear.wind.modules.sys.mapper.UserMapper;
import com.sunseagear.wind.modules.sys.service.IRoleService;
import com.sunseagear.wind.modules.sys.service.IUserRoleService;
import com.sunseagear.wind.modules.sys.service.IUserService;
import com.sunseagear.wind.utils.UserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.Collection;

@Transactional
@Service("userService")
public class UserServiceImpl extends CommonServiceImpl<UserMapper, User> implements IUserService {
    @Autowired
    PasswordService passwordService;
    @Autowired
    private IUserRoleService userRoleService;
    @Autowired
    private IRoleService roleService;

    @Override
    public void changePassword(Long userId, String newPassword) {
        User user = selectById(userId);
        if (user != null) {
            user.setPassword(passwordService.getPassword(newPassword));
            update(user);
        } else {
            throw new RuntimeException("用戶不存在");
        }
    }

    @Override
    public User findByUsername(String username) {
        if (StringUtils.isEmpty(username)) {
            return null;
        }
        User user = selectOne(new QueryWrapper<User>().eq("username", username));
        if (user == null) {
            return null;
        }
        user.setRoles(roleService.findListByUserId(user.getId()));
        return user;
    }

    @Override
    public User findByEmail(String email) {
        if (StringUtils.isEmpty(email)) {
            return null;
        }
        User user = selectOne(new QueryWrapper<User>().eq("email", email));
        if (user == null) {
            return null;
        }
        user.setRoles(roleService.findListByUserId(user.getId()));
        return user;

    }

    @Override
    public User findByPhone(String phone) {
        if (StringUtils.isEmpty(phone)) {
            return null;
        }
        User user = selectOne(new QueryWrapper<User>().eq("phone", phone));
        if (user == null) {
            return null;
        }
        user.setRoles(roleService.findListByUserId(user.getId()));
        return user;
    }

    @Override
    public boolean deleteById(Serializable id) {
        // 删除角色关联
        userRoleService.delete(new QueryWrapper<UserRole>().eq("user_id", id));
        return super.deleteById(id);
    }

    public boolean deleteBatchIds(Collection<? extends Serializable> idList) {
        for (Serializable id : idList) {
            this.deleteById(id);
        }
        return true;
    }

    @Override
    public Boolean checkPassword(Long userId, String password) {
        User user = selectById(userId);
        if (user == null) {
            return Boolean.FALSE;
        }
        String newPassword = passwordService.getPassword(password);
        if (newPassword.equals(user.getPassword())) {
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @Override
    public boolean insert(User user) {
        //账号重复
        if (selectCount(new QueryWrapper<User>().eq("username", user.getUsername())) > 0) {
            throw new RuntimeException("账号重复");
        }
        passwordService.encryptPassword(user);
        return super.insert(user);
    }

    @Override
    public boolean update(User user) {
        if (selectCount(new QueryWrapper<User>().ne("id", user.getId()).eq("username", user.getUsername())) > 0) {
            throw new RuntimeException("账号重复");
        }
        if (user.getId()==null) {
            UserUtils.update(user.getId());
        }
        return super.update(user);
    }
}
