import java.time.LocalDate;
import java.util.*;
import java.util.stream.Collectors;

public class Demo {

	public static void main(String args[]) {
		Batch b1 = new Batch(1, LocalDate.of(2017, 2, 20), LocalDate.of(2018, 9, 15));
		Batch b2 = new Batch(2, LocalDate.of(2017, 2, 20), LocalDate.of(2017, 9, 15));
		Batch b3 = new Batch(3, LocalDate.of(2016, 2, 20), LocalDate.of(2016, 9, 15));
		Batch b4 = new Batch(4, LocalDate.of(2018, 10, 20), LocalDate.of(2019, 9, 15));
		Batch b5 = new Batch(5, LocalDate.of(2018, 2, 15), LocalDate.of(2018, 7, 15));
		Batch b6 = new Batch(6, LocalDate.of(2018, 11, 30), LocalDate.of(2018, 12, 30));
		Batch b7 = new Batch(7, LocalDate.of(2018, 01, 15), LocalDate.of(2018, 9, 15));
		Batch b8 = new Batch(8, LocalDate.of(2019, 01, 15), LocalDate.of(2019, 9, 15));
		Batch b9 = new Batch(9, LocalDate.of(2018, 02, 15), LocalDate.of(2018, 9, 15));
		Batch b10 = new Batch(10, LocalDate.of(2019, 02, 15), LocalDate.of(2019, 9, 15));

		List<Batch> batches = new ArrayList<Batch>();
		batches.add(b1);
		batches.add(b2);
		batches.add(b3);
		batches.add(b4);
		batches.add(b5);
		batches.add(b6);
		batches.add(b7);
		batches.add(b8);
		batches.add(b9);
		batches.add(b10);

		/**
		 * Printing all the batches
		 */
		Iterator itr = batches.iterator();
		while (itr.hasNext()) {
			Batch b = (Batch) itr.next();
			System.out.println(b.getId() + " " + b.getBatchStartDate() + " " + b.getBatchEndDate());
		}

		/**
		 * Filter on date
		 */
		List<Batch> dateFilteredBatches = batches.stream().filter(x -> x.getBatchEndDate().isBefore(LocalDate.now()))
				.collect(Collectors.toList());

		/**
		 * printing date filtered batches
		 */
		itr = dateFilteredBatches.iterator();
		while (itr.hasNext()) {
			Batch b = (Batch) itr.next();
			System.out.println(b.getId() + " " + b.getBatchStartDate() + " " + b.getBatchEndDate());
		}

		String pastBatchString = new String("past batch");
		String presentBatchString = new String("present batch");

		HashMap<String, List<Batch>> mapBatches = (HashMap<String, List<Batch>>) batches.stream()
				.collect(Collectors.groupingBy(x -> x.isPresentBatch() ? presentBatchString : pastBatchString));

		
		for (Map.Entry<String, List<Batch>> m : mapBatches.entrySet()) {
			System.out.print(m.getKey() + " " + "[");
			for(Batch batch : m.getValue()) {
				System.out.print(batch.getId() + ",");
			}
			System.out.print("]\n");
		}
	}
}