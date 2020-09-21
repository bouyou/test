package com.borne.controllers;
import com.borne.entities.Borne;
import com.borne.repositories.BorneRepository;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RestController;
import java.util.Optional;

@RestController
public class BorneController {

    private final BorneRepository borneRepository;
    BorneController(BorneRepository borneRepository) {
        this.borneRepository = borneRepository;
    }

    @GetMapping("/")
    public String home() {
        return "home";
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
    public String list(Model model)  {

        model.addAttribute("list", this.borneRepository.findAll());
        return "list";
    }

    @ModelAttribute
    @GetMapping("/show")
    public String show(Integer id, Model model) throws JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();

        Optional<Borne> borne = this.borneRepository.findById(id);
        String borneJson = mapper.writeValueAsString(borne.get());
        model.addAttribute("borne", borneJson);
        return "show";
    }


}

