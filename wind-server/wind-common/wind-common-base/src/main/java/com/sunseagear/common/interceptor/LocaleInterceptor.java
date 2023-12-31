package com.sunseagear.common.interceptor;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import java.util.Locale;

/**
 * 国际化的拦截器
 *
 * @version V 1.0
 * @date 2016-12-03
 */
public class LocaleInterceptor implements HandlerInterceptor {

    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object object,
                                Exception exception) throws Exception {

    }

    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object object,
                           ModelAndView modelAndView) throws Exception {

    }

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object object) throws Exception {
        String langType = "zh";
        if (langType.equals("zh")) {
            Locale locale = new Locale("zh", "CN");
            request.getSession().setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME, locale);
        } else if (langType.equals("en")) {
            Locale locale = new Locale("en", "US");
            request.getSession().setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME, locale);
        } else
            request.getSession().setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME,
                    LocaleContextHolder.getLocale());

        return true;
    }

}
