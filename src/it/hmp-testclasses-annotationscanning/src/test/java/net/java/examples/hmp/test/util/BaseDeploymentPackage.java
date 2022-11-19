package net.java.examples.hmp.test.util;

import org.jboss.shrinkwrap.api.ArchivePath;
import org.jboss.shrinkwrap.api.Filter;
import org.jboss.shrinkwrap.api.ShrinkWrap;
import org.jboss.shrinkwrap.api.spec.WebArchive;
import org.jboss.shrinkwrap.resolver.api.maven.Maven;
import org.jboss.shrinkwrap.resolver.api.maven.PomEquippedResolveStage;

import net.java.examples.hmp.model.domain.BaseEntity;
import net.java.examples.hmp.model.domain.callback.UserChangeTrackListener;
import net.java.examples.hmp.model.domain.extension.IUserChangeInfo;
import net.java.examples.hmp.model.domain.extension.IUserChangeTrackable;
import net.java.examples.hmp.model.domain.userchangeinfo.BaseUserChangeTrackedEntity;
import net.java.examples.hmp.model.domain.userchangeinfo.UserChangeInfo;
import net.java.examples.hmp.model.test.userchangeinfo.UserChangeInfoTestEntity;
import net.java.examples.hmp.persistence.producer.EntityManagerProducer;
import net.java.examples.hmp.service.IUserChangeInfoTestService;
import net.java.examples.hmp.service.impl.UserChangeInfoTestService;

public class BaseDeploymentPackage {

    private WebArchive war;
    PomEquippedResolveStage resolver = createOfflineResolverForDefaultPomFile();

    private static final IgnoreTestClassesFilter IGNORE_TEST_CLASSES_FILTER = new IgnoreTestClassesFilter();

    public PomEquippedResolveStage createOfflineResolverForDefaultPomFile() {
        return Maven.configureResolver().workOffline(true).loadPomFromFile("pom.xml");
    }

    public BaseDeploymentPackage addPackages(Package... packages) {
        this.war.addPackages(false, IGNORE_TEST_CLASSES_FILTER, packages);
        return this;
    }

    public BaseDeploymentPackage addClasses(Class<?>... classes) {
        this.war.addClasses(classes);

        return this;
    }

    public BaseDeploymentPackage addClass(Class<?> clazz) {
        this.war.addClass(clazz);

        return this;
    }

    public static class IgnoreTestClassesFilter implements Filter<ArchivePath> {

        @Override
        public boolean include(ArchivePath object) {
            return !object.get().endsWith("Test.class");
        }
    }

    public BaseDeploymentPackage createStandardDeploymentPackage() {
        PomEquippedResolveStage resolver = createOfflineResolverForDefaultPomFile();

        this.war = ShrinkWrap.create(WebArchive.class, "test.war")//
                .addAsWebInfResource("beans.xml", "beans.xml")//
                .addAsLibraries(resolver.resolve(//
                        "org.assertj:assertj-core", // Assertj must be included to use the Assertj-Assertions in the Test-Methods
                        "com.google.guava:guava", //
                        "org.apache.commons:commons-lang3", //
                        "commons-beanutils:commons-beanutils", //
                        "org.apache.deltaspike.core:deltaspike-core-api", //
                        "org.apache.deltaspike.core:deltaspike-core-impl").withTransitivity().asFile());

        return this;
    }

    public BaseDeploymentPackage addTestPersistence() {
        this.war.addAsResource("test-persistence.xml", "META-INF/persistence.xml");
        return this;
    }

    public BaseDeploymentPackage addPackagesModel() {
        addClass(EntityManagerProducer.class);

        this.addPackageModelDomain();

        return this;
    }

    private BaseDeploymentPackage addPackageModelDomain() {
        addPackages(BaseEntity.class.getPackage());
        addPackages(IUserChangeInfo.class.getPackage());

        return this;
    }

    public BaseDeploymentPackage addPackageTestModel() {
        // Here the definition of our Test-Entity, which is located under src/test/classes
        addClass(UserChangeInfoTestEntity.class);

        return this;
    }

    public BaseDeploymentPackage addPackagesUserChangeTrack() {
        addClass(UserChangeInfo.class);
        addClass(IUserChangeInfo.class);
        addClass(UserChangeTrackListener.class);
        addClass(IUserChangeTrackable.class);
        addClass(BaseUserChangeTrackedEntity.class);

        return this;
    }

    public BaseDeploymentPackage addPackagesTestServices() {
        addClass(IUserChangeInfoTestService.class);
        addClass(UserChangeInfoTestService.class);

        return this;
    }

    public WebArchive getWAR() {
        return this.war;
    }
}
