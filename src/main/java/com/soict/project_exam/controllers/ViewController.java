package com.soict.project_exam.controllers;

import com.soict.project_exam.repositories.user.RoleRepository;
import com.soict.project_exam.repositories.user.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
@CrossOrigin(origins = "*",maxAge = 3600)
@RequestMapping("api/auth")
public class ViewController {

}
