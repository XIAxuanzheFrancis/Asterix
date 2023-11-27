package com.xuanzhe.dao;

import com.xuanzhe.pojo.Livre;
import java.util.List;

public interface LivreMapper {
  public List<Livre> queryBookByUserId(int auteur_id);
}
