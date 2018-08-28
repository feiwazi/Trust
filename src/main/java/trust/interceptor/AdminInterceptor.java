package trust.interceptor;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import trust.pojo.Admin;
import trust.service.AdminService;
import trust.util.ImageTool;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.List;

/**
 * @program: Trust
 * @description: 拦截管理员
 * @author: xiaofei
 * @create: 2018-08-23 15:11
 **/
public class AdminInterceptor implements HandlerInterceptor {

    @Autowired
    AdminService adminService;


    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        String path = httpServletRequest.getServletPath();
        if (path.indexOf(".html") !=-1) {
            if (path.indexOf("/admin") == 0) {
                if (!"/admin/login.html".equals(path)) {
                    BufferedImage bi = (BufferedImage) httpServletRequest.getSession().getAttribute("admin");
                    if (bi == null) {
                        return fail(httpServletResponse);
                    }
                    if (bi.getWidth() != 8 || bi.getHeight() != 2) {
                        return fail(httpServletResponse);
                    }
                    String key = null, password = null;
                    try {
                        key = new String(DigestUtils.sha1(ImageTool.decom(0, bi)));
                        password = new String(DigestUtils.sha1(ImageTool.decom(1, bi)));
                    } catch (Exception e) {
                        return fail(httpServletResponse);
                    }
                    List<Admin> admins = (List<Admin>) adminService.getList(new Admin(null, key, password));
                    if (admins == null || admins.size() != 1) {
                        return fail(httpServletResponse);
                    }
                }
            }
        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }

    public boolean fail(HttpServletResponse httpServletResponse) throws IOException {
        httpServletResponse.sendRedirect("/admin/login.html");
        return false;
    }

}
