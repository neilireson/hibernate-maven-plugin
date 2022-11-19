package net.java.examples.hmp.model.domain.callback;

import java.util.Date;

import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import net.java.examples.hmp.model.domain.extension.IUserChangeInfo;
import net.java.examples.hmp.model.domain.extension.IUserChangeTrackable;

public class UserChangeTrackListener {

    public static final String DEFAULT_USER_NAME = "System";

    private static final Logger LOG = LoggerFactory.getLogger(UserChangeTrackListener.class);

    @PreUpdate
    protected void preUpdate(IUserChangeTrackable userChangeTrackable) {
        IUserChangeInfo userChangeInfo = userChangeTrackable.getUserChangeInfo();

        if (userChangeInfo == null) {
            LOG.warn("IUserChangeInfo of entity {} is null, no change tracking possible.", userChangeTrackable);
            return;
        }

        userChangeInfo.setChangeDate(new Date());
        userChangeInfo.setChangeUser(getCurrentUser());

        if (LOG.isTraceEnabled()) {
            LOG.trace("onPreUpdate objectType={}, userChangeInfo={}", userChangeTrackable.getClass().getName(), userChangeInfo.toString());
        }
    }

    @PrePersist
    protected void prePersist(IUserChangeTrackable userChangeTrackable) {
        IUserChangeInfo userChangeInfo = userChangeTrackable.getUserChangeInfo();

        userChangeInfo.setCreateDate(new Date());
        userChangeInfo.setChangeDate(userChangeInfo.getCreateDate());
        userChangeInfo.setCreateUser(getCurrentUser());
        userChangeInfo.setChangeUser(userChangeInfo.getCreateUser());

        if (LOG.isTraceEnabled()) {
            LOG.trace("onPrePersist objectType={}, userChangeInfo={}", userChangeTrackable.getClass().getName(), userChangeInfo.toString());
        }
    }

    /**
     * Real methodcode replaced with example-code.
     * 
     * @return Always displays the same constant string
     */
    protected String getCurrentUser() {

        return DEFAULT_USER_NAME;
    }
}
