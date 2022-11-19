package net.java.examples.hmp.model.domain.userchangeinfo.test;

import static org.assertj.core.api.Assertions.assertThat;

import javax.inject.Inject;

import org.jboss.arquillian.container.test.api.Deployment;
import org.jboss.arquillian.junit.Arquillian;
import org.jboss.arquillian.persistence.UsingDataSet;
import org.jboss.shrinkwrap.api.spec.WebArchive;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import net.java.examples.hmp.model.domain.callback.UserChangeTrackListener;
import net.java.examples.hmp.model.domain.extension.IUserChangeInfo;
import net.java.examples.hmp.model.test.userchangeinfo.UserChangeInfoTestEntity;
import net.java.examples.hmp.service.IUserChangeInfoTestService;
import net.java.examples.hmp.test.util.BaseDeploymentPackage;

@RunWith(Arquillian.class)
@UsingDataSet("datasets/userchangeinfo/userchangeinfo.json")
public class UserChangeInfoTest {

    private static final Logger LOG = LoggerFactory.getLogger(UserChangeInfoTest.class);

    @Inject
    private IUserChangeInfoTestService userChangeInfoTestService;

    @Deployment
    public static WebArchive createDeploymentPackage() {
        BaseDeploymentPackage deploymentPackage = new BaseDeploymentPackage() //
                .createStandardDeploymentPackage() //
                .addTestPersistence() //
                .addPackagesModel() //
                .addPackageTestModel() //
                .addPackagesUserChangeTrack() //
                .addPackagesTestServices();

        LOG.debug(deploymentPackage.toString());
        return deploymentPackage.getWAR();
    }

    @Test
    public void saveAndLoadWithDefaultUser() {
        UserChangeInfoTestEntity userChangeInfoTestEntity = createAndPersistTestEntity();

        userChangeInfoTestEntity = this.userChangeInfoTestService.getData(userChangeInfoTestEntity.getId());
        IUserChangeInfo userChangeInfo = userChangeInfoTestEntity.getUserChangeInfo();

        assertThat("junit-test").isEqualTo(userChangeInfoTestEntity.getName());

        assertThat(userChangeInfo.getCreateUser()).isEqualTo(UserChangeTrackListener.DEFAULT_USER_NAME);
        assertThat(userChangeInfo.getChangeUser()).isEqualTo(UserChangeTrackListener.DEFAULT_USER_NAME);

        assertThat(userChangeInfo.getCreateDate()).isNotNull();
        assertThat(userChangeInfo.getChangeDate()).isNotNull();
        assertThat(userChangeInfo.getCreateDate().getTime()).isEqualTo(userChangeInfo.getChangeDate().getTime());
    }

    private UserChangeInfoTestEntity createAndPersistTestEntity() {
        UserChangeInfoTestEntity userChangeInfoTestEntity = new UserChangeInfoTestEntity();
        userChangeInfoTestEntity.setName("junit-test");

        this.userChangeInfoTestService.persistData(userChangeInfoTestEntity);

        return userChangeInfoTestEntity;
    }

    @Test
    public void getUserChangeInfoTestEntityExpectingUserChangeInfoObjectNotNull() {
        UserChangeInfoTestEntity userChangeInfoTestEntity = this.userChangeInfoTestService.getData(new Long(1002));

        assertThat(userChangeInfoTestEntity).isNotNull();
        assertThat(userChangeInfoTestEntity.getName()).isEqualTo("Testentity - alle UserChangeInfoFelder sind null");

        assertThat(userChangeInfoTestEntity.getUserChangeInfo()).isNotNull();
        assertThat(userChangeInfoTestEntity.getUserChangeInfo().getCreateUser()).isNull();
        assertThat(userChangeInfoTestEntity.getUserChangeInfo().getCreateDate()).isNull();
        assertThat(userChangeInfoTestEntity.getUserChangeInfo().getChangeUser()).isNull();
        assertThat(userChangeInfoTestEntity.getUserChangeInfo().getChangeDate()).isNull();
    }
}
