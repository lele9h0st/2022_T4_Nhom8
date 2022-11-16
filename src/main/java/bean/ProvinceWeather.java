package bean;

import java.util.Date;

public class ProvinceWeather {
    private String province;
    private String region;
    private Date fullDate;
    private String time;
    private int temperature;
    private String status;
    private int lowTemp;
    private int highTemp;
    private int humidity;
    private int visibility;
    private double wind;
    private double uv;
    private String air;

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public ProvinceWeather(String province, String region, Date fullDate, String time, int temperature, String status, int lowTemp, int highTemp, int humidity, int visibility, double wind, double uv, String air) {
        this.province = province;
        this.region = region;
        this.fullDate = fullDate;
        this.time = time;
        this.temperature = temperature;
        this.status = status;
        this.lowTemp = lowTemp;
        this.highTemp = highTemp;
        this.humidity = humidity;
        this.visibility = visibility;
        this.wind = wind;
        this.uv = uv;
        this.air = air;
    }

    public ProvinceWeather() {

    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public Date getFullDate() {
        return fullDate;
    }

    public void setFullDate(Date fullDate) {
        this.fullDate = fullDate;
    }

    public int getTemperature() {
        return temperature;
    }

    public void setTemperature(int temperature) {
        this.temperature = temperature;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getLowTemp() {
        return lowTemp;
    }

    public void setLowTemp(int lowTemp) {
        this.lowTemp = lowTemp;
    }

    public int getHighTemp() {
        return highTemp;
    }

    public void setHighTemp(int highTemp) {
        this.highTemp = highTemp;
    }

    public int getHumidity() {
        return humidity;
    }

    public void setHumidity(int humidity) {
        this.humidity = humidity;
    }

    public int getVisibility() {
        return visibility;
    }

    public void setVisibility(int visibility) {
        this.visibility = visibility;
    }

    public double getWind() {
        return wind;
    }

    public void setWind(double wind) {
        this.wind = wind;
    }

    public double getUv() {
        return uv;
    }

    public void setUv(double uv) {
        this.uv = uv;
    }

    public String getAir() {
        return air;
    }

    public void setAir(String air) {
        this.air = air;
    }

    @Override
    public String toString() {
        return "ProvinceWeather{" +
                "province='" + province + '\'' +
                ", region='" + region + '\'' +
                ", fullDate=" + fullDate +
                ", time='" + time + '\'' +
                ", temperature=" + temperature +
                ", status='" + status + '\'' +
                ", lowTemp=" + lowTemp +
                ", highTemp=" + highTemp +
                ", humidity=" + humidity +
                ", visibility=" + visibility +
                ", wind=" + wind +
                ", uv=" + uv +
                ", air='" + air + '\'' +
                '}';
    }
}
