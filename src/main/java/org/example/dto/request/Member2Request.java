package org.example.dto.request;

import lombok.Data;

@Data
public class Member2Request {
    private Long memberId;
    private String email;
    private String profileImage;
    private String twitterId;
    private String nickname;
    private String region;
    private String info;
}