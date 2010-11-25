package org.powertac.server.core.domain;

import org.joda.time.LocalDateTime;
import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;

import java.math.BigDecimal;

/**
 * This class models a tariff that brokers and customers can agree upon
 *
 * @author Carsten Block
 * @version 1.0
 * @since 0.8-Server
 */
public class Tariff {
  public enum TariffState {
    Published, //Tariff is publicly visible to brokers & consumers
    Revoked,                          //Previously published tariff is revoked by broker -> no longer visible, no longer subscribable / negotiatiable to new customers
    InNegotiation,                    //Specific tariff instance is currently (and privately) in negotiation between one customer and one broker
    Subscribed,                       //Specific tariff instance which one broker and one customer agreed upon (might be running already startDate <= now) or in future (startDate > now)
    Finished,                         //Tariff endDate < now; tariff is no longer valid and only kept in history
    NegotiationAborted
  }               //

  Competition competition;
  private Long tariffId;
  private Broker broker;
  private Customer customer;
  private TariffState tariffState;
  private LocalDateTime dateCreated;
  private Boolean latest;
  private Boolean isDynamic;          //can receive tariff updates during contract runtime
  private Boolean isNegotiable;       //false: a customer can only subscribe; true: a customer can start a negotiation before (possibly) subscribing

  public TariffState getTariffState() {
    return tariffState;
  }

  public void setTariffState(TariffState tariffState) {
    this.tariffState = tariffState;
  }

  /*
  *  Basic contract properties
  */
  private BigDecimal signupFee;       //one-time fee (>0) / reward (<0) charged / paid for contract signup
  private BigDecimal baseFee;         //daily base Fee (>0) / reward (<0) charged at the end of each day


  /*
   * Distinct powerConsumptionPrices
   */
  private BigDecimal powerConsumptionPrice0;     //kWh dependent power consumption fee (>0) / reward (<0) for hour 0
  private BigDecimal powerConsumptionPrice1;
  private BigDecimal powerConsumptionPrice2;
  private BigDecimal powerConsumptionPrice3;
  private BigDecimal powerConsumptionPrice4;
  private BigDecimal powerConsumptionPrice5;
  private BigDecimal powerConsumptionPrice6;
  private BigDecimal powerConsumptionPrice7;
  private BigDecimal powerConsumptionPrice8;
  private BigDecimal powerConsumptionPrice9;
  private BigDecimal powerConsumptionPrice10;
  private BigDecimal powerConsumptionPrice11;
  private BigDecimal powerConsumptionPrice12;
  private BigDecimal powerConsumptionPrice13;
  private BigDecimal powerConsumptionPrice14;
  private BigDecimal powerConsumptionPrice15;
  private BigDecimal powerConsumptionPrice16;
  private BigDecimal powerConsumptionPrice17;
  private BigDecimal powerConsumptionPrice18;
  private BigDecimal powerConsumptionPrice19;
  private BigDecimal powerConsumptionPrice20;
  private BigDecimal powerConsumptionPrice21;
  private BigDecimal powerConsumptionPrice22;
  private BigDecimal powerConsumptionPrice23;    // --- " ---"

  private BigDecimal powerProductionPrice0;     //kWh dependent power consumption fee (>0) / reward (<0) for hour 0
  private BigDecimal powerProductionPrice1;
  private BigDecimal powerProductionPrice2;
  private BigDecimal powerProductionPrice3;
  private BigDecimal powerProductionPrice4;
  private BigDecimal powerProductionPrice5;
  private BigDecimal powerProductionPrice6;
  private BigDecimal powerProductionPrice7;
  private BigDecimal powerProductionPrice8;
  private BigDecimal powerProductionPrice9;
  private BigDecimal powerProductionPrice10;
  private BigDecimal powerProductionPrice11;
  private BigDecimal powerProductionPrice12;
  private BigDecimal powerProductionPrice13;
  private BigDecimal powerProductionPrice14;
  private BigDecimal powerProductionPrice15;
  private BigDecimal powerProductionPrice16;
  private BigDecimal powerProductionPrice17;
  private BigDecimal powerProductionPrice18;
  private BigDecimal powerProductionPrice19;
  private BigDecimal powerProductionPrice20;
  private BigDecimal powerProductionPrice21;
  private BigDecimal powerProductionPrice22;
  private BigDecimal powerProductionPrice23;      // --- " ---"

  private LocalDateTime contractStartDate;        //defines a specific contract start Date, may be specified by customer or broker
  private LocalDateTime contractEndDate;          //defines a specific contract end Date, may be specified by customer or broker

  /*
  * These attributes allow a broker to specify minimum and maximum contract runtimes, e.g. min one month
  */
  private Integer minimumContractRuntime;         //null or min days; has to be consistent with contractEndTime - contractStartTime
  private Integer maximumContractRuntime;         //null or max days; has to be consistent with contractEndTime - contractStartTime

  /*
  * These attributes allow modeling a two-part tariff
  */
  private BigDecimal powerConsumptionThreshold;   // >0: threshold consumption level; consumption exceeding this threshold leads to a surcharge (see below) being added to the time dependent powerConsumptionPrice
  private BigDecimal powerConsumptionSurcharge;   // % fee added to hourly powerConsumptionPrice if consumption exceeds threshold (see above)

  private BigDecimal powerProductionThreshold;    // >0: threshold production level; production exceeding this threshold leads to a surcharge (see below) being added to the time dependent powerProductionPrice
  private BigDecimal powerProductionSurcharge;    // % fee added to hourly powerProductionPrice if production exceeds threshold (see above)
}