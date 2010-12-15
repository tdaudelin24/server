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
import org.powertac.server.module.databaseservice.domain.DepotRecord;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DepotRecord_Roo_Entity {
    
    declare @type: DepotRecord: @Entity;
    
    @PersistenceContext
    transient EntityManager DepotRecord.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long DepotRecord.id;
    
    @Version
    @Column(name = "version")
    private Integer DepotRecord.version;
    
    public Long DepotRecord.getId() {
        return this.id;
    }
    
    public void DepotRecord.setId(Long id) {
        this.id = id;
    }
    
    public Integer DepotRecord.getVersion() {
        return this.version;
    }
    
    public void DepotRecord.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void DepotRecord.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void DepotRecord.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            DepotRecord attached = this.entityManager.find(this.getClass(), this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void DepotRecord.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public DepotRecord DepotRecord.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        DepotRecord merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager DepotRecord.entityManager() {
        EntityManager em = new DepotRecord().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long DepotRecord.countDepotRecords() {
        return entityManager().createQuery("select count(o) from DepotRecord o", Long.class).getSingleResult();
    }
    
    public static List<DepotRecord> DepotRecord.findAllDepotRecords() {
        return entityManager().createQuery("select o from DepotRecord o", DepotRecord.class).getResultList();
    }
    
    public static DepotRecord DepotRecord.findDepotRecord(Long id) {
        if (id == null) return null;
        return entityManager().find(DepotRecord.class, id);
    }
    
    public static List<DepotRecord> DepotRecord.findDepotRecordEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("select o from DepotRecord o", DepotRecord.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}