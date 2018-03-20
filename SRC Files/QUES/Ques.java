/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QUES;

import QuestionBank.Questions;

/**
 *
 * @author Inder
 */
public class Ques {
    
    
    public static Questions getQ(int i){
        
      Questions[] qList = new Questions[25];
      
      
      /** TODO find fix the questions**/
      qList[0] = new Questions("BrainTeaser",100,"Which of the following words is a palindrome: yacht, airplane, racecar, train?","yacht","airplane","racecar","train","racecar");
      qList[1] = new Questions("BrainTeaser",200,"Which letter should appear next in the following sequence: Z B Y D X F W H?","I","U","V","Q","V");
      qList[2] = new Questions("BrainTeaser",300,"MELON is to ENMOL as 83425 is to?","52438","33825","83524","35824","35824");
      qList[3] = new Questions("BrainTeaser",400,"What sum we should get when we add two opposite faces of dice","5","6","7","9","7");
      qList[4] = new Questions("BrainTeaser",500,"If Pesron travels one mile north, two miles west, one mile north, one mile east, three miles south, one mile east, how far will he be from his starting point"
              ,"one mile","three mile","two mile","0 mile","one mile");
      
      qList[5] = new Questions("Food",100,"What ingredient makes bread rise?","Baking Soda","Yeast","Egg","Water","Yeast");
      qList[6] = new Questions("Food",200,"What food does the Giant Panda mainly eat?","Bread","Egg","Bamboo","Grass","Bamboo");
      qList[7] = new Questions("Food",300,"What is Tofu made of?","Soya Beans","Milk","Baking Powder","Cheese","Soya Beans");
      qList[8] = new Questions("Food",400,"From which country does Feta cheese originate?","Italy","France","Germany","Greece","Greece");
      qList[9] = new Questions("Food",500,"Fajitas are widely eaten in which country?","Mexico","Thailand","China","USA","Mexico");
      
      qList[10] = new Questions("Sports",100,"How many players are there in an ice hockey team?","4","5","6","7","6");
      qList[11] = new Questions("Sports",200,"How many red balls are used in a game of snooker?","14","13","12","6","14");
      qList[12] = new Questions("Sports",300,"Which NBA basketball team is based in Detroit?","Pistons","Bulls","Raptors","Celtics","Pistons");
      qList[13] = new Questions("Sports",400,"Who is known as godfather of snooker","Ronnie Sullivan","Mark Selby","Higgins","Robertson","Ronnie Sullivan");
      qList[14] = new Questions("Sports",500,"Which basketball player is highest scorer in NBA","Michael Jordan","Kareem Abdul-Jabbar","Lebron James","Kobe Bryant","Kareem Abdul-Jabbar");
      
      qList[15] = new Questions("Science",100,"Who created the famous equation E = mc2?","Bohr","Einstein","Thomas","Graham Bell","Einstein");
      qList[16] = new Questions("Science",200,"What is the only fossil fuel still in a solid state?","Coal","Oil","Natural Gas","Carbon","Coal");     /** To do complete questionare **/
      qList[17] = new Questions("Science",300,"What scientific name is table salt known as?","NaCl","KCL","ClNa","NaH","NaCl");
      qList[18] = new Questions("Science",400,"Which vitamin does sunlight provide to humans","Vitamin A","Vitamin B","Vitamin C","Vitamin D","Vitamin D");
      qList[19] = new Questions("Science",500,"Which two elements make up water","Hydrogen and Oxygen","Hydrogen and Alluminium","Hydrogen and Carbon","Hydrogen and Sodium","Hydrogen and Oxygen");
      
      qList[20] = new Questions("Drake",100,"Where was Drake born?","Toronto","New York","London","Miami","Toronto");
      qList[21] = new Questions("Drake",200,"What is drake's favorite NFL team","New York Giants","Atlanta Falcons","Leafs","New Orleans Saint","Atlanta Falcons");
      qList[22] = new Questions("Drake",300,"What is drake's favorite NBA team","Raptors","Bulls","Celtics","Hawks","Raptors");
      qList[23] = new Questions("Drake",400,"Biggest Hit of drake","One Dance","Hotline Bling","Work","Started From The Bottom","One Dance");
      qList[24] = new Questions("Drake",500,"What is drake's full name","Drizzy","Drake Weeknd","Aubrey Drake Graham","Drake Champagnepapi","Aubrey Drake Graham");
      
      
      
      return qList[i];
      
      
      
    }
    
   
    
}
