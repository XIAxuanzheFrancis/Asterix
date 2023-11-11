package com.xuanzhe.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Produit {
  private int produitId;
  private String nomProduit;
  private Auteur auteur;
  private int quantite;
  private double prix;
  private String description;
}
