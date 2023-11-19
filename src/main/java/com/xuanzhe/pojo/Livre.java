package com.xuanzhe.pojo;

import java.math.BigDecimal;
import java.time.LocalDate;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Livre {
  private int id;
  private int id_boutique;
  private String nom;
  private LocalDate dateDePublication;
  private String description;
  private BigDecimal prix;
  private int auteur_id;
  public Livre(int id, int id_boutique, String nom, String description, BigDecimal prix, int auteur_id) {
    this.id = id;
    this.id_boutique = id_boutique;
    this.nom = nom;
    this.dateDePublication = LocalDate.now();
    this.description = description;
    this.prix = prix;
    this.auteur_id = auteur_id;
  }
}
