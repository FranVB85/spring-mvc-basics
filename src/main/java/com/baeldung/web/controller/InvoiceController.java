package com.baeldung.web.controller;

import com.baeldung.model.Invoice;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class InvoiceController {

    @RequestMapping(value = "/invoice", method = RequestMethod.GET)
    public String showInvoiceForm(Model model){
        model.addAttribute("invoice", new Invoice());
        return  "invoiceForm";
    }

    @RequestMapping(value = "/invoice", method = RequestMethod.POST)
    public String submitInvoice(Invoice invoice, Model model){
        double total = invoice.getAmount() - (invoice.getAmount() * (invoice.getRetention() / 100));
        model.addAttribute("totalAmount", total);
        return "invoiceSummary";
    }

}
