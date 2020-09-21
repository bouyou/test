package com.borne.entities;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;

@Entity
@Table(name = "borne")
@Data
public class Borne implements Serializable {

    private static final long serialVersionUID = 1L;

    @Column(name = "accesrecharge")
    private String accesrecharge;

    @Column(name = "accessibilité")
    private String accessibilité;

    @Column(name = "adstation")
    private String adstation;

    @Column(name = "amenageur")
    private String amenageur;

    @Column(name = "codeinsee")
    private String codeinsee;

    @Column(name = "date_maj")
    private Date dateMaj;

    @Column(name = "enseigne")
    private String enseigne;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;

    @Column(name = "idpdc")
    private String idpdc;

    @Column(name = "idstation")
    private String idstation;

    @Column(name = "nbrepdc")
    private String nbrepdc;

    @Column(name = "observations")
    private String observations;

    @Column(name = "operateur")
    private String operateur;

    @Column(name = "puissmax")
    private String puissmax;

    @Column(name = "station")
    private String station;

    @Column(name = "typeprise")
    private String typeprise;

    @Column(name = "X")
    private Integer x;

    @Column(name = "Xlongitude")
    private String xlongitude;

    @Column(name = "Y")
    private Integer y;

    @Column(name = "Ylatitude")
    private String ylatitude;

}

