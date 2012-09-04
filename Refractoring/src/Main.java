
public class Main {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Customer aCustomer= new Customer("rohan");
		Movie aMovie= new Movie("Wall-E",2);
		Rental aRental= new Rental(aMovie, 4);
		aCustomer.addRental(aRental);
		System.out.println(aCustomer.statement());
		Movie anotherMovie= new Movie("Matrix", 0);
		Movie onemoreMovie = new Movie("LRM", 1);
		aCustomer.addRental(new Rental(anotherMovie, 6));
		aCustomer.addRental(new Rental(onemoreMovie, 5));
		System.out.println(aCustomer.statement());

	}

}
