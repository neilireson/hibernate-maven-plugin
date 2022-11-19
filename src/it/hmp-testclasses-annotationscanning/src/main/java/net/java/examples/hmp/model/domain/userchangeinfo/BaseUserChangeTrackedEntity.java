package net.java.examples.hmp.model.domain.userchangeinfo;

import java.io.Serializable;

import javax.persistence.Embedded;
import javax.persistence.MappedSuperclass;

import net.java.examples.hmp.model.domain.BaseEntity;
import net.java.examples.hmp.model.domain.extension.IUserChangeTrackable;

@MappedSuperclass
public abstract class BaseUserChangeTrackedEntity<T extends Serializable> extends BaseEntity<T> implements IUserChangeTrackable {

    private static final long serialVersionUID = -7850597447088838323L;

    @Embedded
    private UserChangeInfo userChangeInfo = new UserChangeInfo();

    @Override
    public UserChangeInfo getUserChangeInfo() {
        // Workaround for Hibernate! For detailed information see this link: https://hibernate.atlassian.net/browse/HHH-7610
        if (this.userChangeInfo == null) {
            this.userChangeInfo = new UserChangeInfo();
        }
        return this.userChangeInfo;
    }

    public void setUserChangeInfo(UserChangeInfo userChangeInfo) {
        this.userChangeInfo = userChangeInfo;
    }
}
