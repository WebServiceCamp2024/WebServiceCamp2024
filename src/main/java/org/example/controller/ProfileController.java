package org.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProfileController {
    @RequestMapping("/profile")
    public String profile() {
        return "profile";
    }

    @RequestMapping("/settings/profile")
    public String editProfile(){
        return "/settings/profile";
    }
//  현재 멤버 아이디 값이 오면
    @RequestMapping("/my/following")
    public String moveFollowing(){
        return "/following";
    }
}
