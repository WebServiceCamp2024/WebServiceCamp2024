package org.example.controller;

import lombok.RequiredArgsConstructor;
import org.example.service.MemberService;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@CrossOrigin("*")
public class MemberController {
    private final MemberService memberService;

    @RequestMapping("/member")
    public void create() {
        memberService.create();
    }
}
