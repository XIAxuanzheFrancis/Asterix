package com.xuanzhe.pojo;

import java.util.List;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Utilisateur {
  private int id;
  private String nom;
  private String email;
  private String motDePasse;
  private int niveau;
  private String description;
  private String abonnementIdList; // Liste d'abonnements
  private String abonneIdList; // Liste d'abonnés
}
