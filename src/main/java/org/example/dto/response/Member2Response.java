package org.example.dto.response;

import lombok.Data;

@Data
public class Member2Response {
    private Long memberId;
    private String email;
    private String profileImage;
    private String twitterId;
    private String nickname;
    private String region;
    private String info;
}
