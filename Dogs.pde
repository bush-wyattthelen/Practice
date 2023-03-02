import java.util.*;

class Dog {
  private int dogHeight;
  private float dogWeight;
  
  Dog() {
    dogHeight = 5;
    dogWeight = 10.0;  
  }
  
  Dog(int dogHeight, float dogWeight) {
    this.dogHeight = dogHeight;
    this.dogWeight = dogWeight;
  }
  
  public int getHeight() {
    return this.dogHeight;
  }
  public float getWeight() {
    return this.dogWeight;
  }
  
  public void setHeight(int dogHeight) {
    this.dogHeight = dogHeight;
  }
  public void setWeight(float dogWeight) {
    this.dogWeight = dogWeight;
  }
  
  public void bark() {
    System.out.println("woof");
  }
}

class EnglishBullDog extends Dog {
  private int iq;
  
  EnglishBullDog() {
    super();
    this.iq = 75;
  }
  EnglishBullDog(int iq, int dogHeight, float dogWeight) {
    super(dogHeight, dogWeight);
    this.iq = iq;
  }
  
  public void bark() {
    System.out.println("bowwowww");
    System.out.println(iq);
  }
}

ArrayList<Dog> dogs = new ArrayList<Dog>();


void setup() {
  size(300, 300);
  background(255);
  fill(0);
  textAlign(CENTER);
  textSize(30);
  text("Click to print", width/2, height/2);
  
  dogs.add(new Dog());
  dogs.add(new Dog());
  dogs.add(new Dog(3, 8.0));
  dogs.add(new Dog((int)(Math.random() * 10 + 1), (float)(Math.random() * 15)));
  dogs.add(new EnglishBullDog());
  dogs.add(new EnglishBullDog(129, 2, 7.5));
  
}

void draw() {

}

void mouseClicked() {
  System.out.println("\n");
  for(int i = 0; i < dogs.size(); i++) {
    dogs.get(i).setHeight((int)(Math.random() * 11 + 5));
    dogs.get(i).setWeight((float)(Math.random() * 11 + 3));
    System.out.println("Dog Height: " + dogs.get(i).getHeight() + "     Dog Weight: " + dogs.get(i).getWeight());
    dogs.get(i).bark();  
    System.out.println();
  }
}
