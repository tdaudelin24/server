// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.powertac.server.module.databaseservice.domain;

import java.lang.Boolean;
import org.powertac.server.module.databaseservice.domain.Broker;
import org.powertac.server.module.databaseservice.domain.Competition;

privileged aspect BrokerCompetition_Roo_JavaBean {
    
    public Broker BrokerCompetition.getBroker() {
        return this.broker;
    }
    
    public void BrokerCompetition.setBroker(Broker broker) {
        this.broker = broker;
    }
    
    public Competition BrokerCompetition.getCompetition() {
        return this.competition;
    }
    
    public void BrokerCompetition.setCompetition(Competition competition) {
        this.competition = competition;
    }
    
    public Boolean BrokerCompetition.getReady() {
        return this.ready;
    }
    
    public void BrokerCompetition.setReady(Boolean ready) {
        this.ready = ready;
    }
    
}