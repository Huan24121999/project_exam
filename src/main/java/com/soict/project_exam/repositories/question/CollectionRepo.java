package com.soict.project_exam.repositories.question;

import com.soict.project_exam.entities.question.Collection;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CatalogRepo extends JpaRepository<Collection,Integer> {
}
