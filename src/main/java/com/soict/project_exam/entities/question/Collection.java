package com.soict.project_exam.entities.question;

import com.soict.project_exam.entities.exam.Group;
import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "pro_collection")
@Data
public class Collections {

    private static final long serialVersionId=1l;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String name;

    private Boolean deleted;

    @ManyToOne(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
    @JoinColumn(name = "class_id")
    private Group group;

}
