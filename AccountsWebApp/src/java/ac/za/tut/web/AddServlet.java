/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.za.tut.web;

import ac.za.tut.ejb.bl.AccountFacadeLocal;
import ac.za.tut.entity.Account;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author test
 */
public class AddServlet extends HttpServlet {
    @EJB
    private AccountFacadeLocal afl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long account_holder_id = Long.parseLong(request.getParameter("id").trim());
        String name = request.getParameter("name");
        String city = request.getParameter("city");
        String street = request.getParameter("street");
        String code = request.getParameter("code");
        String cell = request.getParameter("cellNo");
        String email = request.getParameter("email");
        Double balance = Double.parseDouble(request.getParameter("balance").trim());
                
        Account acc = createAccountHolder(account_holder_id,name,city,street,code,cell,email,balance);
        afl.create(acc);
        
        request.getRequestDispatcher("add_outcome.jsp").forward(request, response);
        
                
   }


    private Account createAccountHolder(Long account_holder_id, String name, String city, String street, String code, String cell, String email, Double balance) {
        Account acc = new Account();
        acc.setId(account_holder_id);
        acc.setFirstName(name);
        acc.setStreet(street);
        acc.setCity(city);
        acc.setCode(code);
        acc.setCellNo(cell);
        acc.setEmailAddress(email);
        acc.setBalance(balance);
        acc.setCreationdate(new Date());
        
        return acc;
    }

}
