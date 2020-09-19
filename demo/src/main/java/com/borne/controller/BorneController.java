package com.borne.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BorneController {



    @GetMapping("/")
    public String index() {
        return "hello";
    }


    @GetMapping("/map")
    public String show() {
        return "Un exemple de produit";
    }

}

