package com.soict.project_exam.entities.answer;

import com.soict.project_exam.entities.base.BaseEntity;
import com.soict.project_exam.entities.question.Question;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "pro_answer")
@Data
public class Answer extends BaseEntity {

    private static  final long serialVersionId=1l;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String answer;

    private String image;

    private Boolean isCorrect;

    private Boolean deleted;

    @OneToOne
    @JoinColumn(name = "question_id")
    private Question question;


}
