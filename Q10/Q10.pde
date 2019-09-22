ArrayList<String[]> a = new ArrayList<String[]>();
void setup() {
  
}
void draw() {
  for(int n=0; n<1; n++) {
    String[] b = new String[10];
    int x=0;
    int y=0;
    int z=0;
    int i=0;
    while(x<3 || y<3 || z<3) {
      String temp=" ";
      switch(round(random(0,2))) {
        case 0:
          if(x<3) {
            temp="A"+round(random(1,6));
            while(includes(temp,b)) {
              temp="A"+round(random(1,6));  
            }
            x++;
          }
        break;
        case 1:
          if(y<3) {
            temp="B"+round(random(1,5));
            while(includes(temp,b)) {
              temp="B"+round(random(1,5));  
            }
            y++;
          }
        break;
        case 2:
          if(z<3) {
            temp="C"+round(random(1,4));
            while(includes(temp,b)) {
              temp="C"+round(random(1,4));  
            }
            z++;
          }
        break;
      }
      if(temp!=" ") {
        b[i]=temp;
        i++;
      }
    }
    
    while(b[9]==null) {
      String temp=" ";
      switch(round(random(0,2))) {
        case 0:
          temp="A"+round(random(1,6));
        break;
        case 1:
          temp="B"+round(random(1,5));
        break;
        case 2:
          temp="C"+round(random(1,4));
        break;
      }
      if(!includes(temp,b)) {
        b[9]=temp;
      }    
    }
    if(check(b)) {
      a.add(b);  
    }
  }
  println(a.size());
}

Boolean check(String[] x) {
  boolean t=false;
  for(int i=0; i<a.size(); i++) {
    int temp=0;
    for(int j=0; j<x.length; j++) {
      if(includes(x[j],a.get(i))) {
        temp++;
      }
    }
    if(temp>9) {
      t=true;    
    }
  }
  return !t;
}

Boolean includes(String x, String[] y) {
  boolean temp=false;
  for(int i=0; i<y.length; i++) {
    if(y[i]==x) {
      temp=true;  
    }
  }
  return temp;
}