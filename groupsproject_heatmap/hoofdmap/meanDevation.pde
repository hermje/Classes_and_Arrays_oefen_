// Functies voor het berekenen van gemiddelden per leeftijdscategorie

//MEAN PER LEEFTIJDSCATEGORIE
float calculateMeanSub15(){
    float sumSub15 = 0;
    int countSub15 = 0;
    
    for (int i = 0; i < dataPunt.size(); i++) {
      dataPunten punt = dataPunt.get(i);
      if (punt.leeftijdsCategorie.equals("<15")) {
         sumSub15 = sumSub15 + punt.waardeTotaal;
         countSub15++;
      }
    }
    
    if (countSub15 > 0) {
      return sumSub15 / countSub15;
    }
    return 0;
  }

float calculateMean15to19(){
    float sum15to19 = 0;
    int count15to19 = 0;
    
    for (int i = 0; i < dataPunt.size(); i++) {
      dataPunten punt = dataPunt.get(i);
      if (punt.leeftijdsCategorie.equals("15-19")) {
         sum15to19 = sum15to19 + punt.waardeTotaal;
         count15to19++;
      }
    }
    
    if (count15to19 > 0) {
      return sum15to19 / count15to19;
    }
    return 0;
  }

float calculateMean20to24(){
    float sum20to24 = 0;
    int count20to24 = 0;
    
    for (int i = 0; i < dataPunt.size(); i++) {
      dataPunten punt = dataPunt.get(i);
      if (punt.leeftijdsCategorie.equals("20-24")) {
         sum20to24 = sum20to24 + punt.waardeTotaal;
         count20to24++;
      }
    }
    
    if (count20to24 > 0) {
      return sum20to24 / count20to24;
    }
    return 0;
  }

float calculateMean25to29(){
    float sum25to29 = 0;
    int count25to29 = 0;
    
    for (int i = 0; i < dataPunt.size(); i++) {
      dataPunten punt = dataPunt.get(i);
      if (punt.leeftijdsCategorie.equals("25-29")) {
         sum25to29 = sum25to29 + punt.waardeTotaal;
         count25to29++;
      }
    }
    
    if (count25to29 > 0) {
      return sum25to29 / count25to29;
    }
    return 0;
  }

float calculateMean30to39(){
    float sum30to39 = 0;
    int count30to39 = 0;
    
    for (int i = 0; i < dataPunt.size(); i++) {
      dataPunten punt = dataPunt.get(i);
      if (punt.leeftijdsCategorie.equals("30-39")) {
         sum30to39 = sum30to39 + punt.waardeTotaal;
         count30to39++;
      }
    }
    
    if (count30to39 > 0) {
      return sum30to39 / count30to39;
    }
    return 0;
  }

float calculateMean40to49(){
    float sum40to49 = 0;
    int count40to49 = 0;
    
    for (int i = 0; i < dataPunt.size(); i++) {
      dataPunten punt = dataPunt.get(i);
      if (punt.leeftijdsCategorie.equals("40-49")) {
         sum40to49 = sum40to49 + punt.waardeTotaal;
         count40to49++;
      }
    }
    
    if (count40to49 > 0) {
      return sum40to49 / count40to49;
    }
    return 0;
  }

float calculateMean50Plus(){
    float sum50Plus = 0;
    int count50Plus = 0;
    
    for (int i = 0; i < dataPunt.size(); i++) {
      dataPunten punt = dataPunt.get(i);
      if (punt.leeftijdsCategorie.equals("50+")) {
         sum50Plus = sum50Plus + punt.waardeTotaal;
         count50Plus++;
      }
    }
    
    if (count50Plus > 0) {
      return sum50Plus / count50Plus;
    }
    return 0;
  }
