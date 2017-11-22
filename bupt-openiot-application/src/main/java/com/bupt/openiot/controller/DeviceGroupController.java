package com.bupt.openiot.controller;

import com.bupt.openiot.dao.devicegroup.DeviceGroupService;
import com.bupt.openiot.dao.model.DeviceGroup;
import com.bupt.openiot.model.DeviceGroupWrapper;
import com.bupt.openiot.service.convert.ConvertToViewTool;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by dy on 2017/4/21.
 */
@RestController
@RequestMapping("/api")
public class DeviceGroupController {

    @Autowired
    private DeviceGroupService deviceGroupService;

    @Autowired
    private ConvertToViewTool convertToViewTool;

    @RequestMapping(value = "/noauth/devicegroup")
    public ModelAndView devicegroupView() {
        ModelAndView result = new ModelAndView("device_group");
        List<DeviceGroup> deviceGroupList = deviceGroupService.getAll();
        List<DeviceGroupWrapper> deviceGroupMapperList = convertToViewTool.convertToView(deviceGroupList);
        result.addObject("pageInfo", new PageInfo<DeviceGroupWrapper>(deviceGroupMapperList));
        result.addObject("queryParam", null);
        return result;
    }

    @RequestMapping(value = "/noauth/devicegroup/data")
    public PageInfo<DeviceGroupWrapper> devicegroupList() {
        List<DeviceGroup> deviceGroupList = deviceGroupService.getAll();
        List<DeviceGroupWrapper> deviceGroupMapperList = convertToViewTool.convertToView(deviceGroupList);
        return new PageInfo<DeviceGroupWrapper>(deviceGroupMapperList);
    }

    @RequestMapping(value = "/noauth/devicegroup/create", method = RequestMethod.POST)
    public ModelAndView create(@RequestBody DeviceGroup deviceGroup) {
        ModelAndView result = new ModelAndView("device_group");
        System.out.println(deviceGroup.toString());
        deviceGroupService.create(deviceGroup);
        List<DeviceGroup> deviceGroupList = deviceGroupService.getAll();
        List<DeviceGroupWrapper> deviceGroupMapperList = convertToViewTool.convertToView(deviceGroupList);
        result.addObject("pageInfo", new PageInfo<DeviceGroupWrapper>(deviceGroupMapperList));
        result.addObject("queryParam", null);
        return result;
    }

    @RequestMapping(value = "/noauth/devicegroup/delete", method = RequestMethod.GET)
    public ModelAndView delete(@RequestParam String deviceGroupId) {
        ModelAndView result = new ModelAndView("device_group");
        System.out.println(deviceGroupId);
        deviceGroupService.delete(deviceGroupId);
        List<DeviceGroup> deviceGroupList = deviceGroupService.getAll();
        List<DeviceGroupWrapper> deviceGroupMapperList = convertToViewTool.convertToView(deviceGroupList);
        result.addObject("pageInfo", new PageInfo<DeviceGroupWrapper>(deviceGroupMapperList));
        result.addObject("queryParam", null);
        return result;
    }
}
