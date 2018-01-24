package com.bank.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TransferAction {
    @RequestMapping("/PBL200811")
    public String showTraPage() {
        return "/transfer/showtransfer";
    }
}
