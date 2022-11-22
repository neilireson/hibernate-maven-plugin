# hibernate-maven-plugin

Update of http://juplo.de/hibernate-maven-plugin/

It has removed the support for hibernate 4 and Attempts to get the plugin working with jdk11 and hibernate <=5.2 and >=5.3.

There are two branches for this:
   * hibernate-5.2.18
   * hibernate-5.4.33

Neither of the branches successfully pass the unit tests but one of them seems like it is not possible to pass as it involves matching a random value.

The hibernate-5.2.18 branch also fails on another two tests as it throws a NPE which I think is caused by an incompatibility between hibernate 5.2 and jdk11.

## To Do

The code is still pretty messy, and code do with a good deal of refactoring.

At the moment both branches produce the same Maven artefact however these should be separated. 

Also it would be good to differentiate this code from the juplo.de:hibernate-maven-plugin so that they are not confused as being compatible. Therefore should probably change the artefact group id.
