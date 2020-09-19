package com.borne.controllers;

import com.borne.entities.Borne;
import com.borne.repositories.BorneRepository;
import com.borne.viewModels.BorneViewModel;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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

    @ModelAttribute
    @GetMapping("/test")
    public String test(Model model) throws JsonProcessingException {

        ObjectMapper mapper = new ObjectMapper();
        String list = mapper.writeValueAsString(this.borneRepository.findAll());
        model.addAttribute("list", list);
        return "test";
    }



}

