package org.example.service;

import lombok.RequiredArgsConstructor;
import org.example.domain.Member2;
import org.example.dto.request.Member2Request;
import org.example.repository.Member2Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional
public class Member2Service {

    private final Member2Repository member2Repository;

    public List<Member2> findAllMembers() {
        return member2Repository.findAll();
    }

    public void createMember(Member2Request member2Request) {
        Member2 member2 = new Member2();
        member2.update(member2Request);
        member2Repository.save(member2);
    }

    public Member2 findMemberById(Long id) {
        return member2Repository.findById(id)
                .orElseThrow(() -> new RuntimeException("Member not found"));
    }

    public void updateMember(Member2Request member2Request) {
        Member2 member2 = member2Repository.findById(member2Request.getMemberId())
                .orElseThrow(() -> new RuntimeException("Member not found"));
        member2.update(member2Request);
        member2Repository.save(member2);
    }

    public void deleteMember(Long id) {
        member2Repository.deleteById(id);
    }
}
