package com.soict.project_exam.repositories.answer;

import com.soict.project_exam.entities.answer.TempAnswer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TempAnswerRepo extends JpaRepository<TempAnswer,Integer> {
}
