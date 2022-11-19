package net.java.examples.hmp.model.domain;

import java.io.Serializable;

import org.hibernate.proxy.HibernateProxy;

public abstract class BaseEntity<T extends Serializable> implements IBaseEntity<T>, Serializable {

    private static final long serialVersionUID = -5828097391861473323L;

    /**
     * {@inheritDoc}
     */
    @Override
    public int hashCode() {
        int result;
        if (getId() == null) {
            result = super.hashCode();
        } else {
            final int prime = 31;
            result = 1;
            result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        }
        return result;
    }

    @Override
    public boolean equals(final Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }

        Class<?> otherClass = null;
        if (obj instanceof HibernateProxy) {
            otherClass = ((HibernateProxy) obj).getHibernateLazyInitializer().getPersistentClass();
        } else {
            otherClass = obj.getClass();
        }
        if (getClass() != otherClass) {
            return false;
        }

        return compareEqualityWithThisInstance((BaseEntity<?>) obj);
    }

    private boolean compareEqualityWithThisInstance(BaseEntity<?> otherEntity) {
        if (getId() != null) {
            return getId().equals(otherEntity.getId());
        }

        return false;
    }

    @Override
    public String toString() {
        return this.getClass().getName() + "[id=" + getId() + "]";
    }
}
