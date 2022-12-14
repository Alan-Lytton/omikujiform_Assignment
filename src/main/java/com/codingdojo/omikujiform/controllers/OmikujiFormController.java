package com.codingdojo.omikujiform.controllers;


import org.apache.coyote.http11.HttpOutputBuffer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
public class OmikujiFormController {

    @RequestMapping("/")
    public String index(){
        return "redirect:/omikuji";
    }

    @RequestMapping("/omikuji")
    public String omikuji(HttpSession session){
        session.invalidate();
        return "index.jsp";
    }

    @RequestMapping("/omikuji/show")
    public String show(HttpSession session, Model model){
        Integer numOfDays = (Integer) session.getAttribute("number");
        String city = (String) session.getAttribute("city");
        String person = (String) session.getAttribute("person");
        String hobby = (String) session.getAttribute("hobby");
        String thing = (String) session.getAttribute("thing");
        String nice = (String) session.getAttribute("nice");

        model.addAttribute("number", numOfDays);
        model.addAttribute("city", city);
        model.addAttribute("person", person);
        model.addAttribute("hobby", hobby);
        model.addAttribute("thing", thing);
        model.addAttribute("nice", nice);


        return "show.jsp";
    }

    @PostMapping("/omikuji/process")
    public String process(
            @RequestParam(value = "number") Integer numOfDays,
            @RequestParam(value = "city") String city,
            @RequestParam(value = "person") String person,
            @RequestParam(value = "hobby") String hobby,
            @RequestParam(value = "thing") String thing,
            @RequestParam(value = "nice") String nice,
            HttpSession session)
    {
        session.setAttribute("number", numOfDays);
        session.setAttribute("city", city);
        session.setAttribute("person", person);
        session.setAttribute("hobby", hobby);
        session.setAttribute("thing", thing);
        session.setAttribute("nice", nice);
        return "redirect:/omikuji/show";
    }
}
