package trust.interceptor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import trust.controller.DataHandle;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @program: Trust
 * @description: 加载
 * @author: xiaofei
 * @create: 2018-08-27 16:56
 **/
public class LoaderInterceptor implements HandlerInterceptor {

    @Autowired
    DataHandle data;

    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        HttpSession session=httpServletRequest.getSession();
        if (session.getAttribute("top") == null || session.getAttribute("down") == null) {
            data.initRoll(session);
        }
        if (session.getAttribute("illness") == null) {
            data.initIllness(session);
        }
        if (session.getAttribute("news") == null) {
            data.initDynamic(session, "news");
        }
        if (session.getAttribute("therapy") == null) {
            data.initDynamic(session, "therapy");
        }
        if (session.getAttribute("team") == null) {
            data.initTeam(session);
        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
