package controller;

import bean.Province;
import bean.ProvinceWeather;
import dao.ProvinceDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Province", value = "/ProvinceDetail")
public class ProvinceDetail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int pid = Integer.parseInt(request.getParameter("pid"));
//        Province province = ProvinceDao.getInstance().getProvinceById(pid);
        System.out.println(pid);
        ProvinceWeather provinceWeather = ProvinceDao.getInstance().getLastestNewsByProvince(pid);
        List<ProvinceWeather> weatherListInDay = ProvinceDao.getInstance().getLastestWeatherByDayAndProvince(pid);
        request.setAttribute("weatherListInDay", weatherListInDay);
        request.setAttribute("provinceWeather", provinceWeather);
        request.getRequestDispatcher("province.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
