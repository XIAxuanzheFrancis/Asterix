package com.xuanzhe.pojo;

import java.util.List;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Boutique {
  private List<Produit> produitList;
  private int quantiteProduit;
  private Auteur auteur;
  private String description;
}
