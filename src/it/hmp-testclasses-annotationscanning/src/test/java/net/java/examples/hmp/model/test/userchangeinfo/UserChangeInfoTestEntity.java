package net.java.examples.hmp.model.test.userchangeinfo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import net.java.examples.hmp.model.domain.callback.UserChangeTrackListener;
import net.java.examples.hmp.model.domain.userchangeinfo.BaseUserChangeTrackedEntity;

/**
 * Entity zum Testen der UserChangeInfo Funktionalitaet.
 */
@Entity
@Table(name = "HMP_UCI_TEST_ENTITY")
@EntityListeners(UserChangeTrackListener.class)
public class UserChangeInfoTestEntity extends BaseUserChangeTrackedEntity<Long> {

    private static final long serialVersionUID = -530295910082787747L;

    @Id
    @Column(name = "ID", nullable = false)
    @GeneratedValue(generator = "UserchangeInfoTestEntitySeq")
    @SequenceGenerator(name = "UserchangeInfoTestEntitySeq", sequenceName = "HMP_SEQ", allocationSize = 1)
    private Long id;

    @Column(name = "NAME", nullable = false)
    private String name;

    @Override
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "UserChangeInfoTestEntity [id=" + id + ", name=" + name + "]";
    }
}
