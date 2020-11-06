package com.soict.project_exam.entities.result;

import com.soict.project_exam.entities.base.BaseEntity;
import com.soict.project_exam.entities.exam.Paper;
import com.soict.project_exam.entities.user.User;
import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "pro_result")
@Data
public class Result extends BaseEntity {

    private static final long serialVersionId=1l;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private Float scores;

    @Column(name = "numcorrect")
    private Integer numberCorrect;

    @Column(name = "started_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date startedDate;

    @Column(name = "finished_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date finishedDate;

    private Boolean deteted;

    @ManyToOne(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
    @JoinColumn(name = "paper_id")
    private Paper paper;

    @ManyToOne(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
    @JoinColumn(name = "user_id")
    private User user;
}
