package trust.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import trust.pojo.Article;
import trust.service.ArticleService;
import trust.util.ControllerTool;
import trust.util.StringTool;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class ArticleController {

    @Autowired
    ArticleService articleService;

    @RequestMapping(value = "article.html/{id}",method = RequestMethod.GET)
    public String article(Model model, @PathVariable String id, HttpServletRequest httpRequest){
        Integer integer=StringTool.toInteger(id);
        if(integer==null){
            return ControllerTool.abnormal_404(httpRequest);
        }
        List<Article> articles= (List<Article>) articleService.getList(new Article(integer,null,null,null,null,null));

        if(articles.size()<1){
    return ControllerTool.abnormal_404(httpRequest);
        }
        Article a=articles.get(0);
        model.addAttribute("article",a);
        return "mobile/article";
    }
}
