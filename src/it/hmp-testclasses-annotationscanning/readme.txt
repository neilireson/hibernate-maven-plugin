Example-Project "Hibernate-Maven-Plugin Testclasses Annotation-Scanning"

This is a small Exampleproject for a base Database-Integrationtest, with the use of the "Hibernate Maven Plugin" from de.juplo for the automatic Generation and the Execution of the create-schema-sql-script. 

The hibernate-maven-plugin - defined in the plugins-section in the pom.xml -  scans the code for Entities to create the schema-script. Entity-Scanning is or can be done in following 3 locations:
*) Project-Classes: By default, the plugin scans for @Entitiy-Annotated classes under "target/classes".
*) Project-Testclasses: By default, the plugin scans for @Entitiy-Annotated classes under "target/test-classes".
*) Project-Dependencies: Compile-Time-Dependencies wil also be scanned.

Test-Structure:
-) Basic Code for User-Change-Tracking over JPA EntityListener: Some basic Interfaces and Classes for a automatic tracking of the User and the Date at the Phases PRE-PERSIST and PRE-UPDATE are located under src/main/java.
-) The important Test-Entity "UserChangeInfoTest" for testing the userinfo-tracking and the Testservice-Declaration and -Implementation for storing/updating/reading such Test-Entity is located under src/test/java. 
-) Integrationtest(s): The Integrationtest "UserChangeInfoTest" is based on Arquillian. Arquillian starts an OpenEJB Embedded Container, seeds the Database with Testdata, and executes the Integrationtest.
-) Dataset-Files, and different configurationfiles for Arquillian, JPA, Logback,... are located under src/test/resources.


Building the Project:
As usual: To build and install the project into your local maven-repository, execute "mvn install".

