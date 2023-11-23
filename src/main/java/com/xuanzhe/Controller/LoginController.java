package com.xuanzhe.Controller;

import com.xuanzhe.pojo.Utilisateur;
import com.xuanzhe.service.UtilisateurService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class LoginController {
  @Autowired
  @Qualifier("UtilisateurServiceImpl")
  private UtilisateurService utilisateurService;
  @RequestMapping("/processLogin")
  public String processLogin(@RequestParam("email") String email, @RequestParam("motDePasse") String motDePasse, Model model,
      RedirectAttributes redirectAttributes, HttpSession httpSession) {
    Map<String, Object> paramMap = new HashMap<>();
    paramMap.put("email", email);
    paramMap.put("motDePasse", motDePasse);
    if ((utilisateurService.loginUser(paramMap)!=null)&&(utilisateurService.getNiveauByEmail(email)==3)) {
      Utilisateur admin =  utilisateurService.queryUserByEmail(email);
      redirectAttributes.addAttribute("AdminEmail",admin.getEmail());
      redirectAttributes.addAttribute("AdminDiscription",admin.getDescription());
      httpSession.setAttribute("motDePasse",motDePasse);
      return "redirect:/allusers";
    }
    else{
      return "forward:/index.jsp";
    }
  }

  @RequestMapping("/logout")
  public String logout(HttpSession session){
    session.removeAttribute("motDePasse");
    return "../../index";
  }
}
