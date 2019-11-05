/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.*;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SOM
 */
public class sendsms extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
//    https://api.msg91.com/api/sendhttp.php?mobiles=8085603914&authkey=298678AoXJ98f8fs0i5da3737c&route=4&sender=TESTIN&message=Hello! This is a test message&country=91
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
            /* TODO output your page here. You may use following sample code. */
            String country="91";
        String authkey = "298678AoXJ98f8fs0i5da3737c";
            //Multiple mobiles numbers separated by comma
            String mobiles = "8085603914";
            //Sender ID,While using route4 sender id should be 6 characters long.
            String sender = "TESTIN";
            //Your message to send, Add URL encoding here.
            String message = request.getParameter("plates");
            //define route
            String route="4";

            //Prepare Url
            URLConnection myURLConnection=null;
            URL myURL=null;
            BufferedReader reader=null;

            //encoding message
            String encoded_message=URLEncoder.encode(message);

            //Send SMS API
            String mainUrl="https://api.msg91.com/api/sendhttp.php?";

            //Prepare parameter string
            StringBuilder sbPostData= new StringBuilder(mainUrl);
            sbPostData.append("&mobiles="+mobiles);
            sbPostData.append("&authkey="+authkey);
            sbPostData.append("&route="+route);
            sbPostData.append("&sender="+sender);
           sbPostData.append("&message="+encoded_message);
           
            
            sbPostData.append("&country="+country);

            //final string
            mainUrl = sbPostData.toString();
            try
            {
                //prepare connection
                myURL = new URL(mainUrl);
                myURLConnection = myURL.openConnection();
                myURLConnection.connect();
                reader= new BufferedReader(new InputStreamReader(myURLConnection.getInputStream()));
                //reading response
                String response1;
                while ((response1 = reader.readLine()) != null)
                //print response
                    response.sendRedirect("givefeedback.jsp");
                reader.close();
            }
            catch (Exception e)
            {
                out.println("hello");
                    e.printStackTrace();
            }    
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
