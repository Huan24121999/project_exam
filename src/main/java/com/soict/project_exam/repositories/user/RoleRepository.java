package com.soict.project_exam.repositories.user;

import com.soict.project_exam.entities.user.ERole;
import com.soict.project_exam.entities.user.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.Optional;

@Repository
public interface RoleRepository extends JpaRepository<Role,Integer> {

    Optional<Role> findByNameAndDeleted(ERole name,Boolean deleted);
}
