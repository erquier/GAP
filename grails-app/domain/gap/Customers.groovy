package gap

class Customers {
    String firstName
    String lastName
    String district
    String address
    String city
    String country

    List<Rentals> rentals
    static embedded = ['rentals']
}
