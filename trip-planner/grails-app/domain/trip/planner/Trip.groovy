package trip.planner

class Trip {
    String nameOfThePlace
    Integer durationOfTheTrip
    Date arrivalDate
    static constraints = {
     nameOfThePlace blank: false
     arrivalDate blank: false
     durationOfTheTrip nullable: true
    }
}
