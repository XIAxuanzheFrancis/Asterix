package com.xuanzhe.Controller;

import com.xuanzhe.pojo.Utilisateur;
import com.xuanzhe.service.UtilisateurService;
import com.xuanzhe.service.UtilisateurServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserController {

  @Autowired
  @Qualifier("UtilisateurServiceImpl")
  private UtilisateurService utilisateurService;

  @RequestMapping("/allusers")
  public String getAllUsers(Model model){
    List<Utilisateur> list = utilisateurService.queryAllUser();
    model.addAttribute("AllUsers",list);
    return "allusers";
  }
  @RequestMapping("/toadduser")
  public String addPage(){
    return "addusers";
  }

  @RequestMapping("/adduser")
  public String addUser(Utilisateur utilisateur){
    utilisateurService.addUser(utilisateur);
    return "redirect:/allusers";
  }
  @RequestMapping("/tomodify/{id}")
  public String toModifyPage(@PathVariable int id, Model model){
    Utilisateur utilisateur = utilisateurService.queryUserById(id);
    model.addAttribute("niveau",utilisateur.getNiveau());
    return "toModifyPage";
  }
  @RequestMapping("/update")
  public String updateNiveauUser(Utilisateur utilisateur){
    utilisateurService.updateNiveauUser(utilisateur);
    return "redirect:/allusers";
  }

  @RequestMapping("/deleteUsers/{id}")
  public String deleteUser(@PathVariable String email){
    utilisateurService.deleteUser(email);
    return "redirect:/allusers";
  }

  @RequestMapping("/queryUsersByName")
  public String queryUsersByName(String queryUserName, Model model){
    List<Utilisateur> list = utilisateurService.queryUserByName(queryUserName);
    model.addAttribute("Allusers",list);
    return "allusers";
  }

}
