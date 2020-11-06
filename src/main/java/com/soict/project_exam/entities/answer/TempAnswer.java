package com.soict.project_exam.entities.answer;

import com.soict.project_exam.entities.base.BaseEntity;
import com.soict.project_exam.entities.exam.Paper;
import com.soict.project_exam.entities.user.User;
import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name="pro_temp_answer")
@Data
public class TempAnswer extends BaseEntity {

    private static final long serialVersionId=1l;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private Boolean deleted;

    @ManyToOne(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
    @JoinColumn(name = "paper_id")
    private Paper paper;

    @ManyToOne(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
    @JoinColumn(name = "answer_id")
    private Answer answer;

    @ManyToOne(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
    @JoinColumn(name = "user_id")
    private User user;


}
