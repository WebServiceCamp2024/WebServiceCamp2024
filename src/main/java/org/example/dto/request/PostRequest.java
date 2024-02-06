package org.example.dto.request;

import lombok.Data;

@Data
public class PostRequest {
    private Long postId;
    private String content;
    private Long memberId;
}
