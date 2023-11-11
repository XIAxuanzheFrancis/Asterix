package com.xuanzhe.pojo;

import java.util.Date;
import java.util.List;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {
  private String login;
  private String pwd;
  private String pseudo;
  private int niveau;//1->user  2->auteur 3->admin
  private List<Produit> panir;
  private List<User> abonnementList;
  private List<User> abonne;
  private String address;
  private Date dateDeNaissance;
  private String profil;
}
