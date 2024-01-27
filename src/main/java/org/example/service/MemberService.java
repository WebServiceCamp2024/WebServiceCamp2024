package org.example.service;

import lombok.RequiredArgsConstructor;
import org.example.domain.Member;
import org.example.dto.request.MemberRequest;
import org.example.repository.MemberRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityNotFoundException;
import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional
public class MemberService {
    private final MemberRepository memberRepository;
    public void create(MemberRequest request) {
        Member member = Member.builder()
                .username(request.getUsername())
                .password(request.getPassword())
                .build();
        memberRepository.save(member);
    }
    public void update(MemberRequest request) {
        Member member = memberRepository.findById(request.getMemberId())
                .orElseThrow(() -> new EntityNotFoundException("Member not found with id: " + request.getMemberId()));
        member.update(request);
        memberRepository.save(member);
    }
    public void delete(Long id){
        System.out.println("delete");
        memberRepository.deleteById(id);
    }

    public List<Member> findAll() {
        return memberRepository.findAll();
    }
}
