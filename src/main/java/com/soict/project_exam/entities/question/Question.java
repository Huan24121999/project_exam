package com.soict.project_exam.entities.question;

import com.soict.project_exam.entities.base.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "pro_question")
@Data
public class Question extends BaseEntity {
    private  static final long serialVersionId=1l;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(length = 500)
    private String question;

    private Integer level;

    private String image;

    private Boolean deleted;

    @ManyToOne(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
    @JoinColumn(name = "catalog_id")
    private Catalog catalog;
}
