package trust.util;

import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;

/**
 * @program: Trust
 * @description: 控制器工具
 * @author: xiaofei
 * @create: 2018-08-23 17:02
 **/
public class ControllerTool {

    public static String abnormal_404(HttpServletRequest httpRequest){
        return "mobile/404";
    }
    public static String abnormal_error(Model model,String message){
        model.addAttribute("message",message);
        return "mobile/error";
    }

}
