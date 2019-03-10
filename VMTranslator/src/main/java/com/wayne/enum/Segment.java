public enum Segment {
    CONSTANT("constant"),
    LOCAL("local"),
    ARGUMENT("argument"),
    THIS("this"),
    THAT("that"),
    TEMP("temp"),

    POINTER("pointer"),

    STATIC("static");


    private String seg;

    Segment(String seg){
        this.seg = seg;
    }

    public String getSeg(){
        return seg;
    }


}
