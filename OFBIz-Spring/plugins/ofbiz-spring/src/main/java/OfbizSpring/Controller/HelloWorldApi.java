package OfbizSpring.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController

public class HelloWorldApi {
    @RequestMapping("/")
    public String hello() {
        return "Hello World";
    }
}
