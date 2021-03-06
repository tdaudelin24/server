// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.powertac.server.module.databaseservice.domain;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.powertac.server.module.databaseservice.domain.OrderbookDataOnDemand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect OrderbookIntegrationTest_Roo_IntegrationTest {
    
    declare @type: OrderbookIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: OrderbookIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    declare @type: OrderbookIntegrationTest: @Transactional;
    
    @Autowired
    private OrderbookDataOnDemand OrderbookIntegrationTest.dod;
    
    @Test
    public void OrderbookIntegrationTest.testCountOrderbooks() {
        org.junit.Assert.assertNotNull("Data on demand for 'Orderbook' failed to initialize correctly", dod.getRandomOrderbook());
        long count = org.powertac.server.module.databaseservice.domain.Orderbook.countOrderbooks();
        org.junit.Assert.assertTrue("Counter for 'Orderbook' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void OrderbookIntegrationTest.testFindOrderbook() {
        org.powertac.server.module.databaseservice.domain.Orderbook obj = dod.getRandomOrderbook();
        org.junit.Assert.assertNotNull("Data on demand for 'Orderbook' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Orderbook' failed to provide an identifier", id);
        obj = org.powertac.server.module.databaseservice.domain.Orderbook.findOrderbook(id);
        org.junit.Assert.assertNotNull("Find method for 'Orderbook' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'Orderbook' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void OrderbookIntegrationTest.testFindAllOrderbooks() {
        org.junit.Assert.assertNotNull("Data on demand for 'Orderbook' failed to initialize correctly", dod.getRandomOrderbook());
        long count = org.powertac.server.module.databaseservice.domain.Orderbook.countOrderbooks();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'Orderbook', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<org.powertac.server.module.databaseservice.domain.Orderbook> result = org.powertac.server.module.databaseservice.domain.Orderbook.findAllOrderbooks();
        org.junit.Assert.assertNotNull("Find all method for 'Orderbook' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'Orderbook' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void OrderbookIntegrationTest.testFindOrderbookEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'Orderbook' failed to initialize correctly", dod.getRandomOrderbook());
        long count = org.powertac.server.module.databaseservice.domain.Orderbook.countOrderbooks();
        if (count > 20) count = 20;
        java.util.List<org.powertac.server.module.databaseservice.domain.Orderbook> result = org.powertac.server.module.databaseservice.domain.Orderbook.findOrderbookEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'Orderbook' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'Orderbook' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void OrderbookIntegrationTest.testFlush() {
        org.powertac.server.module.databaseservice.domain.Orderbook obj = dod.getRandomOrderbook();
        org.junit.Assert.assertNotNull("Data on demand for 'Orderbook' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Orderbook' failed to provide an identifier", id);
        obj = org.powertac.server.module.databaseservice.domain.Orderbook.findOrderbook(id);
        org.junit.Assert.assertNotNull("Find method for 'Orderbook' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyOrderbook(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'Orderbook' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void OrderbookIntegrationTest.testMerge() {
        org.powertac.server.module.databaseservice.domain.Orderbook obj = dod.getRandomOrderbook();
        org.junit.Assert.assertNotNull("Data on demand for 'Orderbook' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Orderbook' failed to provide an identifier", id);
        obj = org.powertac.server.module.databaseservice.domain.Orderbook.findOrderbook(id);
        boolean modified =  dod.modifyOrderbook(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        org.powertac.server.module.databaseservice.domain.Orderbook merged = (org.powertac.server.module.databaseservice.domain.Orderbook) obj.merge();
        obj.flush();
        org.junit.Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        org.junit.Assert.assertTrue("Version for 'Orderbook' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void OrderbookIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'Orderbook' failed to initialize correctly", dod.getRandomOrderbook());
        org.powertac.server.module.databaseservice.domain.Orderbook obj = dod.getNewTransientOrderbook(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'Orderbook' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'Orderbook' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'Orderbook' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void OrderbookIntegrationTest.testRemove() {
        org.powertac.server.module.databaseservice.domain.Orderbook obj = dod.getRandomOrderbook();
        org.junit.Assert.assertNotNull("Data on demand for 'Orderbook' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Orderbook' failed to provide an identifier", id);
        obj = org.powertac.server.module.databaseservice.domain.Orderbook.findOrderbook(id);
        obj.remove();
        obj.flush();
        org.junit.Assert.assertNull("Failed to remove 'Orderbook' with identifier '" + id + "'", org.powertac.server.module.databaseservice.domain.Orderbook.findOrderbook(id));
    }
    
}
