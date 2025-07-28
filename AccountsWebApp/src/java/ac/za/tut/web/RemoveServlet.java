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
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author test
 */
public class RemoveServlet extends HttpServlet {
     @EJB
     private AccountFacadeLocal afl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long account_holder_id = Long.parseLong(request.getParameter("id").trim());
        
        Account acc = createAccouHolder(account_holder_id);
        afl.remove(acc);
        
        request.setAttribute("id", account_holder_id);
        request.getRequestDispatcher("remove_outcome.jsp").forward(request, response);
    }

    private Account createAccouHolder(Long account_holder_id) {
         Account acc = new Account();
         acc.setId(account_holder_id);
         return acc;
    }

}
