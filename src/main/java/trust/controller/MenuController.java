package trust.controller;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import trust.pojo.Appointment;
import trust.pojo.Article;
import trust.pojo.Illness;
import trust.pojo.Team;
import trust.pojo.entity.Page;
import trust.pojo.entity.TeamEntity;
import trust.service.AppointmentService;
import trust.service.ArticleService;
import trust.service.IllnessService;
import trust.service.TeamService;
import trust.util.ControllerTool;
import trust.util.StringTool;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 菜单控制器
 */
@Controller
@RequestMapping(value = "menu")
public class MenuController {

    @Autowired
    ArticleService articleService;

    @Autowired
    TeamService teamService;

    @Autowired
    DataHandle data;

    @Autowired
    AppointmentService appointmentService;

    @Autowired
    IllnessService illnessService;

    @Autowired
    CatalogController catalogController;
    /*医师团队*/
    @RequestMapping(value = "team.html", method = RequestMethod.GET)
    public String team(Model model,HttpServletRequest httpRequest) {
        return team(model, 1 + "",httpRequest);
    }

    @RequestMapping(value = "team.html/{page}", method = RequestMethod.GET)
    public String team(Model model, @PathVariable String page, HttpServletRequest httpRequest) {
        Integer pageint = StringTool.toInteger(page);
        if (pageint == null) {
            return ControllerTool.abnormal_404(httpRequest);
        }
        Page<Team> teampage = teamService.getPageList(new Team(), new RowBounds(pageint, 3));
        List<TeamEntity> teamEntities = new ArrayList<>();
        for (Team i : teampage.getPojos()) {
            TeamEntity te = new TeamEntity(i);
            te.setArticle((Article) articleService.getPojo(new Article(null, null, null, null, "team", te.getId())));
            teamEntities.add(te);
        }
        teampage.setPojos(teamEntities);
        model.addAttribute("teamPage", teampage);
        return "mobile/team";
    }
    /*诊疗项目*/
    @RequestMapping(value = "treatment.html", method = RequestMethod.GET)
    public String treatment() {
        return "mobile/treatment";
    }

    @RequestMapping(value = "introduce.html", method = RequestMethod.GET)
    public String introduce(Model model) {
        Article a = (Article) articleService.getPojo(new Article(null, null, null, null, "introduce", null));
        model.addAttribute("article", a);
        return "mobile/introduce";
    }
    /*预约挂号*/
    @RequestMapping(value = "appointment.html", method = RequestMethod.GET)
    public String appointmentGet(Model model) {
        List<Illness> illnesses = (List<Illness>) illnessService.getList(new Illness(null, null, 0, null));
        model.addAttribute("illness", illnesses);
        return "mobile/appointment";
    }

    @RequestMapping(value = "appointment.html", method = RequestMethod.POST)
    public String appointmentPost(String name, String phone, String illness, String time, String message, Model model) {
        Integer illInt = StringTool.toInteger(illness);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        time=time.replace("T"," ");
        if("".equals(message.trim())){
            return ControllerTool.abnormal_error(model,"非法提交");
        }
        message= message.substring(0,200);
        boolean ret = true;
        if (illInt == null ||  !StringTool.isInt(phone)) {
            ret = false;
        }
        Date date = null;
        try {
            date = sdf.parse(time);
        } catch (ParseException e) {
            ret = false;
        }
        if(date==null){
            ret=false;
        }
        ret = appointmentService.add(new Appointment(null, name, phone, illInt, date, message));
        model.addAttribute("ret", ret);
        return "mobile/appointment";
    }
    @RequestMapping(value = "recovery.html", method = RequestMethod.GET)
    public String recovery(Model model,HttpServletRequest httpRequest){
        return catalogController.catalog("recovery",0+"",model,httpRequest);
    }
}
