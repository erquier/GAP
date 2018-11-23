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
    static embedded = ['actors']


}
