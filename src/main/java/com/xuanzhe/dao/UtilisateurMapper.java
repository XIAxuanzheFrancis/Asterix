package com.xuanzhe.dao;

import com.xuanzhe.pojo.Utilisateur;
import java.util.List;
import java.util.Map;

public interface UtilisateurMapper {
  public int addUser(Utilisateur utilisateur);
  public int deleteUser(String email);
  public int updateNiveauUser(Utilisateur utilisateur);
  public List<Utilisateur> queryAllUser();
  public List<Utilisateur> queryUserByName(String nom);
  public Utilisateur queryUserById(int id);
  public Utilisateur loginUser(Map<String, Object> paramMap);
  public int getNiveauByEmail(String email);
}
