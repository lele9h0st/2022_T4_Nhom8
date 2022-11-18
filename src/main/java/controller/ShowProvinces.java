package controller;

import bean.Province;
import bean.ProvinceWeather;
import dao.ProvinceDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ShowProvinces", value = "")
public class ShowProvinces extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<ProvinceWeather> provinces = ProvinceDao.getInstance().getListOfLastestWeather();
        request.setAttribute("provinceList", provinces);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
