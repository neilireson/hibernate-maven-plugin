package net.java.examples.hmp.model.domain.extension;

import java.util.Date;

public interface IUserChangeInfo {

    Date getCreateDate();

    void setCreateDate(Date createDate);

    Date getChangeDate();

    void setChangeDate(Date changeDate);

    String getCreateUser();

    void setCreateUser(String createUser);

    String getChangeUser();

    void setChangeUser(String changeUser);
}
