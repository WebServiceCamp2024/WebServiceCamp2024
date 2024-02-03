package org.example.dto.request;

import lombok.Data;

@Data
public class MemberRequest {
    private Long memberId;
    private String username;
    private String password;
}
