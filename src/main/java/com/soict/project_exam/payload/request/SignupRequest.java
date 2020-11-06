package com.soict.project_exam.payload.request;

import lombok.Data;
import org.springframework.stereotype.Service;

import javax.validation.constraints.Size;
import java.util.Set;


@Data
public class SignupRequest {
    @Size(min = 3,max=20)
    private String username;

    @Size(max = 50)
    private String email;

    private Set<String> role;

    @Size(min=6,max=40)
    private String password;
}
