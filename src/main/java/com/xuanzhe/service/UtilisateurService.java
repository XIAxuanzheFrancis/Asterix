package com.xuanzhe.service;
import com.xuanzhe.pojo.Utilisateur;
import java.util.List;
import java.util.Map;

public interface UtilisateurService {
    int addUser(Utilisateur utilisateur);
    int deleteUser(int id);
    int updateUser(Utilisateur utilisateur);
    List<Utilisateur> queryAllUser();
    List<Utilisateur> queryUserByName(String nom);
    Utilisateur queryUserById(int id);
    Utilisateur loginUser(Map<String, Object> paramMap);
    public int getNiveauByEmail(String email);
    public Utilisateur queryUserByEmail(String email);
  }


