package models;

import com.google.gson.annotations.SerializedName;
import java.util.List;

public class DataJaspar {
    @SerializedName("downloadTime")
    private String downloadTime;
    @SerializedName("downloadTimeStamp")
    private long downloadTimeStamp;
    @SerializedName("genome")
    private String genome;
    @SerializedName("trackType")
    private String trackType;
    @SerializedName("track")
    private String track;
    @SerializedName("chrom")
    private String chrom;
    @SerializedName("chromSize")
    private int chromSize;
    @SerializedName("bigDataUrl")
    private String bigDataUrl;
    @SerializedName("start")
    private int start;
    @SerializedName("end")
    private int end;
    @SerializedName("jaspar2022")
    private List<Jaspar2022> jaspar2022;
    @SerializedName("itemsReturned")
    private int itemsReturned;

    public DataJaspar(String downloadTime, long downloadTimeStamp, String genome, String trackType, String track, String chrom, int chromSize, String bigDataUrl, int start, int end, List<Jaspar2022> jaspar2022, int itemsReturned) {
        this.downloadTime = downloadTime;
        this.downloadTimeStamp = downloadTimeStamp;
        this.genome = genome;
        this.trackType = trackType;
        this.track = track;
        this.chrom = chrom;
        this.chromSize = chromSize;
        this.bigDataUrl = bigDataUrl;
        this.start = start;
        this.end = end;
        this.jaspar2022 = jaspar2022;
        this.itemsReturned = itemsReturned;
    }

    public String getDownloadTime() {
        return downloadTime;
    }

    public void setDownloadTime(String downloadTime) {
        this.downloadTime = downloadTime;
    }

    public long getDownloadTimeStamp() {
        return downloadTimeStamp;
    }

    public void setDownloadTimeStamp(long downloadTimeStamp) {
        this.downloadTimeStamp = downloadTimeStamp;
    }

    public String getGenome() {
        return genome;
    }

    public void setGenome(String genome) {
        this.genome = genome;
    }

    public String getTrackType() {
        return trackType;
    }

    public void setTrackType(String trackType) {
        this.trackType = trackType;
    }

    public String getTrack() {
        return track;
    }

    public void setTrack(String track) {
        this.track = track;
    }

    public String getChrom() {
        return chrom;
    }

    public void setChrom(String chrom) {
        this.chrom = chrom;
    }

    public int getChromSize() {
        return chromSize;
    }

    public void setChromSize(int chromSize) {
        this.chromSize = chromSize;
    }

    public String getBigDataUrl() {
        return bigDataUrl;
    }

    public void setBigDataUrl(String bigDataUrl) {
        this.bigDataUrl = bigDataUrl;
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getEnd() {
        return end;
    }

    public void setEnd(int end) {
        this.end = end;
    }

    public List<Jaspar2022> getJaspar2022() {
        return jaspar2022;
    }

    public void setJaspar2022(List<Jaspar2022> jaspar2022) {
        this.jaspar2022 = jaspar2022;
    }

    public int getItemsReturned() {
        return itemsReturned;
    }

    public void setItemsReturned(int itemsReturned) {
        this.itemsReturned = itemsReturned;
    }
    
    
}
