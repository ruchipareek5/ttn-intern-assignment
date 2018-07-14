import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.stream.Collectors;

public class BatchTest {
    public static void main(String[] args) throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        // Date myDate = sdf.parse("2018-07-30");
        Date today = new Date();
        Batch b01 = new Batch("B01", 60, "Solar PV", true);
        b01.setEndDate(sdf.parse("2018-07-30"));
        Batch b02 = new Batch("B02", 40, "Solar Thermal", false);
        b02.setEndDate(sdf.parse("2018-04-30"));
        Batch b03 = new Batch("B03", 50, "Wind", true);
        b03.setEndDate(sdf.parse("2018-08-30"));
        Batch b04 = new Batch("B04", 30, "Small Hydro", false);
        b04.setEndDate(sdf.parse("2018-01-30"));
        Batch b05 = new Batch("B05", 60, "Biomass", false);
        b05.setEndDate(sdf.parse("2018-02-15"));
        Batch b06 = new Batch("B06", 40, "Biofuel", true);
        b06.setEndDate(sdf.parse("2018-10-30"));
        Batch b07 = new Batch("B07", 50, "Energy Storage", false);
        b07.setEndDate(sdf.parse("2018-06-30"));
        Batch b08 = new Batch("B08", 30, "Clean Cook Stoves", true);
        b08.setEndDate(sdf.parse("2018-11-30"));
        Batch b09 = new Batch("B09", 60, "Biogas", true);
        b09.setEndDate(sdf.parse("2018-12-31"));
        Batch b10 = new Batch("B10", 40, "Pellets", false);
        b10.setEndDate(sdf.parse("2018-05-14"));
        List <Batch> batchList = new ArrayList<>();
        batchList.add(b01);
        batchList.add(b02);
        batchList.add(b03);
        batchList.add(b04);
        batchList.add(b05);
        batchList.add(b06);
        batchList.add(b07);
        batchList.add(b08);
        batchList.add(b09);
        batchList.add(b10);

        batchList.forEach(b -> b.getBatch());
        batchList.forEach(b -> System.out.println(b.getEndDate()));
        System.out.println("Date today: " + today);

        List pastBatches = batchList.stream()
                .filter(d -> d.getEndDate().compareTo(today) < 0)
                .collect(Collectors.toList());

        List presentBatches = batchList.stream()
                .filter(d -> d.getEndDate().compareTo(today) > 0)
                .collect(Collectors.toList());

        Map <String, List <Batch>> batchMap = new HashMap<>();
        batchMap.put("Past Batches", pastBatches);
        batchMap.put("Present Batches", presentBatches);

        batchMap.forEach((status, bList) -> {
            System.out.println(status + ": ");
            bList.forEach(l -> l.getBatch());
        });

        /*
        Map <String, Boolean> presentBatches = batchList.stream()
                .filter(b -> b.isRunning))
                .collect(Collectors.toMap(b -> b.batchID, b -> b.isRunning));

        Map <String, Boolean> pastBatches = batchList.stream()
                .filter(b -> !b.isRunning)
                .collect(Collectors.toMap(b -> b.batchID, b -> b.isRunning));

        System.out.println("Present batches: " + presentBatches);
        System.out.println("Past batches: " + pastBatches);
        */

    }
}
