package com.borne.controllers;


import com.borne.entities.Borne;
import com.borne.repositories.BorneRepository;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Collections;

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


    @ModelAttribute
    @GetMapping("/map")
    public String map(Model model) throws JsonProcessingException {

        ObjectMapper mapper = new ObjectMapper();
        String list = mapper.writeValueAsString(this.borneRepository.findAll());
        model.addAttribute("list", list);
        return "map";
    }

    @ModelAttribute
    @GetMapping("/list")
    public String list(Model model) throws JsonProcessingException {

        ObjectMapper mapper = new ObjectMapper();
        String list = mapper.writeValueAsString(this.borneRepository.findAll());




        model.addAttribute("list", list);








        return "list";
    }







}

