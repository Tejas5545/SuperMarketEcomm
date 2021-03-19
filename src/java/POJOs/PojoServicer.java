
package POJOs;

public class PojoServicer {
    private int servicerid;
    private int adid;
    private int servicerstatus;

    public PojoServicer() {
    }

    
    public PojoServicer(int adid, int servicerstatus) {
        this.adid = adid;
        this.servicerstatus = servicerstatus;
    }

    public PojoServicer(int servicerid, int adid, int servicerstatus) {
        this.servicerid = servicerid;
        this.adid = adid;
        this.servicerstatus = servicerstatus;
    }

    public int getServicerid() {
        return servicerid;
    }

    public void setServicerid(int servicerid) {
        this.servicerid = servicerid;
    }

    public int getAdid() {
        return adid;
    }

    public void setAdid(int adid) {
        this.adid = adid;
    }

    public int getServicerstatus() {
        return servicerstatus;
    }

    public void setServicerstatus(int servicerstatus) {
        this.servicerstatus = servicerstatus;
    }
 
    
}
