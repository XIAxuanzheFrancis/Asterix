package com.xuanzhe.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Boutique {
    private int id;
    private String nom_boutique;
    private String description;
    private int nombre_livre;
    private int createur_id;
}
