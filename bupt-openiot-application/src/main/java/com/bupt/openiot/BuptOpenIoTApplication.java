package com.bupt.openiot;

import com.bupt.openiot.dao.device.DeviceService;
import com.bupt.openiot.dao.model.Device;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import java.util.List;

/**
 * Created by duanbingyue on 2017/5/4.
 */
@Controller
@EnableWebMvc
@SpringBootApplication
public class BuptOpenIoTApplication extends WebMvcConfigurerAdapter {

    @Autowired
    private DeviceService deviceService;

    public static void main(String[] args) {
        SpringApplication.run(BuptOpenIoTApplication.class, args);
    }

    /**
     * 设置项目首页
     */
    @RequestMapping("/")
    String index() {
        return "index";
    }

    @RequestMapping("/api/noauth/homepage")
    public ModelAndView home() {
        ModelAndView result = new ModelAndView("homepage");
        List<Device> deviceList = deviceService.getAll();
        result.addObject("pageInfo", new PageInfo<Device>(deviceList));
        result.addObject("queryParam", null);
        return result;
    }
}
