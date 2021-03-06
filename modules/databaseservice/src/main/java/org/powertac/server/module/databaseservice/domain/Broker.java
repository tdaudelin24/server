package org.powertac.server.module.databaseservice.domain;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.serializable.RooSerializable;
import org.springframework.roo.addon.tostring.RooToString;

import javax.persistence.CascadeType;
import javax.persistence.OneToMany;
import java.util.HashSet;
import java.util.Set;

@RooJavaBean
@RooToString
@RooEntity
@RooSerializable
public class Broker {

    private String authToken;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "broker")
    private Set<BrokerCompetition> brokerCompetitions = new HashSet<BrokerCompetition>();

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "broker")
    private Set<CashRecord> cashRecords = new HashSet<CashRecord>();

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "broker")
    private Set<Tariff> tariffs = new HashSet<Tariff>();
}
