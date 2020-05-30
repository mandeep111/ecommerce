package com.example.ecommerce.adminController;

import com.example.ecommerce.BookDao;
import com.example.ecommerce.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;

@Controller
public class AdminHome {

    private Path path;
    @Autowired
    private BookDao bookDao;

    @GetMapping("/admin")
    public String adminPage () {
        return "adminPage";
    }

    @GetMapping("/admin/productList")
    public String productListPage (Model model) {
        model.addAttribute("blist", bookDao.findAll());
        return "productList";
    }

    @GetMapping(value = "/admin/addProduct")
    public String addProductPage() {
        return "addProduct";
    }

    @PostMapping(value = "/admin/addProduct")
    public String addProduct (Product product, HttpServletRequest request) {
        bookDao.save(product);
        MultipartFile bookImage = product.getBookImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory+"WEB-INF/resources/images/"+product.getBookId()+".png");
        System.out.println(path);
        if (bookImage != null && !bookImage.isEmpty()) {
            try {
                bookImage.transferTo(new File(path.toString()));
            } catch (Exception e) {
                e.printStackTrace();
                throw new RuntimeException("Image saving failed", e);
            }
        }

        return "redirect:/admin/productList";
    }
    @GetMapping(value = "/admin/deleteProduct/{bookId}")
    public String deleteProduct (@PathVariable("bookId") int bookId,Model model) {
        bookDao.deleteById(bookId);
        model.addAttribute("blist", bookDao.findAll());
        return "redirect:/admin/productList";
    }
}
