package com.sunseagear.wind.config;

import com.sunseagear.common.http.Response;
import com.sunseagear.common.utils.ExceptionUtils;
import com.sunseagear.wind.common.response.ResponseError;
import io.jsonwebtoken.ExpiredJwtException;
import jakarta.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * All rights Reserved, Designed By www.sunseagear.com
 *
 * @version V1.0
 * @package cn.gzst.gov.cloud.gateway.config
 * @title:
 * @description:自定义错误处理 * @date: 2018/3/12 16:43
 * @copyright: 2017 www.sunseagear.com Inc. All rights reserved.
 */
@RestControllerAdvice
public class ExceptionConfig {

    protected Logger logger = LoggerFactory.getLogger(getClass());

    /**
     * 捕捉shiro的异常
     *
     * @param ex
     * @return
     */
    @ResponseStatus(HttpStatus.UNAUTHORIZED)
    @ExceptionHandler(ExpiredJwtException.class)
    public Object handle401(ExpiredJwtException ex) {
        return Response.error(ResponseError.EXPIRED_ACCESS_TOKEN, ex.getMessage());
    }

    /**
     * 捕捉UnauthorizedException
     *
     * @return
     */
    //@ResponseStatus(HttpStatus.UNAUTHORIZED)
    //@ExceptionHandler(UnauthorizedException.class)
    public Object handle401() {
        return Response.error(401, "Unauthorized");
    }

    /**
     * 捕捉其他所有异常
     *
     * @param request
     * @param ex
     * @return
     */
    @ExceptionHandler(Exception.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public Object globalException(HttpServletRequest request, Throwable ex) {
        logger.error(ExceptionUtils.getStackTraceAsString(ex));
        return Response.error(getStatus(request).value(), ex.getMessage());
    }

    private HttpStatus getStatus(HttpServletRequest request) {
        Integer statusCode = (Integer) request.getAttribute("jakarta.servlet.error.status_code");
        if (statusCode == null) {
            return HttpStatus.INTERNAL_SERVER_ERROR;
        }
        return HttpStatus.valueOf(statusCode);
    }
}
