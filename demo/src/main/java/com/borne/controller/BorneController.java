package com.borne.controller;

import com.borne.entities.Borne;
import com.borne.repositories.BorneRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class BorneController {

    private final BorneRepository borneRepository;

    BorneController(BorneRepository borneRepository) {
        this.borneRepository = borneRepository;
    }


    @GetMapping("/")
    public String index() {
        return "hello";
    }


    @GetMapping("/map")
    public List<Borne> show() {

        List<Borne> list = this.borneRepository.findAll();

        return this.borneRepository.findAll();
    }

}

