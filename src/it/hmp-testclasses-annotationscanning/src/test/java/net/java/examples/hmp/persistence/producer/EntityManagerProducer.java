package net.java.examples.hmp.persistence.producer;

import javax.enterprise.context.RequestScoped;
import javax.enterprise.inject.Produces;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

public class EntityManagerProducer {

    @PersistenceContext(unitName = "persistence-hmp")
    private EntityManager em;

    /**
     * Liefert den BOA-EntityManager.
     * 
     * @return EntityManager
     */
    @Produces
    @RequestScoped
    public EntityManager createEntityManager() {
        return em;
    }
}
