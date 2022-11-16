package controller;

import bean.Province;
import dao.ProvinceDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ShowProvinces", value = "/ShowProvinces")
public class ShowProvinces extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Province> provinces = ProvinceDao.getInstance().getProvinceList();
        request.setAttribute("provinceList", provinces);

    }
}