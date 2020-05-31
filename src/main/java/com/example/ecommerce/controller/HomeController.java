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

    @Autowired
    private CartDao cartDao;

    @RequestMapping(value = "/")
    public String home(Model model) {
//        List<Product> allBooks = bookDao.findAll();
        model.addAttribute("allBooks", bookDao.findAll());
//        System.out.println(allBooks);
        return "home";
    }

    @GetMapping(value = "/addToCart/{bookId}")
    public String addToCart(@PathVariable("bookId") int bookId, Product product, Cart cart, Model model) {
        Product p = bookDao.findById(bookId).orElse(new Product());
        cart.setQuantity(1);
        cart.setProduct(p);
        cartDao.save(cart);
        model.addAttribute("cartList", cartDao.findAll());
        return "cartList";
    }

    @GetMapping(value = "/cartList")
    public String cartList(Model model) {
        model.addAttribute("cartList", cartDao.findAll());
        return "cartList";
    }

    @GetMapping(value = "/deleteCart/{cartId}")
    public String deleteCart(@PathVariable("cartId") int cartId, Model model) {
        cartDao.deleteById(cartId);
        model.addAttribute("cartList", cartDao.findAll());
        return "redirect:/cartList";
    }

    @PostMapping(value = "/checkout/{cartId}")
    public String checkOut(@PathVariable("cartId") int cartId, Model model) {
        Cart cart = cartDao.findById(cartId).orElse(new Cart());

        int totalPrice = cart.getQuantity() * Integer.parseInt(cart.getProduct().getBookPrice());
        model.addAttribute("bookName", cart.getProduct().getBookName());
        model.addAttribute("bookPrice", cart.getProduct().getBookPrice());
        model.addAttribute("bookAuthor", cart.getProduct().getBookAuthor());
        model.addAttribute("quantity", cart.getQuantity());
        model.addAttribute("totalPrice", totalPrice);
//        System.out.println(quantity);
        cartDao.deleteById(cartId);
        return "checkout";
    }
}
