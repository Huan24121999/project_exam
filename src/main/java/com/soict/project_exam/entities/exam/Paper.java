package com.soict.project_exam.entities.exam;

import com.soict.project_exam.entities.base.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "pro_paper")
@Data
public class Paper extends BaseEntity {

    private static final long serialVersionId=1l;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(length = 5)
    private String code;

    @Column(name = "numquestion")
    private Integer numberQuestion;

    private Integer status;

    private Boolean deleted;

    @ManyToOne(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
    @JoinColumn(name = "exam_id")
    private Exam exam;
}

