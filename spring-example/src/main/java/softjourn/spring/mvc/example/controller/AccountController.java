package softjourn.spring.mvc.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import softjourn.spring.mvc.example.model.Account;
import softjourn.spring.mvc.example.service.AccountService;

import javax.servlet.http.HttpServletRequest;

@Controller
public class AccountController {

    @Autowired
    AccountService service;

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String getHome(HttpServletRequest request) {
        return "index";
    }

    @RequestMapping(value = "/account", method = RequestMethod.GET)
    public String getAdd(Model model) {
        model.addAttribute("account", new Account());
        return "add";
    }

    @RequestMapping(value = "/accounts", method = RequestMethod.GET)
    public String getAccountList(Model model) {
        model.addAttribute("accounts",service.getAll());
        return "accountList";
    }

    @RequestMapping(value = "/account/update/{id}", method = RequestMethod.GET)
    public String updateAccount(@PathVariable long id, Model model) {
        model.addAttribute("account", service.get(id));
        return "update";
    }

    @RequestMapping(value = "/account", method = RequestMethod.POST)
    public String saveAccount(@ModelAttribute Account account, Model model) {
        service.safe(account);
        return "redirect:/accounts";
    }

    @RequestMapping(value = "/account/delete/{id}", method = RequestMethod.POST)
    public String removeAccount(@PathVariable long id, Model model) {
        service.delete(id);
        return "redirect:/accounts";
    }

}