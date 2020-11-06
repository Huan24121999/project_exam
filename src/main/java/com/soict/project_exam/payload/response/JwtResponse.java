package com.soict.project_exam.payload.response;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.beans.factory.annotation.Value;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class JwtResponse {
    private String token;

    @Value("${exam.security.type}")
    private String type;

    private Long  id;

    private String username;

    private String email;

    private List<String> roles;

}
