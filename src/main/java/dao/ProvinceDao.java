package dao;

import bean.Province;
import bean.ProvinceWeather;
import db.DbConnector;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
    public List<Province> getListProvinceByRegion(String region){
        try {
            List<Province> provinces = DbConnector.get().withHandle(h ->
                    h.createQuery("SELECT * FROM province_dim where region = ?").bind(0,region)
                            .mapToBean(Province.class).stream().collect(Collectors.toList())
            );
            return provinces;
        } catch (Exception e) {
            System.out.println(e.getStackTrace());
            return null;
        }
    }



    public List<ProvinceWeather> getListOfLastestWeather() {
//        try {
            List<ProvinceWeather> provinceWeathers = DbConnector.get().withHandle(h ->
                    h.createQuery("SELECT b.id, b.province,b.region,c.full_date,a.time,a.temperature,a.status,a.lowTemp,a.highTemp,a.humidity,a.visibility,a.wind,a.uv,a.air FROM `weather` a join `province_dim` b on a.province =b.id join `date_dim` c on a.date =c.date_sk WHERE isDelete=0 and dateUpdate='0';")
                            .mapToBean(ProvinceWeather.class).stream().collect(Collectors.toList())
            );
            return provinceWeathers;
//        } catch (Exception e) {
//            System.out.println(e.getStackTrace());
//            return null;
//        }
    }

    public Province getProvinceById(int id) {
        try {
            List<Province> provinces = DbConnector.get().withHandle(h ->
                    h.createQuery("select * from province_dim where id=?;")
                            .bind(0, id)
                            .mapToBean(Province.class).stream().collect(Collectors.toList())
            );
            return provinces.get(0);
        } catch (Exception e) {
            System.out.println(e.getStackTrace());
            return null;
        }
    }
    public List<ProvinceWeather>getRandom4ProvinceBy(){
        List<ProvinceWeather> provinceWeathers = DbConnector.get().withHandle(h ->
                h.createQuery("SELECT b.id, b.province,b.region,c.full_date,a.time,a.temperature,a.status,a.lowTemp,a.highTemp,a.humidity,a.visibility,a.wind,a.uv,a.air FROM `weather` a join `province_dim` b on a.province =b.id join `date_dim` c on a.date =c.date_sk WHERE isDelete=0 and dateUpdate='0' ORDER BY RAND() LIMIT 4;")
                        .mapToBean(ProvinceWeather.class).stream().collect(Collectors.toList())
        );
        return provinceWeathers;
    }
    public Province getProvinceByName(String name) {
        try {
            List<Province> provinces = DbConnector.get().withHandle(h ->
                    h.createQuery("select * from province_dim where province=?;")
                            .bind(0, name)
                            .mapToBean(Province.class).stream().collect(Collectors.toList())
            );
            return provinces.get(0);
        } catch (Exception e) {
            System.out.println(e.getStackTrace());
            return null;
        }
    }

    public List<ProvinceWeather> getLastestWeatherByDayAndProvince(int provinceId, String date) {
        try {
            List<ProvinceWeather> provinceWeathers = DbConnector.get().withHandle(h ->
                    h.createQuery("SELECT b.id, b.province,b.region,c.full_date,a.time,a.temperature,a.status,a.lowTemp,a.highTemp,a.humidity,a.visibility,a.wind,a.uv,a.air FROM `weather` a join `province_dim` b on a.province =b.id join `date_dim` c on a.date =c.date_sk WHERE isDelete=0 and a.province=? and c.full_date= ?;")
                            .bind(0, provinceId)
                            .bind(1, date)
                            .mapToBean(ProvinceWeather.class).stream().collect(Collectors.toList())
            );
            return provinceWeathers;
        } catch (Exception e) {
            System.out.println(e.toString());
            return null;
        }
    }

    public ProvinceWeather getLastestNewsByProvince(int provinceId) {
        try {
            List<ProvinceWeather> provinceWeathers = DbConnector.get().withHandle(h ->
                    h.createQuery("SELECT b.id, b.province,b.region,c.full_date,a.time,a.temperature,a.status,a.lowTemp,a.highTemp,a.humidity,a.visibility,a.wind,a.uv,a.air FROM `weather` a join `province_dim` b on a.province =b.id join `date_dim` c on a.date =c.date_sk WHERE isDelete=0 and dateUpdate='0' and a.province=?;")
                            .bind(0, provinceId)
                            .mapToBean(ProvinceWeather.class).stream().collect(Collectors.toList())
            );
            return provinceWeathers.get(0);
        } catch (Exception e) {
            System.out.println(e.toString());
            return null;
        }
    }

    public List<ProvinceWeather> getLastest7WeatherByDayAndProvince(int provinceId, String date) {
        try {
            List<ProvinceWeather> provinceWeathers = DbConnector.get().withHandle(h ->
                    h.createQuery("SELECT b.id,b.province,b.region,c.full_date,a.time,AVG(a.temperature) as temperature,a.status,a.lowTemp,a.highTemp,a.humidity,a.visibility,a.wind,a.uv,a.air FROM `weather` a join `province_dim` b on a.province =b.id join `date_dim` c on a.date =c.date_sk WHERE isDelete=0 and a.province=? and c.full_date in (SELECT full_date from date_dim where date_sk < (SELECT date_sk from date_dim where full_date =?) and date_sk > ((SELECT date_sk from date_dim where full_date =?)-7)) group by c.full_date;")
                            .bind(0, provinceId)
                            .bind(1, date)
                            .bind(2, date)
                            .mapToBean(ProvinceWeather.class).stream().collect(Collectors.toList())
            );
            return provinceWeathers;
        } catch (Exception e) {
            System.out.println(e.toString());
            return null;
        }
    }

    public List<ProvinceWeather> getWeatherByProvince(int provinceId) {
        try {
            List<ProvinceWeather> provinceWeathers = DbConnector.get().withHandle(h ->
                    h.createQuery("SELECT b.id, b.province,b.region,c.full_date,a.time,a.temperature,a.status,a.lowTemp,a.highTemp,a.humidity,a.visibility,a.wind,a.uv,a.air FROM `weather` a join `province_dim` b on a.province =b.id join `date_dim` c on a.date =c.date_sk WHERE isDelete=0  and a.province=? order by date;")
                            .bind(0, provinceId)
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
        List<ProvinceWeather> pw = dao.getLastestWeatherByDayAndProvince(1, "2022-11-18");
        for (ProvinceWeather p : pw) {
            System.out.println(p.toString());
        }
//        ProvinceWeather lastest=dao.getLastestNewsByProvince(1);
//        System.out.println(lastest);

    }

    public List<Map<Object, Object>> getListChart(int id, String date) {
        Map<Object, Object> map = null;
        List<Map<Object, Object>> list = new ArrayList<Map<Object, Object>>();
        List<ProvinceWeather> pw = getLastest7WeatherByDayAndProvince(id, date);
        for (ProvinceWeather p : pw) {
            map = new HashMap<Object, Object>();
            map.put("label", p.getFullDate());
            map.put("y", p.getTemperature());
            list.add(map);
        }
        return list;
    }
}
