package com.xuanzhe.service;

import com.xuanzhe.dao.LivreMapper;
import com.xuanzhe.pojo.Livre;
import java.util.List;

public class LivreServiceImpl implements LivreService{
  private LivreMapper livreMapper; // Injectez le mapper ici

  public void setLivreMapper(LivreMapper livreMapper) {
    this.livreMapper = livreMapper;
  }
  @Override
  public List<Livre> queryBookByUserId(int auteur_id) {
    return livreMapper.queryBookByUserId(auteur_id);
  }
}
