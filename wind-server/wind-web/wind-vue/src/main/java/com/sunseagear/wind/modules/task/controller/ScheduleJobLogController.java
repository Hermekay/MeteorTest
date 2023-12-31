package com.sunseagear.wind.modules.task.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.sunseagear.common.http.Response;
import com.sunseagear.common.mvc.controller.BaseBeanController;
import com.sunseagear.common.utils.StringUtils;
import com.sunseagear.wind.aspectj.annotation.Log;
import com.sunseagear.wind.aspectj.enums.LogType;
import com.sunseagear.wind.modules.task.entity.ScheduleJobLog;
import com.sunseagear.wind.modules.task.service.IScheduleJobLogService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.io.Serializable;
import java.util.List;


/**
 * All rights Reserved, Designed By www.sunseagear.com
 *
 * @version V1.0
 * @package com.sunseagear.wind.modules.task.controller
 * @title: 任务日志控制器
 * @description: 任务日志控制器 * @date: 2018-09-17 14:25:19
 * @copyright: 2018 www.sunseagear.com Inc. All rights reserved.
 */

@RestController
@RequestMapping("/task/schedule/job/log")
@PreAuthorize("hasAuthority('task:schedule:joblog')")
@Log(title = "计划任务日志")
public class ScheduleJobLogController extends BaseBeanController<ScheduleJobLog> {

    @Autowired
    private IScheduleJobLogService scheduleJobLogService;

    @GetMapping(value = "list")
    @Log(logType = LogType.SELECT)
    @PreAuthorize("hasAuthority('task:schedule:joblog:list')")
    public String list(HttpServletRequest request) throws IOException {
        //加入条件
        QueryWrapper<ScheduleJobLog> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByDesc("create_time");
        String jobName = request.getParameter("jobName");
        if (!StringUtils.isEmpty(jobName)) {
            queryWrapper.like("job_name", jobName);
        }
        String executeClass = request.getParameter("executeClass");
        if (!StringUtils.isEmpty(executeClass)) {
            queryWrapper.eq("execute_class", executeClass);
        }
        String status = request.getParameter("status");
        if (!StringUtils.isEmpty(status)) {
            queryWrapper.eq("status", status);
        }
        // 预处理
        Page pageBean = scheduleJobLogService.selectPage(getPage(), queryWrapper);
        return Response.successPageJson(pageBean);
    }

    @PostMapping("delete")
    @Log(logType = LogType.DELETE)
    @PreAuthorize("hasAuthority('task:schedule:joblog:delete')")
    public String batchDelete(@RequestParam("ids") Long[] ids) {
        List<Serializable> idList = java.util.Arrays.asList(ids);
        scheduleJobLogService.deleteBatchIds(idList);
        return Response.ok("删除成功");
    }
}
