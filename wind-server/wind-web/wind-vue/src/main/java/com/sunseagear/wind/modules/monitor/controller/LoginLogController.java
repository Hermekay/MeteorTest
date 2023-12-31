package com.sunseagear.wind.modules.monitor.controller;

import cn.afterturn.easypoi.excel.ExcelExportUtil;
import cn.afterturn.easypoi.excel.entity.ExportParams;
import cn.afterturn.easypoi.excel.entity.TemplateExportParams;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.sunseagear.common.http.Response;
import com.sunseagear.common.mvc.controller.BaseBeanController;
import com.sunseagear.common.utils.DateUtils;
import com.sunseagear.common.utils.StringUtils;
import com.sunseagear.wind.aspectj.annotation.Log;
import com.sunseagear.wind.aspectj.enums.LogType;
import com.sunseagear.wind.common.response.ResponseError;
import com.sunseagear.wind.modules.monitor.entity.LoginLog;
import com.sunseagear.wind.modules.monitor.service.ILoginLogService;
import jakarta.servlet.http.HttpServletRequest;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;


/**
 * All rights Reserved, Designed By www.sunseagear.com
 *
 * @version V1.0
 * @package com.sunseagear.wind.modules.sys.controller
 * @title: 登陆日志控制器
 * @description: 登陆日志控制器
 * @author: sys * @date: 2018-09-28 11:35:45
 * @copyright: 2018 www.sunseagear.com Inc. All rights reserved.
 */

@RestController
@RequestMapping("monitor/login/log")
@PreAuthorize("hasAuthority('monitor:login:log')")
@Log(title = "登陆日志")
public class LoginLogController extends BaseBeanController<LoginLog> {

    @Autowired
    private ILoginLogService loginLogService;


    /**
     * 根据页码和每页记录数，以及查询条件动态加载数据
     *
     * @param request
     * @throws IOException
     */
    @GetMapping(value = "list")
    @Log(logType = LogType.SELECT)
    @PreAuthorize("hasAuthority('monitor:login:log:list')")
    public String list(HttpServletRequest request) throws IOException {
        //加入条件
        QueryWrapper<LoginLog> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByDesc("login_time");
        String status = request.getParameter("status");
        if (!StringUtils.isEmpty(status)) {
            queryWrapper.eq("status", status);
        }

        // 预处理
        Page pageBean = loginLogService.selectPage(getPage(), queryWrapper);
        return Response.successPageJson(pageBean);
    }

    @PostMapping("delete")
    @PreAuthorize("hasAuthority('monitor:login:log:delete')")
    public String batchDelete(@RequestParam("ids") Long[] ids) {
        List<Serializable> idList = java.util.Arrays.asList(ids);
        loginLogService.deleteBatchIds(idList);
        return Response.ok("删除成功");
    }

    @GetMapping("export")
    @Log(logType = LogType.EXPORT)
    @PreAuthorize("hasAuthority('monitor:login:log:export')")
    public String export(HttpServletRequest request) {
        HashMap<String, Object> response = new HashMap<>();
        try {
            TemplateExportParams params = new TemplateExportParams(
                    "");
            //加入条件
            QueryWrapper<LoginLog> queryWrapper = new QueryWrapper<>();
            queryWrapper.orderByDesc("login_time");
            Page pageBean = loginLogService.selectPage(getPage(), queryWrapper);
            String title = "登陆日志";
            Workbook book = ExcelExportUtil.exportExcel(new ExportParams(
                    title, title, title), LoginLog.class, pageBean.getRecords());
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            book.write(bos);
            byte[] bytes = bos.toByteArray();
            String bytesRes = StringUtils.bytesToHexString2(bytes);
            title = title + "-" + DateUtils.getDateTime();
            response.put("bytes", bytesRes);
            response.put("title", title);
        } catch (Exception e) {
            e.printStackTrace();
            return Response.error(ResponseError.NORMAL_ERROR, "导出失败");
        }
        return Response.toJson(response, "导出成功");
    }
}
