package trust.controller;

import org.apache.ibatis.session.RowBounds;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import trust.pojo.*;
import trust.pojo.entity.DynamicEntity;
import trust.pojo.entity.IllnessEntity;
import trust.pojo.entity.TeamEntity;
import trust.service.*;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

@Component
public class DataHandle {

    @Autowired
    RollService rollService;

    @Autowired
    IllnessService illnessService;

    @Autowired
    ArticleService articleService;

    @Autowired
    TeamService teamService;

    @Autowired
    DynamicService dynamicService;

    public void initRoll(HttpSession session) {
        if(isNoSessionExist(session,"top") || isNoSessionExist(session,"down")){
        List<Roll> top = new ArrayList<>();
        List<Roll> down = new ArrayList<>();
        for (BasePojo roll : rollService.getAllList()) {
            Roll r = (Roll) roll;
            if (r.getText() == null) {
                top.add(r);
            } else {
                down.add(r);
            }
        }
        session.setAttribute("top", top);
        session.setAttribute("down", down);
        }
    }


    public void initIllness(HttpSession session) {
    if(isNoSessionExist(session,"illness")){
        List<Illness> parent = (List<Illness>) illnessService.getList(new Illness(null, null, 0, null));
        List<IllnessEntity> illnessEntities = new ArrayList<>();
        for (Illness i : parent) {
            IllnessEntity entities = new IllnessEntity(i);
            entities.setIllnesses((List<Illness>) illnessService.getSectionList(new Illness(null,null,i.getId(),null),new RowBounds(0,5)));
            illnessEntities.add(entities);
        }
        session.setAttribute("illness",illnessEntities);
    }
    }

    public void initDynamic(HttpSession session,String name){
        if(isNoSessionExist(session,name)) {
            Dynamic dynamic = new Dynamic(null, null, name);
            int count = dynamicService.getCount(dynamic);
            int b = count > 3 ? new Random().nextInt(count - 2) : 0;
            List<Dynamic> dynamicList = (List<Dynamic>) dynamicService.getSectionList(dynamic, new RowBounds(b, 2));
            List<DynamicEntity> dynamicEntities = new ArrayList<>();
            for (Dynamic dynamicEntity : dynamicList) {
                DynamicEntity temp = new DynamicEntity(dynamicEntity);
                List<Article> articles = (List<Article>) articleService.getList(new Article(null, null, null, null, "dynamic", dynamicEntity.getId()));
                if (articles.size() > 0) {
                    temp.setArticle(articles.get(0));
                } else {
                    return;
                }
                Document d = Jsoup.parse(temp.getArticle().getContent());
                Elements elements= d.select("img");
                if(elements.size()>0){
                    String image=elements.get(0).attr("src");
                    temp.setImage(image.split("images")[1]);
                }
                dynamicEntities.add(temp);
            }
            session.setAttribute(name, dynamicEntities);
        }
    }

    public void initTeam(HttpSession session){
        if(isNoSessionExist(session,"team")) {
            Team team = new Team();
            int count = teamService.getCount(team);
            int b = count > 3 ? new Random().nextInt(count - 2) : 0;
            List<Team> teamList = (List<Team>) teamService.getSectionList(team, new RowBounds(b, 3));
            List<TeamEntity> teamEntities =new ArrayList<>();
            for (Team team1 : teamList) {
                TeamEntity te=new TeamEntity(team1);
                te.setArticle((Article) articleService.getPojo(new Article(null,null,null,null,"team",te.getId())));
                teamEntities.add(te);
            }
             session.setAttribute("team", teamEntities);
        }
    }

    private boolean isNoSessionExist(HttpSession session,String name){
        return session.getAttribute(name)==null;
    }


    public void full(){
        List<Illness> i= (List<Illness>) illnessService.getList(new Illness(null,null,0,null));
        for (Illness ill: i){
            List<Illness> temp= (List<Illness>) illnessService.getList(new Illness(null,null,ill.getId(),null));
            for (Illness ills:temp){
                Random r=new Random();
                articleService.add(new Article(null,r.nextInt()+"",r.nextInt()+"",new Date(),"illness",ills.getId()));
            }
        }
    }
}
