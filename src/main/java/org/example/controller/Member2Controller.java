//package org.example.controller;
//
//import lombok.RequiredArgsConstructor;
//import org.example.domain.Post;
//import org.example.dto.request.Member2Request;
//import org.example.dto.request.PostRequest;
//import org.example.service.Member2Service;
//import org.example.service.PostService;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.*;
//import org.springframework.ui.Model;
//
//@Controller
//@RequiredArgsConstructor
//@CrossOrigin("*")
//public class Member2Controller {
//
//    private final Member2Service member2Service;
//
//    @GetMapping("/")
//    public String listPosts(Model model) {
//        model.addAttribute("posts", member2Service.findAllPosts());
//        return "home";
//    }
//
//    @PostMapping("/post/create")
//    public String create(@ModelAttribute PostRequest postRequest) {
//        member2Service.createPost(new Member2Request());
//        return "redirect:/";
//    }
//
//    @PostMapping("/post/update")
//    public String updatePost(@ModelAttribute PostRequest postRequest) {
//        member2Service.updatePost(new Member2Request());
//        return "redirect:/";
//    }
//
//    @GetMapping("/post/delete/{id}")
//    public String deletePost(@PathVariable Long id) {
//        member2Service.deletePost(id);
//        return "redirect:/";
//    }
//}

package org.example.controller;

import lombok.RequiredArgsConstructor;
import org.example.domain.Member2;
import org.example.dto.request.Member2Request;
import org.example.service.Member2Service;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequiredArgsConstructor
@CrossOrigin("*")
public class Member2Controller {

    private final Member2Service member2Service;

    @GetMapping("/member2")
    public String listMembers(Model model) {
        List<Member2> members = member2Service.findAllMembers();
        model.addAttribute("members", members);
        return "member";
    }

    @PostMapping("/member2/create")
    public String createMember(@ModelAttribute Member2Request member2Request) {
        member2Service.createMember(member2Request);
        return "redirect:/";
    }

//    @PostMapping("/member2/update")
    @PatchMapping("/member2/update")
    public String updateMember(@ModelAttribute Member2Request member2Request) {
        member2Service.updateMember(member2Request);
        return "redirect:/";
    }

//    @GetMapping("/member2/delete/{id}")
    @DeleteMapping("/member2/delete/{id}")
    public String deleteMember(@PathVariable Long id) {
        member2Service.deleteMember(id);
        return "redirect:/";
    }
}

