package com.soict.project_exam.securities.services;

import com.soict.project_exam.entities.user.User;
import com.soict.project_exam.repositories.user.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    UserRepository userRepository;

    @Override
    @Transactional
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user=userRepository.findByUsernameAndDeleted(username,false)
                .orElseThrow(()->new UsernameNotFoundException("User not found with username: "+username));
        return UserDetailsImpl.build(user);
    }
}
