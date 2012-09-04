
public class Rental {
	
	private Movie _movie;
	private int _daysRented;
	public Rental(Movie movie, int daysRented) {
	_movie = movie;
	_daysRented = daysRented; 	}
	public int getDaysRented() {
	return _daysRented; 	}
	public Movie getMovie() {
	return _movie; 	}
	double getCharge() {
		int Result = 0;
		switch (getMovie().getPriceCode()) {
			case Movie.REGULAR:
			Result += 2;
			if (getDaysRented() > 2)
			Result += (getDaysRented() - 2) * 1.5;
			break;
			case Movie.NEW_RELEASE:
			Result += getDaysRented() * 3;
			break;
			case Movie.CHILDRENS:
			Result += 1.5;
			if (getDaysRented() > 3)
			Result += (getDaysRented() - 3) * 1.5;
			break;
		}
		return Result;
	}
	public int getFrequentRenterPoints() {
		// TODO Auto-generated method stub
		if ((getMovie().getPriceCode() == Movie.NEW_RELEASE) && 
				getDaysRented() > 1)
				          return 2;
				      else
				         return 1;
	}


}
