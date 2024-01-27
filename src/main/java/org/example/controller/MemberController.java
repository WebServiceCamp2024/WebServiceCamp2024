package org.example.controller;

import lombok.RequiredArgsConstructor;
import org.example.domain.Member;
import org.example.dto.request.MemberRequest;
import org.example.repository.MemberRepository;
import org.example.service.MemberService;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.persistence.EntityNotFoundException;
import java.util.Collections;
import java.util.List;
import java.util.Map;

@Controller
@RequiredArgsConstructor
@CrossOrigin("*")
public class MemberController {
    private final MemberService memberService;
    @GetMapping("/member")
    public String memberList(Model model) {
        List<Member> members = memberService.findAll();
        model.addAttribute("members", members);
        return "member";
    }
    @PostMapping("/member/create")
    public String create(@ModelAttribute MemberRequest request) {
        memberService.create(request);
        return "redirect:/";
    }
    @PostMapping("/member/update")
    public String updateMember(@ModelAttribute MemberRequest request) {
        memberService.update(request);
        return "redirect:/member";
    }
    @GetMapping("/member/delete/{id}")
    public String deleteMember(@PathVariable Long id) {
        memberService.delete(id);
        return "redirect:/member";
    }
}