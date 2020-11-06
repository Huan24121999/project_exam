package com.soict.project_exam.entities.base;

import org.springframework.data.domain.AuditorAware;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

import java.util.Objects;
import java.util.Optional;

public class AuditorAwareImpl implements AuditorAware<String> {
    @Override
    public Optional getCurrentAuditor() {
        Object object= SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username=((UserDetails)object).getUsername();
        return Optional.of(username);
    }
}
