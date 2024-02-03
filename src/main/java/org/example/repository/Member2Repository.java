package org.example.repository;

import org.example.domain.Member2;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface Member2Repository extends JpaRepository<Member2, Long> {
    List<Member2> findAll();
}
