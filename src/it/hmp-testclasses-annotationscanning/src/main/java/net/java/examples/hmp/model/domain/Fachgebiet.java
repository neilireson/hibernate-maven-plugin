package net.java.examples.hmp.model.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Version;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

import net.java.examples.hmp.model.domain.callback.UserChangeTrackListener;
import net.java.examples.hmp.model.domain.userchangeinfo.BaseUserChangeTrackedEntity;

@Entity
@Table(name = "HMP_FACHGEBIET")
@EntityListeners(UserChangeTrackListener.class)
public class Fachgebiet extends BaseUserChangeTrackedEntity<Long> implements Serializable {

    private static final long serialVersionUID = -2362501487481778376L;

    @Id
    @Column(name = "ID", nullable = false)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "FachgebietSeq")
    @SequenceGenerator(name = "FachgebietSeq", sequenceName = "HMP_SEQ", allocationSize = 1)
    private Long id;

    @NotBlank
    @Size(max = 2)
    @Column(name = "CODE", nullable = false)
    private String code;

    @NotBlank
    @Size(max = 500)
    @Column(name = "NAME", nullable = false)
    private String name;

    @Version
    @Column(name = "VERSION")
    private Long version;

    @Override
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getVersion() {
        return version;
    }

    public void setVersion(Long version) {
        this.version = version;
    }
}
