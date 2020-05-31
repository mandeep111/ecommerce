package com.example.ecommerce.controller;

import com.example.ecommerce.dao.BookDao;
import com.example.ecommerce.dao.CartDao;
import com.example.ecommerce.model.Cart;
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
        model.addAttribute("allBooks", bookDao.findAll());
        return "home";
    }
}
