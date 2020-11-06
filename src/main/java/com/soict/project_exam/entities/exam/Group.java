package com.soict.project_exam.entities.exam;

import com.soict.project_exam.entities.base.BaseUserEntity;
import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "pro_class")
@Data
public class AppClass {

    private static final long serialVersionId=1l;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    // code of class, allow student join to class if they has this code
    @Column(length = 30)
    private String code;

    private String name;

    private Boolean deleted;
}
