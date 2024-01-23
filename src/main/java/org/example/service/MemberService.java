package org.example.service;

import lombok.RequiredArgsConstructor;
import org.example.domain.Member;
import org.example.repository.MemberRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Transactional
public class MemberService {
    private final MemberRepository memberRepository;
    public void create() {
        System.out.println("MemberService.create");
        Member member = Member.builder()
                .username("user")
                .build();
        memberRepository.save(member);
    }
}
