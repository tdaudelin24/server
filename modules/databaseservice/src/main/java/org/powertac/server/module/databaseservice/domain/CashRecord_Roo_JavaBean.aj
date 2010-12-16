// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.powertac.server.module.databaseservice.domain;

import java.lang.Boolean;
import java.lang.Long;
import java.lang.String;
import java.math.BigDecimal;
import org.joda.time.LocalDateTime;
import org.powertac.server.module.databaseservice.domain.Broker;
import org.powertac.server.module.databaseservice.domain.Competition;

privileged aspect CashRecord_Roo_JavaBean {
    
    public Competition CashRecord.getCompetition() {
        return this.competition;
    }
    
    public void CashRecord.setCompetition(Competition competition) {
        this.competition = competition;
    }
    
    public Broker CashRecord.getBroker() {
        return this.broker;
    }
    
    public void CashRecord.setBroker(Broker broker) {
        this.broker = broker;
    }
    
    public BigDecimal CashRecord.getAmount() {
        return this.amount;
    }
    
    public void CashRecord.setAmount(BigDecimal amount) {
        this.amount = amount;
    }
    
    public BigDecimal CashRecord.getBalance() {
        return this.balance;
    }
    
    public void CashRecord.setBalance(BigDecimal balance) {
        this.balance = balance;
    }
    
    public String CashRecord.getDescription() {
        return this.description;
    }
    
    public void CashRecord.setDescription(String description) {
        this.description = description;
    }
    
    public Boolean CashRecord.getLatest() {
        return this.latest;
    }
    
    public void CashRecord.setLatest(Boolean latest) {
        this.latest = latest;
    }
    
    public Long CashRecord.getTransactionId() {
        return this.transactionId;
    }
    
    public void CashRecord.setTransactionId(Long transactionId) {
        this.transactionId = transactionId;
    }
    
    public LocalDateTime CashRecord.getDateCreated() {
        return this.dateCreated;
    }
    
    public void CashRecord.setDateCreated(LocalDateTime dateCreated) {
        this.dateCreated = dateCreated;
    }
    
}