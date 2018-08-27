package trust.controller;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import trust.pojo.Article;
import trust.pojo.Dynamic;
import trust.pojo.Illness;
import trust.pojo.entity.DynamicEntity;
import trust.pojo.entity.IllnessEntity;
import trust.pojo.entity.Page;
import trust.service.ArticleService;
import trust.service.DynamicService;
import trust.service.IllnessService;
import trust.util.ControllerTool;
import trust.util.HTMLTool;
import trust.util.StringTool;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class CatalogController {

    @Autowired
    ArticleService articleService;

    @Autowired
    IllnessService illnessService;

    @Autowired
    DynamicService dynamicService;

/**
     * 目录
     * @param model
     * @param type
     * @param id
     * @return
     */
    @RequestMapping(value = "catalog.html/{type}/{id}", method = RequestMethod.GET)
    public String catalog(@PathVariable String type,@PathVariable String id, Model model,HttpServletRequest httpRequest) {
        return catalog(model,type,id,1+"",httpRequest);
    }

    /**
     * 目录
     * @param model
     * @param type
     * @param id
     * @param page
     * @return
     */
    @RequestMapping(value = "catalog.html/{type}/{id}/{page}", method = RequestMethod.GET)
    public String catalog(Model model, @PathVariable String type, @PathVariable String id, @PathVariable String page, HttpServletRequest httpRequest) {
        Integer pageint = StringTool.toInteger(page);
        Integer idint = StringTool.toInteger(id);
        if ( pageint == null  || pageint<1) {
            return ControllerTool.abnormal_404(httpRequest);
        }
        if(idint==0){
            idint=null;
        }
        Page<Article> articlePage = articleService.getPageList(new Article(null, null, null, null, type, idint), new RowBounds(pageint, 3));
        if (articlePage.getCount() == 0 || articlePage.getCount()<1) {
            return ControllerTool.abnormal_404(httpRequest);
        }
        for (Article article:articlePage.getPojos()){
            article.setContent(HTMLTool.getTextFromHtml(article.getContent()));
        }
        if("illness".equals(type)) {
            try {
                illness(idint,model);
            } catch (Exception e) {
                return "mobile/404";
            }
        }
        model.addAttribute("catalog", articlePage);
        return "mobile/"+type;
    }

    /**
     * 点病类进来
     * @param model
     * @param id
     * @return
     */
    @RequestMapping(value = "class.html/{id}", method = RequestMethod.GET)
    public String clas(Model model,@PathVariable String id){
        Integer idint = StringTool.toInteger(id);
        if ( idint<1) {
            return "mobile/404";
        }
        List<Illness> illnesses= (List<Illness>) illnessService.getList(new Illness(idint,null,null,null));
        if(illnesses.size()<1){
            return "mobile/404";
        }
        IllnessEntity illnessEntity=new IllnessEntity(illnesses.get(0));
        illnessEntity.setIllnesses((List<Illness>) illnessService.getList(new Illness(null,null,idint,null)));
        model.addAttribute("clas",illnessEntity);

        IllnessEntity illnessEntity1=new IllnessEntity(illnessEntity);
        if(illnessEntity.getIllnesses().size()>3){
            illnessEntity1.setIllnesses((List<Illness>) illnessService.getSectionList(new Illness(null,null,idint,null),new RowBounds(1,3)));
        }else{
            illnessEntity1.setIllnesses(illnessEntity.getIllnesses());
        }
        List<IllnessEntity> ies=new ArrayList<>();
        for (Illness i:illnessEntity1.getIllnesses()){
            IllnessEntity ie=new IllnessEntity(i);
            ie.setArticles((List<? extends Article>) articleService.getSectionList(new Article(null,null,null,null,"illness",i.getId()),new RowBounds(1,3)));
            ies.add(ie);
        }
        illnessEntity1.setIllnesses(ies);
        model.addAttribute("page",illnessEntity1);
    return "mobile/class";
}

    @RequestMapping(value = "dynamic.html/{type}/{page}", method = RequestMethod.GET)
public String dynamic(@PathVariable String type,String page,Model model){
        Integer pageint = StringTool.toInteger(page);
        if ( pageint == null ||  pageint<1) {
            return "mobile/404";
        }
        Page<Dynamic> pageList =  dynamicService.getPageList(new Dynamic(null,null,type),new RowBounds(pageint,3));
        if(pageList.getPojos().size()<1){
            return "mobile/404";
        }
        List<DynamicEntity> dynamicEntities=new ArrayList<>();
        for (Dynamic d: pageList.getPojos()){
            DynamicEntity de=new DynamicEntity(d);
            Article article=(Article) articleService.getPojo(new Article(null,null,null,null,"dynamic",d.getId()));
            article.setContent(HTMLTool.getTextFromHtml(article.getContent()));
            de.setArticle(article);
            dynamicEntities.add(de);
        }
        pageList.setPojos(dynamicEntities);
        model.addAttribute("dynamic",pageList);
    return "mobile/dynamic";
}

    /**
     * 动态
     * @param type
     * @param model
     * @return
     */
    @RequestMapping(value = "dynamic.html/{type}",method = RequestMethod.GET)
public String dynamic(@PathVariable String type,Model model){
return dynamic(type,1+"",model);
}

    /**
     * 执行病种的目录
     * @param idint
     * @param model
     * @throws Exception
     */
 private void  illness(Integer idint,Model model) throws Exception {

        Illness s= (Illness) illnessService.getPojo(new Illness(idint,null,null,null));
        if(s==null){
            throw new RuntimeException();
        }
        Illness p= (Illness) illnessService.getPojo(new Illness(s.getParentId(),null,null,null));
        if(p==null){
            throw new RuntimeException();
        }
        model.addAttribute("node",new Illness[]{p,s});
}
}
