package com.soict.project_exam.repositories.answer;

import com.soict.project_exam.entities.answer.Answer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AnswerRepo extends JpaRepository<Answer,Integer> {

}
