// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.powertac.server.module.databaseservice.domain;

import java.util.List;
import java.util.Random;
import org.powertac.server.module.databaseservice.domain.Tariff;
import org.springframework.stereotype.Component;

privileged aspect TariffDataOnDemand_Roo_DataOnDemand {
    
    declare @type: TariffDataOnDemand: @Component;
    
    private Random TariffDataOnDemand.rnd = new java.security.SecureRandom();
    
    private List<Tariff> TariffDataOnDemand.data;
    
    public Tariff TariffDataOnDemand.getNewTransientTariff(int index) {
        org.powertac.server.module.databaseservice.domain.Tariff obj = new org.powertac.server.module.databaseservice.domain.Tariff();
        obj.setBaseFee(new java.math.BigDecimal(index));
        obj.setBroker(null);
        obj.setCompetition(null);
        obj.setContractEndDate(null);
        obj.setContractStartDate(null);
        obj.setCustomer(null);
        obj.setDateCreated(null);
        obj.setExitFee(new java.math.BigDecimal(index));
        obj.setIsDynamic(Boolean.TRUE);
        obj.setIsNegotiable(Boolean.TRUE);
        obj.setPowerConsumptionPrice0(new java.math.BigDecimal(index));
        obj.setPowerConsumptionPrice1(new java.math.BigDecimal(index));
        obj.setPowerConsumptionPrice10(new java.math.BigDecimal(index));
        obj.setPowerConsumptionPrice11(new java.math.BigDecimal(index));
        obj.setPowerConsumptionPrice12(new java.math.BigDecimal(index));
        obj.setPowerConsumptionPrice13(new java.math.BigDecimal(index));
        obj.setPowerConsumptionPrice14(new java.math.BigDecimal(index));
        obj.setPowerConsumptionPrice15(new java.math.BigDecimal(index));
        obj.setPowerConsumptionPrice16(new java.math.BigDecimal(index));
        obj.setPowerConsumptionPrice17(new java.math.BigDecimal(index));
        obj.setPowerConsumptionPrice18(new java.math.BigDecimal(index));
        obj.setPowerConsumptionPrice19(new java.math.BigDecimal(index));
        obj.setPowerConsumptionPrice2(new java.math.BigDecimal(index));
        obj.setPowerConsumptionPrice20(new java.math.BigDecimal(index));
        obj.setPowerConsumptionPrice21(new java.math.BigDecimal(index));
        obj.setPowerConsumptionPrice22(new java.math.BigDecimal(index));
        obj.setPowerConsumptionPrice23(new java.math.BigDecimal(index));
        obj.setPowerConsumptionPrice3(new java.math.BigDecimal(index));
        obj.setPowerConsumptionPrice4(new java.math.BigDecimal(index));
        obj.setPowerConsumptionPrice5(new java.math.BigDecimal(index));
        obj.setPowerConsumptionPrice6(new java.math.BigDecimal(index));
        obj.setPowerConsumptionPrice7(new java.math.BigDecimal(index));
        obj.setPowerConsumptionPrice8(new java.math.BigDecimal(index));
        obj.setPowerConsumptionPrice9(new java.math.BigDecimal(index));
        obj.setPowerConsumptionSurcharge(new java.math.BigDecimal(index));
        obj.setPowerConsumptionThreshold(new java.math.BigDecimal(index));
        obj.setPowerProductionPrice0(new java.math.BigDecimal(index));
        obj.setPowerProductionPrice1(new java.math.BigDecimal(index));
        obj.setPowerProductionPrice10(new java.math.BigDecimal(index));
        obj.setPowerProductionPrice11(new java.math.BigDecimal(index));
        obj.setPowerProductionPrice12(new java.math.BigDecimal(index));
        obj.setPowerProductionPrice13(new java.math.BigDecimal(index));
        obj.setPowerProductionPrice14(new java.math.BigDecimal(index));
        obj.setPowerProductionPrice15(new java.math.BigDecimal(index));
        obj.setPowerProductionPrice16(new java.math.BigDecimal(index));
        obj.setPowerProductionPrice17(new java.math.BigDecimal(index));
        obj.setPowerProductionPrice18(new java.math.BigDecimal(index));
        obj.setPowerProductionPrice19(new java.math.BigDecimal(index));
        obj.setPowerProductionPrice2(new java.math.BigDecimal(index));
        obj.setPowerProductionPrice20(new java.math.BigDecimal(index));
        obj.setPowerProductionPrice21(new java.math.BigDecimal(index));
        obj.setPowerProductionPrice22(new java.math.BigDecimal(index));
        obj.setPowerProductionPrice23(new java.math.BigDecimal(index));
        obj.setPowerProductionPrice3(new java.math.BigDecimal(index));
        obj.setPowerProductionPrice4(new java.math.BigDecimal(index));
        obj.setPowerProductionPrice5(new java.math.BigDecimal(index));
        obj.setPowerProductionPrice6(new java.math.BigDecimal(index));
        obj.setPowerProductionPrice7(new java.math.BigDecimal(index));
        obj.setPowerProductionPrice8(new java.math.BigDecimal(index));
        obj.setPowerProductionPrice9(new java.math.BigDecimal(index));
        obj.setPowerProductionSurcharge(new java.math.BigDecimal(index));
        obj.setPowerProductionThreshold(new java.math.BigDecimal(index));
        obj.setSignupFee(new java.math.BigDecimal(index));
        obj.setTariffState(null);
        return obj;
    }
    
    public Tariff TariffDataOnDemand.getSpecificTariff(int index) {
        init();
        if (index < 0) index = 0;
        if (index > (data.size() - 1)) index = data.size() - 1;
        Tariff obj = data.get(index);
        return Tariff.findTariff(obj.getId());
    }
    
    public Tariff TariffDataOnDemand.getRandomTariff() {
        init();
        Tariff obj = data.get(rnd.nextInt(data.size()));
        return Tariff.findTariff(obj.getId());
    }
    
    public boolean TariffDataOnDemand.modifyTariff(Tariff obj) {
        return false;
    }
    
    public void TariffDataOnDemand.init() {
        data = org.powertac.server.module.databaseservice.domain.Tariff.findTariffEntries(0, 10);
        if (data == null) throw new IllegalStateException("Find entries implementation for 'Tariff' illegally returned null");
        if (!data.isEmpty()) {
            return;
        }
        
        data = new java.util.ArrayList<org.powertac.server.module.databaseservice.domain.Tariff>();
        for (int i = 0; i < 10; i++) {
            org.powertac.server.module.databaseservice.domain.Tariff obj = getNewTransientTariff(i);
            obj.persist();
            obj.flush();
            data.add(obj);
        }
    }
    
}
