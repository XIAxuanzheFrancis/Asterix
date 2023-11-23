package com.xuanzhe.service;

import com.xuanzhe.dao.UtilisateurMapper;
import com.xuanzhe.pojo.Utilisateur;
import java.util.List;
import java.util.Map;

public class UtilisateurServiceImpl implements UtilisateurService {

  private UtilisateurMapper utilisateurMapper; // Injectez le mapper ici

  public void setUtilisateurMapper(UtilisateurMapper utilisateurMapper) {
    this.utilisateurMapper = utilisateurMapper;
  }

  @Override
  public int addUser(Utilisateur utilisateur) {
    return utilisateurMapper.addUser(utilisateur);
  }

  @Override
  public int deleteUser(int id) {
    return utilisateurMapper.deleteUser(id);
  }

  @Override
  public int updateUser(Utilisateur utilisateur) {
    return utilisateurMapper.updateUser(utilisateur);
  }

  @Override
  public List<Utilisateur> queryAllUser() {
    return utilisateurMapper.queryAllUser();
  }

  @Override
  public List<Utilisateur> queryUserByName(String nom) {
    return utilisateurMapper.queryUserByName(nom);
  }

  @Override
  public Utilisateur queryUserById(int id) {
    return utilisateurMapper.queryUserById(id);
  }

  @Override
  public Utilisateur loginUser(Map<String, Object> paramMap){
    return utilisateurMapper.loginUser(paramMap);
  }

  public int getNiveauByEmail(String email){
    return utilisateurMapper.getNiveauByEmail(email);
  }
  @Override
  public Utilisateur queryUserByEmail(String email) {
    return utilisateurMapper.queryUserByEmail(email);
  }
}

