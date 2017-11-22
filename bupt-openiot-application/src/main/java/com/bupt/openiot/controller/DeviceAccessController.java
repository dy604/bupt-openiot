package com.bupt.openiot.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by dy on 2017/4/21.
 */
@RestController
@RequestMapping("/api")
public class DeviceAccessController {

    @RequestMapping(value = "/noauth/deviceaccess")
    public ModelAndView deviceaccessView() {
        ModelAndView result = new ModelAndView("access");
        return result;
    }
}
