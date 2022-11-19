package bean;

public class Province {
    private int id;
    private String province;
    private String region;

    public Province(int id, String province, String region) {
        this.id = id;
        this.province = province;
        this.region = region;
    }

    @Override
    public String toString() {
        return "Province{" +
                "id=" + id +
                ", name='" + province + '\'' +
                ", region='" + region + '\'' +
                '}';
    }

    public Province() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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
}
