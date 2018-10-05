fn main() -> {
  scores: {str -> int};
  scores["MIM"] = 10;
  scores["PW"]  = -1;

  best_score: int = scores["MIM"];

  print(scores);
  print(best_score);
}
