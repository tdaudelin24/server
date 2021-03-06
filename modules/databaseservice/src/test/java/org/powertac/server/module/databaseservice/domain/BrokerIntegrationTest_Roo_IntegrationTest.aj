// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.powertac.server.module.databaseservice.domain;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.powertac.server.module.databaseservice.domain.BrokerDataOnDemand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect BrokerIntegrationTest_Roo_IntegrationTest {
    
    declare @type: BrokerIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: BrokerIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    declare @type: BrokerIntegrationTest: @Transactional;
    
    @Autowired
    private BrokerDataOnDemand BrokerIntegrationTest.dod;
    
    @Test
    public void BrokerIntegrationTest.testCountBrokers() {
        org.junit.Assert.assertNotNull("Data on demand for 'Broker' failed to initialize correctly", dod.getRandomBroker());
        long count = org.powertac.server.module.databaseservice.domain.Broker.countBrokers();
        org.junit.Assert.assertTrue("Counter for 'Broker' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void BrokerIntegrationTest.testFindBroker() {
        org.powertac.server.module.databaseservice.domain.Broker obj = dod.getRandomBroker();
        org.junit.Assert.assertNotNull("Data on demand for 'Broker' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Broker' failed to provide an identifier", id);
        obj = org.powertac.server.module.databaseservice.domain.Broker.findBroker(id);
        org.junit.Assert.assertNotNull("Find method for 'Broker' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'Broker' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void BrokerIntegrationTest.testFindAllBrokers() {
        org.junit.Assert.assertNotNull("Data on demand for 'Broker' failed to initialize correctly", dod.getRandomBroker());
        long count = org.powertac.server.module.databaseservice.domain.Broker.countBrokers();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'Broker', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<org.powertac.server.module.databaseservice.domain.Broker> result = org.powertac.server.module.databaseservice.domain.Broker.findAllBrokers();
        org.junit.Assert.assertNotNull("Find all method for 'Broker' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'Broker' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void BrokerIntegrationTest.testFindBrokerEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'Broker' failed to initialize correctly", dod.getRandomBroker());
        long count = org.powertac.server.module.databaseservice.domain.Broker.countBrokers();
        if (count > 20) count = 20;
        java.util.List<org.powertac.server.module.databaseservice.domain.Broker> result = org.powertac.server.module.databaseservice.domain.Broker.findBrokerEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'Broker' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'Broker' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void BrokerIntegrationTest.testFlush() {
        org.powertac.server.module.databaseservice.domain.Broker obj = dod.getRandomBroker();
        org.junit.Assert.assertNotNull("Data on demand for 'Broker' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Broker' failed to provide an identifier", id);
        obj = org.powertac.server.module.databaseservice.domain.Broker.findBroker(id);
        org.junit.Assert.assertNotNull("Find method for 'Broker' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyBroker(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'Broker' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void BrokerIntegrationTest.testMerge() {
        org.powertac.server.module.databaseservice.domain.Broker obj = dod.getRandomBroker();
        org.junit.Assert.assertNotNull("Data on demand for 'Broker' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Broker' failed to provide an identifier", id);
        obj = org.powertac.server.module.databaseservice.domain.Broker.findBroker(id);
        boolean modified =  dod.modifyBroker(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        org.powertac.server.module.databaseservice.domain.Broker merged = (org.powertac.server.module.databaseservice.domain.Broker) obj.merge();
        obj.flush();
        org.junit.Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        org.junit.Assert.assertTrue("Version for 'Broker' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void BrokerIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'Broker' failed to initialize correctly", dod.getRandomBroker());
        org.powertac.server.module.databaseservice.domain.Broker obj = dod.getNewTransientBroker(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'Broker' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'Broker' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'Broker' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void BrokerIntegrationTest.testRemove() {
        org.powertac.server.module.databaseservice.domain.Broker obj = dod.getRandomBroker();
        org.junit.Assert.assertNotNull("Data on demand for 'Broker' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Broker' failed to provide an identifier", id);
        obj = org.powertac.server.module.databaseservice.domain.Broker.findBroker(id);
        obj.remove();
        obj.flush();
        org.junit.Assert.assertNull("Failed to remove 'Broker' with identifier '" + id + "'", org.powertac.server.module.databaseservice.domain.Broker.findBroker(id));
    }
    
}
