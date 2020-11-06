package com.soict.project_exam.entities.user;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Data
public class UserRole implements Serializable {

    private static final long serialVersionUID=1L;

    @EmbeddedId
    private UserRoleId userRoleId;

    //@MapsId la turong thuoc tinh cua UserRole
    @ManyToOne
    @MapsId("roleId")
    private Role role;

    @ManyToOne
    @MapsId("userId")
    private User user;

    private Boolean deleted;

}
