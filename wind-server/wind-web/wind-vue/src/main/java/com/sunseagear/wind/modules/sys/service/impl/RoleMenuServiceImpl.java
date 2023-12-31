package com.sunseagear.wind.modules.sys.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.sunseagear.common.mvc.service.impl.CommonServiceImpl;
import com.sunseagear.common.utils.StringUtils;
import com.sunseagear.wind.modules.sys.entity.Menu;
import com.sunseagear.wind.modules.sys.entity.RoleMenu;
import com.sunseagear.wind.modules.sys.mapper.MenuMapper;
import com.sunseagear.wind.modules.sys.mapper.RoleMenuMapper;
import com.sunseagear.wind.modules.sys.service.IRoleMenuService;
import com.sunseagear.wind.utils.UserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Transactional
@Service("roleMenuService")
public class RoleMenuServiceImpl extends CommonServiceImpl<RoleMenuMapper, RoleMenu> implements IRoleMenuService {

    @Autowired
    private MenuMapper menuMapper;

    @Override
    public void setMenu(Long roleId, String menuIds) {
        menuMapper.deleteRoleMenu(roleId);
        setRoleMenu(roleId, menuIds, Menu.MENU);
    }

    private void setRoleMenu(Long roleId, String menuIds, String type) {
        if (!StringUtils.isEmpty(menuIds)) {
            List<Menu> menuListAll = menuMapper.selectList(new QueryWrapper());
            HashMap<String, Menu> menuHashMapAll = new HashMap<>();
            menuListAll.forEach(menu -> {
                menuHashMapAll.put(menu.getId().toString(), menu);
            });

            String[] selectMenus = menuIds.split(",");
            List<RoleMenu> roleMenuList = new ArrayList<>();
            for (String menuId : selectMenus) {
                Menu menu = menuHashMapAll.get(menuId);
                if (!menu.getType().equals(type)) {
                    continue;
                }
                RoleMenu roleMenu = new RoleMenu();
                roleMenu.setRoleId(roleId);
                roleMenu.setMenuId(menuId);
                roleMenuList.add(roleMenu);
            }
            insertBatch(roleMenuList);
            UserUtils.clearPermissionCache(roleId);
        }
    }

    @Override
    public void setPermission(Long roleId, String menuIds) {
        menuMapper.deleteRolePermission(roleId);
        setRoleMenu(roleId, menuIds, Menu.BUTTON);
    }

    @Override
    public void insert(Long roleId, String menuId) {
        QueryWrapper<RoleMenu> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("menu_id", menuId);
        queryWrapper.eq("role_id", roleId);
        long count = selectCount(queryWrapper);
        if (count == 0) {
            RoleMenu roleMenu = new RoleMenu();
            roleMenu.setMenuId(menuId);
            roleMenu.setRoleId(roleId);
            insert(roleMenu);
        }
    }
}
