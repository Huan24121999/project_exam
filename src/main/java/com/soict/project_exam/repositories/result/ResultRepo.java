package com.soict.project_exam.repositories.result;

import com.soict.project_exam.entities.result.Result;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ResultRepo extends JpaRepository<Result,Integer> {
}
