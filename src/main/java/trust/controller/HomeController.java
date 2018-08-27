package trust.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

/**
 * 首页
 *
 * @author women
 */
@Controller
public class HomeController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(HttpSession session) {
        return "mobile/index";
    }
    @RequestMapping(value = "chat.html", method = RequestMethod.GET)
    public String chat(){
    return "mobile/chat";
    }

}