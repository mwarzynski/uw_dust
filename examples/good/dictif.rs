fn main() -> {
   scores: {str -> int};

   scores["MIM"] = 100;
   scores["PW"]  = 1;
   
   if scores["MIM"] > scores["PW"] {
     print("MIM is the best.");
   } else {
     print("Something went wrong.");
   }
}
