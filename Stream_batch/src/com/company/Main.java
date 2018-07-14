package com.company;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.*;
import java.util.function.Function;
import java.util.stream.Collectors;

public class Main {

        public static void main(String[] args) {
                // write your code here

                Batch b1 = new Batch(1010, "batch 1", 50,
                        new Date(2018, 02, 01), new Date(2018, 6, 01));

                Batch b2 = new Batch(1011, "batch 2", 100,
                        new Date(2017, 02, 01), new Date(2018, 02, 01));

                Batch b3 = new Batch(1013, "batch 3", 55,
                        new Date(2016, 02, 01), new Date(2016, 2, 1));

                Batch b4 = new Batch(1014, "batch 4", 200,
                        new Date(2018, 03, 01), new Date(2019, 02, 01));

                Batch b5 = new Batch(1015, "batch 5", 290,
                        new Date(2018, 03, 01), new Date(2019, 02, 01));

                Batch b6 = new Batch(1016, "batch 6", 90,
                        new Date(2018, 03, 01), new Date(2020, 02, 01));

                Batch b7 = new Batch(1017, "batch 7", 700,
                        new Date(2016, 03, 01), new Date(2018, 03, 01));

                Batch b8 = new Batch(1018, "batch 8", 200,
                        new Date(2018, 03, 01), new Date(2019, 02, 01));

                Batch b9 = new Batch(1019, "batch 9", 200,
                        new Date(2018, 03, 01), new Date(2020, 02, 01));

                Batch b10 = new Batch(1020, "batch 10", 200,
                        new Date(2017, 03, 01), new Date(2018, 05, 01));

                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");
                LocalDate localDate = LocalDate.now();


                List<Batch> batchList = new ArrayList<>();

                batchList.add(b1);
                batchList.add(b2);
                batchList.add(b3);
                batchList.add(b4);
                batchList.add(b5);
                batchList.add(b6);
                batchList.add(b7);
                batchList.add(b8);
                batchList.add(b9);
                batchList.add(b10);

                List<Batch> pastBatchList = batchList.stream().filter(x -> x.getBatchEndDate().compareTo(new Date()) < 0).collect(Collectors.toList());

                HashMap<String, List<Batch>> batchMap = new HashMap<>();

                batchMap.put("Past Batches", pastBatchList);
                batchMap.forEach((x, y) -> {
                        System.out.println(x);
                        y.forEach(z -> System.out.println(z));
                });

                List<Batch> presentBatchList = batchList.stream().filter(x1 -> x1.getBatchEndDate().compareTo(new Date()) > 0).collect(Collectors.toList());
                batchMap.put("Present batches", presentBatchList);

                batchMap.forEach((x1, y1) -> {
                        System.out.println(x1);
                        y1.forEach(z -> System.out.println(z));
                });


        }
}
