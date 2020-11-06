package com.soict.project_exam.repositories.exam;

import com.soict.project_exam.entities.exam.Group;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.Optional;

@Repository
public interface GroupRepository extends JpaRepository<Group,Integer> {

    Group save(Group group);

    Optional<Group> findByIdAndDeleted(Integer id, Boolean deleted);

    @Transactional
    @Modifying
    @Query(value = "update Group a set a.deleted=true where a.id=?1")
    Boolean deleted(Integer id);

}
