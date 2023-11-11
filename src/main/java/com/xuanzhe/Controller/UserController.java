package com.xuanzhe.Controller;

import com.xuanzhe.pojo.User;
import com.xuanzhe.service.UserService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserController {

  @Autowired
  @Qualifier("UserServiceImpl")
  private UserService userService;

  @RequestMapping("/allusers")
  public String getAllUsers(Model model){
    List<User> list = userService.queryAllUser();
    model.addAttribute("AllUsers",list);
    return "allusers";
  }
  @RequestMapping("/toadduser")
  public String addPage(){
    return "addusers";
  }

  @RequestMapping("/adduser")
  public String addUser(User user){
    userService.addUser(user);
    return "redirect:/allusers";
  }
  @RequestMapping("/tomodify/{login}")
  public String toModifyPage(@PathVariable String login, Model model){
    User user = userService.queryUserById(login);
    model.addAttribute("niveau",user.getNiveau());
    return "toModifyPage";
  }
  @RequestMapping("/update")
  public String updateNiveauUser(User user){
    userService.updateNiveauUser(user);
    return "redirect:/allusers";
  }

  @RequestMapping("/deleteUsers/{id}")
  public String deleteUser(@PathVariable String login){
    userService.deleteUser(login);
    return "redirect:/allusers";
  }

  @RequestMapping("/queryUsersByName")
  public String queryUsersByName(String queryUserName, Model model){
    List<User> list = userService.queryUserByName(queryUserName);
    model.addAttribute("Allusers",list);
    return "allusers";
  }

}
