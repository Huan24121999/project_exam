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
@Table(name = "pro_user",
        uniqueConstraints = {
                @UniqueConstraint(columnNames = "username"),
                @UniqueConstraint(columnNames = "email")
        })
@Data
public class User extends BaseEntity {
    private static final long serialVersionID=1l;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(length = 50)
    private String username;

    @Column(length = 80)
    private String password;

    private String email;

    @Column(name = "phone_number",length = 15)
    private String phoneNumber;

    private Boolean deleted;

    private String image;

   @OneToMany(mappedBy = "role")
    private Set<UserRole> roles=new HashSet<>();
}
