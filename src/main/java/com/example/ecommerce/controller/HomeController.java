package com.example.ecommerce.controller;

import com.example.ecommerce.BookDao;
import com.example.ecommerce.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
public class HomeController {
    @Autowired
    private BookDao bookDao;


    @RequestMapping(value = "/")
    public String home(Model model) {
//        List<Product> allBooks = bookDao.findAll();
        model.addAttribute("allBooks", bookDao.findAll());
//        System.out.println(allBooks);
        return "home";
    }




}
