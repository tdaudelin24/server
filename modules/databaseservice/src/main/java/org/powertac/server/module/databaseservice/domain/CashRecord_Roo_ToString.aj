// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.powertac.server.module.databaseservice.domain;

import java.lang.String;

privileged aspect CashRecord_Roo_ToString {
    
    public String CashRecord.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Version: ").append(getVersion()).append(", ");
        sb.append("Competition: ").append(getCompetition()).append(", ");
        sb.append("Broker: ").append(getBroker()).append(", ");
        sb.append("Amount: ").append(getAmount()).append(", ");
        sb.append("Balance: ").append(getBalance()).append(", ");
        sb.append("Description: ").append(getDescription()).append(", ");
        sb.append("Latest: ").append(getLatest()).append(", ");
        sb.append("TransactionId: ").append(getTransactionId()).append(", ");
        sb.append("DateCreated: ").append(getDateCreated());
        return sb.toString();
    }
    
}
