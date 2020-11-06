package com.soict.project_exam.payload.request;


import lombok.Data;

@Data
public class LoginRequest {
    private String username;

    private String password;
}
