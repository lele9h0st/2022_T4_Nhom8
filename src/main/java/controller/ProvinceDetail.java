package controller;

import bean.Province;
import bean.ProvinceWeather;
import com.google.gson.Gson;
import dao.ProvinceDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Map;

@WebServlet(name = "Province", value = "/ProvinceDetail")
public class ProvinceDetail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int pid = Integer.parseInt(request.getParameter("pid"));
        String date = request.getParameter("date");
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDateTime now = LocalDateTime.now();
        String curentDate = dtf.format(now).toString();
        if (date == null) {
            date = curentDate;
        }

//        Province province = ProvinceDao.getInstance().getProvinceById(pid);
        System.out.println(pid);
        ProvinceWeather provinceWeather = ProvinceDao.getInstance().getLastestNewsByProvince(pid);
        List<ProvinceWeather> weatherListInDay = ProvinceDao.getInstance().getLastestWeatherByDayAndProvince(pid, date);
        List<Map<Object, Object>> listTempChart = ProvinceDao.getInstance().getListChart(pid, curentDate);
        Gson gsonObj = new Gson();
        String dataPoints = gsonObj.toJson(listTempChart);

        System.out.println(dataPoints);
        request.setAttribute("listTempChart", dataPoints);
        request.setAttribute("weatherListInDay", weatherListInDay);
        request.setAttribute("provinceWeather", provinceWeather);
        request.setAttribute("showDate", date);
        request.getRequestDispatcher("province.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
