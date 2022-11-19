package net.java.examples.hmp.service;

import net.java.examples.hmp.model.test.userchangeinfo.UserChangeInfoTestEntity;

/**
 * Testservice fuer UserChangeInfo Tests
 */
public interface IUserChangeInfoTestService {

    /**
     * persist ausfuehren
     * 
     * @param entity UserChangeInfoTestEntity
     */
    void persistData(UserChangeInfoTestEntity entity);

    /**
     * merge+flush ausfuehren
     * 
     * @param entity UserChangeInfoTestEntity
     * @return gespeicherte Daten
     */
    UserChangeInfoTestEntity mergeData(UserChangeInfoTestEntity entity);

    /**
     * Find by id
     * 
     * @param id ID fuer entity
     * @return UserChangeInfoTestEntity
     */
    UserChangeInfoTestEntity getData(Long id);
}
