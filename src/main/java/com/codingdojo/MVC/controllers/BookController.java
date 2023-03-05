package com.codingdojo.MVC.controllers;

import com.codingdojo.MVC.models.Book;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import com.codingdojo.MVC.services.BookService;

@Controller
public class BookController {
    private final BookService bookService;

    public BookController(BookService bookService){
        this.bookService = bookService;
    }

    @GetMapping("/books/{id}")
    public String show(@PathVariable("id") Long id, Model model) {
        Book book = bookService.findBook(id);
        model.addAttribute("title", book.getTitle());
        model.addAttribute("description", book.getDescription());
        model.addAttribute("language", book.getLanguage());
        model.addAttribute("pages", book.getNumberOfPages());

        return "show.jsp";
    }
}
