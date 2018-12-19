

def bonus
  epic_tragedy = {
   :montague => {
      :patriarch => {name: "Lord Montague", age: "53"},
      :matriarch => {name: "Lady Montague", age: "54"},
      :hero => {name: "Romeo", age: "15", status: "alive"},
      :hero_friends => [
         {name: "Benvolio", age: "17", attitude: "worried"},
         {name: "Steven", age: "30", attitude: "confused"}
      ]
   }, 
   :capulet => {
      :patriarch => {name: "Lord Capulet", age: "50"},
      :matriarch => {name: "Lady Capulet", age: "51"},
      :heroine => {name: "Juliet", age: "15", status: "alive"},
      :heroine_friends => [
          {name: "Mercutio", age: "18", attitude: "hot-headed"}, 
          {name: "Nurse", age: "44", attitude: "worried"}
      ]
   }
  }

  #code your solution here:
  
epic_tragedy[:montague][:hero][:status] = "dead"
epic_tragedy[:capulet][:heroine][:status] = "dead"

#or use iteration

epic_tragedy.each do |key, value| #you need a key and a value to access hash (this accesses the first key)
  value.each do |key2, value2| #this accesses the 2nd key
    if key2 == :hero || key2 == :heroine #If the hash contain :hero OR :heroine then set statu within value2 to "dead"
      value2[:status] = "dead"
end   
 


  #Don't touch the following line! The `bonus` method must return our newly modified epic tragedy hash
  epic_tragedy
end
end
end