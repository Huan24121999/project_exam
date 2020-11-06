package com.soict.project_exam.entities.user;

import com.soict.project_exam.entities.base.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "pro_role")
@Data
public class Role extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(length = 30)
    @Enumerated(EnumType.STRING)

    private ERole name;

    private Boolean deleted;

    @OneToMany(mappedBy = "user")
    private Set<UserRole> userRoles=new HashSet<>();
}
