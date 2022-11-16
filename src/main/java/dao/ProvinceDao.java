package dao;

import bean.Province;
import bean.ProvinceWeather;
import db.DbConnector;

import java.util.List;
import java.util.stream.Collectors;

public class ProvinceDao {
    private static ProvinceDao instance;

    public static ProvinceDao getInstance() {
        if (instance == null) {
            instance = new ProvinceDao();
        }
        return instance;
    }

    public List<Province> getProvinceList() {
        try {
            List<Province> provinces = DbConnector.get().withHandle(h ->
                    h.createQuery("SELECT * FROM province_dim ")
                            .mapToBean(Province.class).stream().collect(Collectors.toList())
            );
            return provinces;
        } catch (Exception e) {
            System.out.println(e.getStackTrace());
            return null;
        }
    }
    public List<ProvinceWeather> getListOfLastestWeather(){
        try {
            List<ProvinceWeather> provinceWeathers = DbConnector.get().withHandle(h ->
                    h.createQuery("SELECT b.province,b.region,c.full_date,a.time,a.temperature,a.status,a.lowTemp,a.highTemp,a.humidity,a.visibility,a.wind,a.uv,a.air FROM `weather` a join `province_dim` b on a.province =b.id join `date_dim` c on a.date =c.date_sk WHERE isDelete=0 and dateUpdate='0';")
                            .mapToBean(ProvinceWeather.class).stream().collect(Collectors.toList())
            );
            return provinceWeathers;
        } catch (Exception e) {
            System.out.println(e.getStackTrace());
            return null;
        }
    }
    public ProvinceWeather getLastestNewsByProvince(int provinceId){
        try {
            List<ProvinceWeather> provinceWeathers = DbConnector.get().withHandle(h ->
                    h.createQuery("SELECT b.province,b.region,c.full_date,a.time,a.temperature,a.status,a.lowTemp,a.highTemp,a.humidity,a.visibility,a.wind,a.uv,a.air FROM `weather` a join `province_dim` b on a.province =b.id join `date_dim` c on a.date =c.date_sk WHERE isDelete=0 and dateUpdate='0' and a.province=?;")
                            .bind(0,provinceId)
                            .mapToBean(ProvinceWeather.class).stream().collect(Collectors.toList())
            );
            return provinceWeathers.get(0);
        } catch (Exception e) {
            System.out.println(e.getStackTrace());
            return null;
        }
    }
    public List<ProvinceWeather> getWeatherByProvince(int provinceId){
        try {
            List<ProvinceWeather> provinceWeathers = DbConnector.get().withHandle(h ->
                    h.createQuery("SELECT b.province,b.region,c.full_date,a.time,a.temperature,a.status,a.lowTemp,a.highTemp,a.humidity,a.visibility,a.wind,a.uv,a.air FROM `weather` a join `province_dim` b on a.province =b.id join `date_dim` c on a.date =c.date_sk WHERE isDelete=0  and a.province=? order by date;")
                            .bind(0,provinceId)
                            .mapToBean(ProvinceWeather.class).stream().collect(Collectors.toList())
            );
            return provinceWeathers;
        } catch (Exception e) {
            System.out.println(e.getStackTrace());
            return null;
        }
    }
    public static void main(String[] args) {
        ProvinceDao dao = ProvinceDao.getInstance();
//        List<Province> l = dao.getProvinceList();
//        for (Province p : l)
//            System.out.println(p.toString());
        List<ProvinceWeather> pw=dao.getWeatherByProvince(1);
        for(ProvinceWeather p:pw){
            System.out.println(p.toString());
        }
//        ProvinceWeather lastest=dao.getLastestNewsByProvince(1);
//        System.out.println(lastest);

    }
}
