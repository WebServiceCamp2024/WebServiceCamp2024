package org.example.controller;

import lombok.RequiredArgsConstructor;
import org.example.service.BookmarkService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class BookController {

    private final BookmarkService bookmarkService;

    @GetMapping("/book")
    public String getBookmarks(Model model) {
        model.addAttribute("bookmarks", bookmarkService.getAllBookmarks());
        return "book";
    }
}
