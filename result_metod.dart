

List<String> result(final String disease, final int counter) {
  List<String> res = [];
  final String diseases = disease;
  if (diseases == "Bruises" && 5 <= counter && counter <= 9) {
    res.add(
        "From The Symptoms You Have Mentioned,You Are Probably Infected With $diseases");

    res.add(
        "Rest time before starting the treatment program: 24-48 hours.\n Duration of the treatment program: 1-10 days");


         res.add("assets/images/bruise.jpg");

  } else if (diseases == "Muscle contraction" && 5 <= counter && counter <= 9) {
    res.add(
        "From The Symptoms You Have Mentioned,You Are Probably Infected With $diseases");

    res.add(
        "Rest time before starting the treatment program: 1-3 days. \n Duration of the treatment program: 1 week");

        res.add("assets/images/Muscle contraction.jpg");


  } else if (diseases == "inflammation" && 4 <= counter && counter <= 7) {
    res.add(
        "From The Symptoms You Have Mentioned,You Are Probably Infected With $diseases");

    res.add(
        "Rest time before starting the treatment program: 2-4 days.\nDuration of the treatment program: 1-3 weeks");

        res.add("assets/images/inflammation.jpg");


  } else if (diseases == "stress" && 4 <= counter && counter <= 7) {
    res.add(
        "From The Symptoms You Have Mentioned,You Are Probably Infected With $diseases");

    res.add(
        "Rest time before starting the treatment program: 2-4 days.\n Duration of the treatment program: 1-10 days");

        res.add("assets/images/stress.jpg");


  } else if (diseases == "Tightening of the muscles" &&
      3 <= counter &&
      counter <= 5) {
    res.add(
        "From The Symptoms You Have Mentioned,You Are Probably Infected With $diseases");

    res.add(
        "Rest time before starting the treatment program: 2-4 days.\n Duration of the treatment program: 10-20 days");

        res.add("assets/images/Tightening of the muscles.jpg");


  } else if (diseases == "Partial rupture" && 7 <= counter && counter <= 10) {
    res.add(
        "From The Symptoms You Have Mentioned,You Are Probably Infected With $diseases");

    res.add(
        "Rest time before starting the treatment program: 3-6 days.\n Duration of the treatment program: 3-7 weeks");



        res.add("assets/images/Partial rupture.jpg");


  } else if (diseases == "Total rupture" && 6 <= counter && counter <= 8) {
    res.add(
        "From The Symptoms You Have Mentioned,You Are Probably Infected With $diseases");

    res.add(
        "Rest time before starting the treatment program: According to the opinion of the doctor and after surgery if needed \nDuration of the treatment program: 5-12 weeks");

        res.add("assets/images/Total rupture.jpg");


  } else {
   res.add("erorr");
   res.add("erorr");
    res.add("assets/images/error.png");
  }

  return res;
}

