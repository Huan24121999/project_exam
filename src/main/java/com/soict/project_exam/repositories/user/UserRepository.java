package com.soict.project_exam.repositories.user;

import com.soict.project_exam.entities.user.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User,Integer> {
    
    Optional<User> findByUsernameAndDeleted(String username,Boolean deleted);

    Boolean existsByUsername(String username);

    Boolean existsByEmail(String email);
}
