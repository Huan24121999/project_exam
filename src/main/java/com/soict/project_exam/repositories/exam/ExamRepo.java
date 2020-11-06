package com.soict.project_exam.repositories.exam;

import com.soict.project_exam.entities.exam.Exam;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ExamRepo extends JpaRepository<Exam,Integer> {
}
