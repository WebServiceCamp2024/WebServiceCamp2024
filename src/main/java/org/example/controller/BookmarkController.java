package org.example.controller;

import lombok.RequiredArgsConstructor;
import org.example.dto.request.BookmarkRequest;
import org.example.service.BookmarkService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequiredArgsConstructor
@RequestMapping("/bookmark")
public class BookmarkController {

    private final BookmarkService bookmarkService;

    @RequestMapping("/book")
    public String book() {
        return "book";
    }

//    @GetMapping("/")
//    public String listBookmarks(Model model) {
//        model.addAttribute("bookmarks", bookmarkService.findAllBookmarks());
//        return "home";
//    }

    @PostMapping("/bookmark/create")
    public String createBookmark(@ModelAttribute BookmarkRequest bookmarkRequest) {
        bookmarkService.createBookmark(bookmarkRequest.getPostId());
        return "redirect:/";
    }

//    @PostMapping("/bookmark/delete/{id}")
//    public String deleteBookmark(@RequestParam Long bookmarkId) {
//        BookmarkService.deleteBookmark(bookmarkId);
//        return "redirect:/";
//    }

// 해당 게시물의 좋아요 목록 조회
//    @GetMapping("/post/{postId}/likes")
//    public String getPostLikes(@PathVariable Long postId, Model model) {
//        model.addAttribute("likes", postLikeService.getPostLikes(postId));
//        return "postLikes"; // 좋아요 목록을 보여줄 뷰 이름
//    }
}