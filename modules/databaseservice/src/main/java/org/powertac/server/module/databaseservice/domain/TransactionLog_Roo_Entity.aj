// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.powertac.server.module.databaseservice.domain;

import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.powertac.server.module.databaseservice.domain.TransactionLog;
import org.springframework.transaction.annotation.Transactional;

privileged aspect TransactionLog_Roo_Entity {
    
    declare @type: TransactionLog: @Entity;
    
    @PersistenceContext
    transient EntityManager TransactionLog.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long TransactionLog.id;
    
    @Version
    @Column(name = "version")
    private Integer TransactionLog.version;
    
    public Long TransactionLog.getId() {
        return this.id;
    }
    
    public void TransactionLog.setId(Long id) {
        this.id = id;
    }
    
    public Integer TransactionLog.getVersion() {
        return this.version;
    }
    
    public void TransactionLog.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void TransactionLog.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void TransactionLog.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            TransactionLog attached = this.entityManager.find(this.getClass(), this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void TransactionLog.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public TransactionLog TransactionLog.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        TransactionLog merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager TransactionLog.entityManager() {
        EntityManager em = new TransactionLog().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long TransactionLog.countTransactionLogs() {
        return entityManager().createQuery("select count(o) from TransactionLog o", Long.class).getSingleResult();
    }
    
    public static List<TransactionLog> TransactionLog.findAllTransactionLogs() {
        return entityManager().createQuery("select o from TransactionLog o", TransactionLog.class).getResultList();
    }
    
    public static TransactionLog TransactionLog.findTransactionLog(Long id) {
        if (id == null) return null;
        return entityManager().find(TransactionLog.class, id);
    }
    
    public static List<TransactionLog> TransactionLog.findTransactionLogEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("select o from TransactionLog o", TransactionLog.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
