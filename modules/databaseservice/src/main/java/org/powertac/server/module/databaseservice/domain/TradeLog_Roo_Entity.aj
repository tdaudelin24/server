// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.powertac.server.module.databaseservice.domain;

import java.lang.Long;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import org.powertac.server.module.databaseservice.domain.TradeLog;

privileged aspect TradeLog_Roo_Entity {
    
    declare @type: TradeLog: @Entity;
    
    declare @type: TradeLog: @Inheritance(strategy = InheritanceType.JOINED);
    
    public static long TradeLog.countTradeLogs() {
        return entityManager().createQuery("select count(o) from TradeLog o", Long.class).getSingleResult();
    }
    
    public static List<TradeLog> TradeLog.findAllTradeLogs() {
        return entityManager().createQuery("select o from TradeLog o", TradeLog.class).getResultList();
    }
    
    public static TradeLog TradeLog.findTradeLog(Long id) {
        if (id == null) return null;
        return entityManager().find(TradeLog.class, id);
    }
    
    public static List<TradeLog> TradeLog.findTradeLogEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("select o from TradeLog o", TradeLog.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}