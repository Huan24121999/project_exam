package com.soict.project_exam.controllers.user;

import com.soict.project_exam.payload.request.SignupRequest;
import com.soict.project_exam.service.user.UserService;
import com.soict.project_exam.service_impls.user.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("api/v1/user")
public class UserController {
    @Autowired
    private UserService userService;


}
