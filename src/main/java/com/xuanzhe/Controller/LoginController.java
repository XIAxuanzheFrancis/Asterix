package com.xuanzhe.Controller;

import com.xuanzhe.service.UtilisateurService;
import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class LoginController {
  @Autowired
  @Qualifier("UtilisateurServiceImpl")
  private UtilisateurService utilisateurService;
  @RequestMapping("/processLogin")
  public String processLogin(@RequestParam("email") String email, @RequestParam("motDePasse") String motDePasse, Model model) {
    Map<String, Object> paramMap = new HashMap<>();
    paramMap.put("email", email);
    paramMap.put("motDePasse", motDePasse);
    if ((utilisateurService.loginUser(paramMap)!=null)&&(utilisateurService.getNiveauByEmail(email)==3)) {
      return "redirect:/allusers";
    }
    else{
      return "forward:/index.jsp";
    }
  }
}
