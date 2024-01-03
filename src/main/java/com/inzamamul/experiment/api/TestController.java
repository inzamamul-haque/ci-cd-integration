package com.inzamamul.experiment.api;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

    @GetMapping()
    public String get() {
        return "inzamamul";
    }

    @GetMapping("hello")
    public String hello() {
        return "inzamamul latest";
    }

    @GetMapping("hi")
    public String hi() {
        return "hi inzamamul";
    }
}
