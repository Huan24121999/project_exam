package com.soict.project_exam.repositories.exam;

import com.soict.project_exam.entities.exam.Paper;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PaperRepo extends JpaRepository<Paper,Integer> {
}
