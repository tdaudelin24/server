// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.powertac.server.module.databaseservice.domain;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.powertac.server.module.databaseservice.domain.CustomerDataOnDemand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CustomerIntegrationTest_Roo_IntegrationTest {
    
    declare @type: CustomerIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: CustomerIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    declare @type: CustomerIntegrationTest: @Transactional;
    
    @Autowired
    private CustomerDataOnDemand CustomerIntegrationTest.dod;
    
    @Test
    public void CustomerIntegrationTest.testCountCustomers() {
        org.junit.Assert.assertNotNull("Data on demand for 'Customer' failed to initialize correctly", dod.getRandomCustomer());
        long count = org.powertac.server.module.databaseservice.domain.Customer.countCustomers();
        org.junit.Assert.assertTrue("Counter for 'Customer' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void CustomerIntegrationTest.testFindCustomer() {
        org.powertac.server.module.databaseservice.domain.Customer obj = dod.getRandomCustomer();
        org.junit.Assert.assertNotNull("Data on demand for 'Customer' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Customer' failed to provide an identifier", id);
        obj = org.powertac.server.module.databaseservice.domain.Customer.findCustomer(id);
        org.junit.Assert.assertNotNull("Find method for 'Customer' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'Customer' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void CustomerIntegrationTest.testFindAllCustomers() {
        org.junit.Assert.assertNotNull("Data on demand for 'Customer' failed to initialize correctly", dod.getRandomCustomer());
        long count = org.powertac.server.module.databaseservice.domain.Customer.countCustomers();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'Customer', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<org.powertac.server.module.databaseservice.domain.Customer> result = org.powertac.server.module.databaseservice.domain.Customer.findAllCustomers();
        org.junit.Assert.assertNotNull("Find all method for 'Customer' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'Customer' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void CustomerIntegrationTest.testFindCustomerEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'Customer' failed to initialize correctly", dod.getRandomCustomer());
        long count = org.powertac.server.module.databaseservice.domain.Customer.countCustomers();
        if (count > 20) count = 20;
        java.util.List<org.powertac.server.module.databaseservice.domain.Customer> result = org.powertac.server.module.databaseservice.domain.Customer.findCustomerEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'Customer' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'Customer' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void CustomerIntegrationTest.testFlush() {
        org.powertac.server.module.databaseservice.domain.Customer obj = dod.getRandomCustomer();
        org.junit.Assert.assertNotNull("Data on demand for 'Customer' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Customer' failed to provide an identifier", id);
        obj = org.powertac.server.module.databaseservice.domain.Customer.findCustomer(id);
        org.junit.Assert.assertNotNull("Find method for 'Customer' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyCustomer(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'Customer' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void CustomerIntegrationTest.testMerge() {
        org.powertac.server.module.databaseservice.domain.Customer obj = dod.getRandomCustomer();
        org.junit.Assert.assertNotNull("Data on demand for 'Customer' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Customer' failed to provide an identifier", id);
        obj = org.powertac.server.module.databaseservice.domain.Customer.findCustomer(id);
        boolean modified =  dod.modifyCustomer(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        org.powertac.server.module.databaseservice.domain.Customer merged = (org.powertac.server.module.databaseservice.domain.Customer) obj.merge();
        obj.flush();
        org.junit.Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        org.junit.Assert.assertTrue("Version for 'Customer' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void CustomerIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'Customer' failed to initialize correctly", dod.getRandomCustomer());
        org.powertac.server.module.databaseservice.domain.Customer obj = dod.getNewTransientCustomer(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'Customer' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'Customer' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'Customer' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void CustomerIntegrationTest.testRemove() {
        org.powertac.server.module.databaseservice.domain.Customer obj = dod.getRandomCustomer();
        org.junit.Assert.assertNotNull("Data on demand for 'Customer' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Customer' failed to provide an identifier", id);
        obj = org.powertac.server.module.databaseservice.domain.Customer.findCustomer(id);
        obj.remove();
        obj.flush();
        org.junit.Assert.assertNull("Failed to remove 'Customer' with identifier '" + id + "'", org.powertac.server.module.databaseservice.domain.Customer.findCustomer(id));
    }
    
}