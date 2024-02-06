package org.example.controller;

import lombok.RequiredArgsConstructor;
import org.example.domain.Bookmark;
import org.example.domain.Post;
import org.example.service.BookmarkService;
import org.example.service.PostService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class BookController {

    private final BookmarkService bookmarkService;
    private final PostService postService;

    @GetMapping("/book")
    public String getBookmarks(Model model) {
        List<Bookmark> bookmarks = bookmarkService.getAllBookmarks();
        List<Post> bookmarkedPosts = postService.getPostsByBookmarks(bookmarks);
        model.addAttribute("bookmarkedPosts", bookmarkedPosts);
        return "book";
    }
}
