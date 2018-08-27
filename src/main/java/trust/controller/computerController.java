package trust.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @program: Trust
 * @description: pc
 * @author: xiaofei
 * @create: 2018-08-26 14:27
 **/
@Controller
@RequestMapping(value = "pc")
public class computerController {

    @RequestMapping(value = "{url}.html")
    public String pc(@PathVariable String url){
        return "computer/"+url;
    }
}
