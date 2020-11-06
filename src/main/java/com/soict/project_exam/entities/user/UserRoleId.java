package com.soict.project_exam.entities.user;

import lombok.Data;

import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
@Data
public class UserRoleId implements Serializable {

    private static final long serialVersionUID=1l;

    private Integer roleId;

    private Integer userId;

    public int hasCode(){
        return (roleId+userId);
    }

    public boolean equals(Object object){
        if(object instanceof UserRoleId){
            UserRoleId userRoleId=(UserRoleId) object;
            if(this.userId.equals(userRoleId.userId) && this.roleId.equals(userRoleId.roleId))
                return true;
        }
        return false;
    }
}
