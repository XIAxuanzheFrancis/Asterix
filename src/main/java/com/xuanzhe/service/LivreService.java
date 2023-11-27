package com.xuanzhe.service;

import com.xuanzhe.pojo.Livre;
import java.util.List;

public interface LivreService {
  List<Livre> queryBookByUserId(int auteur_id);
}
