package net.java.examples.hmp.service.impl;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import net.java.examples.hmp.model.test.userchangeinfo.UserChangeInfoTestEntity;
import net.java.examples.hmp.service.IUserChangeInfoTestService;

@Stateless
public class UserChangeInfoTestService implements IUserChangeInfoTestService {

    @PersistenceContext
    private EntityManager em;

    @Override
    public void persistData(UserChangeInfoTestEntity entity) {
        em.persist(entity);
        em.flush();
    }

    @Override
    public UserChangeInfoTestEntity mergeData(UserChangeInfoTestEntity entity) {
        em.merge(entity);
        em.flush();

        return getData(entity.getId());
    }

    @Override
    public UserChangeInfoTestEntity getData(Long id) {
        return em.find(UserChangeInfoTestEntity.class, id);
    }
}
