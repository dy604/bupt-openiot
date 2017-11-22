package com.bupt.openiot.controller;

import com.bupt.openiot.dao.capability.CapabilityService;
import com.bupt.openiot.dao.device.DeviceService;
import com.bupt.openiot.dao.model.Capability;
import com.bupt.openiot.dao.model.Device;
import com.bupt.openiot.model.CapabilityWrapper;
import com.bupt.openiot.model.request.EvaluateRequest;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by dy on 2017/4/21.
 */
@RestController
@RequestMapping("/api")
public class CapabilityController {

    @Autowired
    private CapabilityService capabilityService;

    @Autowired
    private DeviceService deviceService;

    @RequestMapping(value = "/noauth/capability/evaluate")
    public ModelAndView evaluateList() {
        ModelAndView result = new ModelAndView("evaluate");
        List<Capability> capabilityList = capabilityService.getAll();
        List<CapabilityWrapper> capabilityListList = new ArrayList<>();
        for (Capability capability : capabilityList) {
            CapabilityWrapper capabilityWrapper = new CapabilityWrapper();
            capabilityWrapper.setId(capability.getId());
            capabilityWrapper.setCapabilityid(capability.getCapabilityid());
            capabilityWrapper.setDeviceid(capability.getDeviceid());
            capabilityWrapper.setDescription(capability.getDescription());
            capabilityWrapper.setName(capability.getName());
            capabilityWrapper.setStatus(capability.getStatus());
            capabilityWrapper.setType(capability.getType());
            capabilityWrapper.setCost(capability.getCost());
            Device device = deviceService.getOneByDeviceId(capability.getDeviceid());
            capabilityWrapper.setDeviceName(device.getName());
            capabilityListList.add(capabilityWrapper);
        }
        result.addObject("pageInfo", new PageInfo<CapabilityWrapper>(capabilityListList));
        return result;
    }

    @RequestMapping(value = "/noauth/capability/evaluateAction")
    public ModelAndView evaluateAction(@RequestParam String capabilityId) {
        ModelAndView result = new ModelAndView("evaluateAction");
        System.out.println(capabilityId);
        Capability capability = capabilityService.getByCapabilityId(capabilityId);
        result.addObject("capability", capability);
        return result;
    }

    @RequestMapping(value = "/noauth/capability/evaluateValue")
    public String evaluate(@RequestBody EvaluateRequest evaluateRequest) {
        //ModelAndView result = new ModelAndView("property");
        System.out.println(evaluateRequest.toString());
        Integer maxhigh = Integer.valueOf(evaluateRequest.getMaxhigh());
        Integer upspeed = Integer.valueOf(evaluateRequest.getMaxhigh());
        Integer speed = Integer.valueOf(evaluateRequest.getMaxhigh());
        Integer endurancetime = Integer.valueOf(evaluateRequest.getMaxhigh());
        Integer consumeoil = Integer.valueOf(evaluateRequest.getMaxhigh());
        Integer cost = (maxhigh+upspeed+speed+endurancetime+consumeoil)/5;
        String capabilityId = evaluateRequest.getCapabilityId();
        capabilityService.updateCost(capabilityId, cost);
        //Capability capability = capabilityService.getByCapabilityId(capabilityId);
        //result.addObject("capability", capability);
        return "";
    }

}
