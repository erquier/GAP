package gap

class Films {

    String category
    String title
    String rating
    String specialFeature
    String description
    int rentalDuration
    int lenght
    Double replacementCost

    List<Actors> actors
    List<Rentals> rentals
    static embedded = ['actors', 'rentals']


}
