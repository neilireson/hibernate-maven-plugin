package net.java.examples.hmp.model.domain.userchangeinfo;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;

import net.java.examples.hmp.model.domain.extension.IUserChangeInfo;

@Embeddable
public class UserChangeInfo implements IUserChangeInfo, Serializable {

    private static final long serialVersionUID = -1372176907214369831L;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "ERSTELLT_AM")
    private Date createDate;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "GEAENDERT_AM")
    private Date changeDate;

    @Size(max = 20)
    @Column(name = "ERSTELLT_VON")
    private String createUser;

    @Size(max = 20)
    @Column(name = "GEAENDERT_VON")
    private String changeUser;

    @Override
    public Date getCreateDate() {
        return createDate;
    }

    @Override
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    @Override
    public Date getChangeDate() {
        return changeDate;
    }

    @Override
    public void setChangeDate(Date changeDate) {
        this.changeDate = changeDate;
    }

    @Override
    public String getCreateUser() {
        return createUser;
    }

    @Override
    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }

    @Override
    public String getChangeUser() {
        return changeUser;
    }

    @Override
    public void setChangeUser(String changeUser) {
        this.changeUser = changeUser;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public String toString() {
        return "UserChangeInfo [createDate=" + createDate + ", createUser=" + createUser + ", changeDate=" + changeDate + ", changeUser=" + changeUser + "]";
    }
}
