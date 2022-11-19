package net.java.examples.hmp.model.domain;

import java.io.Serializable;

/**
 * Basis interface fuer alle entities. Jede entity muss eine serialisierbare ID liefern.
 * 
 * @param <T> Klassentyp fuer ID
 */
public interface IBaseEntity<T extends Serializable> {

    /**
     * Liefert die Id.
     * 
     * @return T die Id
     */
    T getId();

}
