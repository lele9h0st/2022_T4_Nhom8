package controller;

import bean.Province;
import bean.ProvinceWeather;
import dao.ProvinceDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Province", value = "/ProvinceDetail")
public class ProvinceDetail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("pid");
//        Province province = ProvinceDao.getInstance().getProvinceById(pid);
        System.out.println(pid);
        ProvinceWeather provinceWeather = ProvinceDao.getInstance().getLastestNewsByProvince(Integer.parseInt(pid));
        request.setAttribute("provinceWeather", provinceWeather);
        request.getRequestDispatcher("province.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
