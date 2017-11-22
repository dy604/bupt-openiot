package com.bupt.openiot.service.registry;

import com.bupt.openiot.common.registry.service.ServiceRegistry;
import org.apache.zookeeper.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.util.concurrent.CountDownLatch;

/**
 * Created by dy on 2017/6/2.
 */
@Component
public class ServiceRegistryImpl implements ServiceRegistry, Watcher {

    private static final String REGISTRY_PATH = "/openiot";

    private static final int SESSION_TIME = 5000;

    private static Logger logger = LoggerFactory.getLogger(ServiceRegistryImpl.class);

    private static CountDownLatch latch = new CountDownLatch(1);

    private ZooKeeper zk;

    public ServiceRegistryImpl() {

    }

    public ServiceRegistryImpl(String zkServers) {
        try {
            // 创建Zookeeper客户端
            zk = new ZooKeeper(zkServers, SESSION_TIME, this);
            latch.await();  // 异步连接等待，完成连接之后继续往后执行
            logger.info("connected to zookeeper");  // 打印连接成功
        } catch (Exception e) {
            logger.error("create zookeeper client");
        }
    }

    @Override
    public void registry(String serviceName, String serviceAddress) {
        try {
            // 创建根节点（持久节点）
            String registryPath = REGISTRY_PATH;
            if (zk.exists(registryPath, false) == null) {
                zk.create(registryPath, null, ZooDefs.Ids.OPEN_ACL_UNSAFE, CreateMode.PERSISTENT);
                logger.info("create registry node: {}", registryPath);
            }

            // 创建服务节点（持久节点）
            String servicePath = registryPath + "/" + serviceName;
            if (zk.exists(servicePath, false) == null) {
                zk.create(servicePath, null, ZooDefs.Ids.OPEN_ACL_UNSAFE, CreateMode.PERSISTENT);
                logger.info("create service node: {}", servicePath);
            }

            // 创建地址节点（临时顺序节点）
            String addressPath = servicePath + "/address-";
            String addressNode = zk.create(addressPath, serviceAddress.getBytes(), ZooDefs.Ids.OPEN_ACL_UNSAFE,
                    CreateMode.EPHEMERAL_SEQUENTIAL);
            logger.info("create address node: {} => {}", addressNode, serviceAddress);
        } catch (Exception e) {
            logger.error("create node failure", e);
        }
    }

    @Override
    public void process(WatchedEvent event) {
        if (event.getState() == Event.KeeperState.SyncConnected) {
            latch.countDown(); // 只有Event.KeeperState.SyncConnected事件发生才继续往后执行。
        }
    }
}
