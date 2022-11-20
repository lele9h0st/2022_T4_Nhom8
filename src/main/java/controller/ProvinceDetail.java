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
        request.setAttribute("showDate",date);

        /*this is show province and region */
        //list of region in viet nam
        String dongbacbo ="Đông Bắc Bộ";
        String taybacbo = "Tây Bắc Bộ";
        String db_songhong = "Đồng bằng sông Hồng";
        String bactrungbo = "Bắc Trung Bộ";
        String namtrungbo = "Nam Trung Bộ";
        String taynguyen = "Tây Nguyên";
        String dongnambo = "Đông Nam Bộ";
        String db_songcuulong = "Đồng bằng sông Cửu Long";
        //

        //this is list province of đông bắc bộ
        List<Province> dong_bac_bo = ProvinceDao.getInstance().getListProvinceByRegion(dongbacbo);
        request.setAttribute("dong_bac_bo",dong_bac_bo);
        // this is List province of tay bac
        List<Province> tay_bac_bo = ProvinceDao.getInstance().getListProvinceByRegion(taybacbo);
        request.setAttribute("tay_bac_bo",tay_bac_bo);
        // this is List province of đồng bằng sông hồng
        List<Province> db_song_hong = ProvinceDao.getInstance().getListProvinceByRegion(db_songhong);
        request.setAttribute("db_songhong",db_song_hong);
        // this is List province of Bắc Trung Bộ
        List<Province> bac_trung_bo = ProvinceDao.getInstance().getListProvinceByRegion(bactrungbo);
        request.setAttribute("bac_trung_bo",bac_trung_bo);
        // this is List province of Nam Trung Bộ
        List<Province> nam_trung_bo = ProvinceDao.getInstance().getListProvinceByRegion(namtrungbo);
        request.setAttribute("nam_trung_bo",nam_trung_bo);
        // this is List province of Tây Nguyên
        List<Province> tay_nguyen = ProvinceDao.getInstance().getListProvinceByRegion(taynguyen);
        request.setAttribute("tay_nguyen",tay_nguyen);
        // this is List province of Đông Nam Bộ
        List<Province> dong_nam_bo = ProvinceDao.getInstance().getListProvinceByRegion(dongnambo);
        request.setAttribute("dong_nam_bo",dong_nam_bo);
        // this is List province of Đồng Bằng Sông Cửu Long
        List<Province> db_song_cuu_long = ProvinceDao.getInstance().getListProvinceByRegion(db_songcuulong);
        request.setAttribute("db_songcuulong",db_song_cuu_long);
        //

        request.getRequestDispatcher("province.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
