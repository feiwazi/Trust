package trust.controller;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import trust.pojo.Admin;
import trust.pojo.Article;
import trust.pojo.BasePojo;
import trust.pojo.Illness;
import trust.pojo.entity.IllnessEntity;
import trust.service.*;
import trust.util.ControllerTool;
import trust.util.ImageTool;
import trust.util.StringTool;
import trust.util.TimeTool;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping(value = "admin")
public class AdminController {

    @Autowired
    ArticleService articleService;

    @Autowired
    IllnessService illnessService;

    @Autowired
    DynamicService dynamicService;

    @Autowired
    TeamService teamService;

    @Autowired
    AdminService adminService;

    /*登陆*/

    @RequestMapping(value = "login.html", method = RequestMethod.GET)
    public String loginGet(){

    return "mobile/admin/login";
    }
    @RequestMapping(value = "login.html", method = RequestMethod.POST)
    public String loginPost(MultipartFile[] file, HttpSession session,Model model){
        if(file==null || file.length<1){
            return ControllerTool.abnormal_error(model,"文件上传错误，文件异常");
        }
        MultipartFile mf=file[0];
        if(mf.getSize()>115 || mf.getSize()<100){
            return ControllerTool.abnormal_error(model,"文件上传错误,大小异常");
        }
        BufferedImage bi=null;
        try {
            bi=ImageIO.read(mf.getInputStream());
        } catch (IOException e) {
            e.printStackTrace();
            return ControllerTool.abnormal_error(model,"文件上传错误，读取错误");
        }
        if(bi.getWidth()!=8 || bi.getHeight()!=2){
            return ControllerTool.abnormal_error(model,"文件上传错误,格式错误");
        }
        String key,password=null;
        try {
            key=new String(DigestUtils.sha1(ImageTool.decom(0,bi)));
            password=new String(DigestUtils.sha1(ImageTool.decom(1,bi)));
        }catch (Exception e){
            return ControllerTool.abnormal_error(model,"文件上传错误,内容解密错误");
        }
        List<Admin> admins= (List<Admin>) adminService.getList(new Admin(null,key,password));
        if(admins==null || admins.size()!=1){
            return ControllerTool.abnormal_error(model,"文件上传错误,文件失效");
        }
        session.setAttribute("admin",bi);
        return "redirect:/admin/query.html";
    }

    /**
     * 注册，测试
     * @param key
     * @param password
     * @return
     */
/*    @RequestMapping(value = "image.png", method = RequestMethod.GET)
    public void image(HttpServletResponse response, String key, String password){
        try {
            byte [] keyc=ByteTool.getCiphertext(key);
            byte [] pasc=ByteTool.getCiphertext(password);
            String keyb=new String(DigestUtils.sha1(keyc));
            String pasb=new String(DigestUtils.sha1(pasc));
            adminService.add(new Admin(null,keyb,pasb));
            ImageIO.write(ImageTool.genImage(keyc,pasc), "png", response.getOutputStream());
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }*/
    /**
     * 初始化页面
     * @param model
     * @return
     */
    @RequestMapping(value = "add.html", method = RequestMethod.GET)
    public String addGet(Model model) {
        List<Illness> p= (List<Illness>) illnessService.getList(new Illness(null,null,0,null));
        List<IllnessEntity> illnessEntities=new ArrayList<>();
        for (Illness temp : p){
            IllnessEntity ie=new IllnessEntity(temp);
            ie.setIllnesses((List<? extends Illness>) illnessService.getList(new Illness(null,null,temp.getId(),null)));
            illnessEntities.add(ie);
        }
        List<BasePojo> team=teamService.getAllList();
        model.addAttribute("team",team);
        model.addAttribute("illness",illnessEntities);
        return "mobile/admin/add";
    }

    /**
     * 增加
     * @param type
     * @param content
     * @param title
     * @param model
     * @return
     */
    @RequestMapping(value = "add.html", method = RequestMethod.POST)
    public String addPost(String type,String content,String title,Model model) {
        String [] temp=type.split("-");
        String t=temp[0];
        Integer rid=StringTool.toInteger(temp[1]);
        if(temp.length!=2){
            return ControllerTool.abnormal_error(model,"添加错误");
        }
        Date date=TimeTool.getWebDate(TimeTool.NTSC);
       boolean ret=articleService.add(new Article(null,title,content,date,t,rid));
        model.addAttribute("ret",ret);
        return "mobile/admin/add";
    }

    /**
     * 查询
     * @param model
     * @return
     */
    @RequestMapping(value = "query.html",method = RequestMethod.GET)
    public String query(Model model){
        List<BasePojo> as=articleService.getAllList();
        model.addAttribute("article",as);
        return "mobile/admin/query";
    }

    /**
     * 删除
     */
    @RequestMapping(value = "delete.html/{id}",method = RequestMethod.GET)
    public String delete(@PathVariable String id,Model model){
        Integer idInt=StringTool.toInteger(id);
        if(idInt==null){
            return ControllerTool.abnormal_error(model,"删除错误");
        }
        boolean ret=articleService.delete(new Article(idInt,null,null,null,null,null));
        query(model);
        model.addAttribute("ret",ret);
        return "mobile/admin/query";
    }

    /**
     * 初始化修改
     * @return
     */
    @RequestMapping(value = "update_{id}.html",method = RequestMethod.GET)
    public String updateGet(@PathVariable String id,Model model){
        Integer idInt=StringTool.toInteger(id);
        if(idInt==null){
            return ControllerTool.abnormal_error(model,"系统错误");
        }
        Article article= (Article) articleService.getPojo(new Article(idInt,null,null,null,null,null));
        model.addAttribute("article",article);
        return "mobile/admin/update";
    }

    /**
     * 修改
     * @return
     */
    @RequestMapping(value = "update.html",method = RequestMethod.POST)
    public String updatePost(String id,String content,String title,Model model){
        Integer idInt=StringTool.toInteger(id);
        if(idInt==null){
            return ControllerTool.abnormal_error(model,"修改错误");
        }
        Article article= (Article) articleService.getPojo(new Article(idInt,null,null,null,null,null));
        boolean ret =articleService.modify(new Article(idInt,title,content,TimeTool.getWebDate(TimeTool.NTSC),article.getType(),article.getRefId()));
        model.addAttribute("ret",ret);
        return "mobile/admin/update";
    }
}
