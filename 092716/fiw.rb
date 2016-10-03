def convert_number_to_text (input)

   words = { 0 => "Zero",1 => "One",2 => "Two", 3 =>"Three", 4 => "Four", 5 => "Five", 6 => "Six", 7 => "Seven", 8 => "Eight", 9 =>"Nine", 10 => "Ten",
  11 => "Eleven", 12 => "Twelve", 13 => "Thirteen", 14 => "Fourteen", 15 => "Fiveteen", 16 => "Sixteen", 17 => "Seventeen",18 => "Eighteen",19 => "Nineteen",20 => "Twenty",
  21 => "Twenty One", 22 => "Twenty Two", 23 => "Twenty Three", 24 => "Twenty Four", 25 => "Twenty Five", 26 => "Twenty Six", 27 => "Twenty Seven",28 => "Twenty Eight", 29 => "Twenty Nine",
  30 => "Thirty",31 => "Thirty One",32 => "Thirty Two",33 => "Thirty Three",34 => "Thirty Four",35 => "Thirty Five", 36 => "Thirty Six",37 => "Thirty Seven",38 => "Thirty Eight", 39 => "Thirty Nine",
  40 => "Fourty", 41 => "Fourty One", 42 => "Fourty Two",43 => "Fourty Three",44 => "Fourty Four",45 => "Fourty Five",46 => "Fourty Six",47 => "Fourty Seven",48 => "Fourty Eight",49 => "Fourty Nine",
  50 => "Fifty", 51 => "Fifty One", 52 => "Fifty Two",53 => "Fifty Three",54 => "Fifty Four",55 => "Fifty Five",56 => "Fifty Six",57 => "Fifty Seven",58 => "Fifty Eight",59 => "Fifty Nine",
  60 => "Sixty", 61 => "Sixty One", 62 => "Sixty Two",63 => "Sixty Three",64 => "Sixty Four",65 => "Sixty Five",66 => "Sixty Six",67 => "Sixty Seven",68 => "Sixty Eight",69 => "Sixty Nine",
  70 => "Seventy", 71 => "Seventy One", 72 => "Seventy Two",73 => "Seventy Three",74 => "Seventy Four",75 => "Seventy Five",76 => "Seventy Six",77 => "Seventy Seven",78 => "Seventy Eight",79 => "Seventy Nine",
  80 => "Eighty",  81 => "Eighty One", 82 => "Eighty Two",83 => "Eighty Three",84 => "Eighty Four",85 => "Eighty Five",86 => "Eighty Six",87 => "Eighty Seven",88 => "Eighty Eight",89 => "Eighty Nine",
  90 => "Ninety",  91 => "Ninety One", 92 => "Ninety Two",93 => "Ninety Three",94 => "Ninety Four",95 => "Ninety Five",96 => "Ninety Six",97 => "Ninety Seven",98 => "Ninety Eight",99 => "Ninety Nine",
   "&" => "and",100 => "Hundred", 1000 => "Thousand", 1000000 => "Million", 1000000000 => "Billion"}


 arr = input#Read the numbers as an array
first_two = [arr[0],arr[1]].join.to_i
nxt_two = [arr[1],arr[2]].join.to_i
mid_two= [arr[2],arr[3]].join.to_i
mid_m_two= [arr[3],arr[4]].join.to_i
mid_l_two= [arr[4],arr[5]].join.to_i
mid_s_two=  [arr[5],arr[6]].join.to_i
adder = []
last_two = arr.last(2).join.to_i
 




  if arr.length==1 
  adder.push(words[arr[0]])
elsif arr.length == 2
 adder.push([words[first_two]]) 
elsif arr.length == 3 #Hundreds 
   adder.push([words[arr[0]],words[100],words["&"],words[last_two]].join(" "))
elsif arr.length == 4  #Thousands
   adder.push([words[arr[0]],words[1000],words[arr[2]],words[100],words["&"],words[last_two]].join(" "))
elsif arr.length == 5  #Ten Thousands
   adder.push([words[first_two],words[1000],words[arr[2]],words[100],words["&"],words[last_two]].join(" "))
   elsif arr.length == 6  #hundreds of Thousands
   adder.push([words[arr[0]], words[100],words["&"],words[nxt_two],words[1000],words[arr[3]],words[100],words["&"],words[last_two]].join(" "))
   elsif arr.length == 7  #milly
   adder.push([words[arr[0]], words[1000000], words[arr[1]], words[100],words["&"],words[mid_two],words[1000],words[arr[4]],words[100],words["&"],words[last_two]].join(" "))
   elsif arr.length == 8  # tens of milly
   adder.push([words[first_two], words[1000000], words[arr[2]], words[100],words["&"],words[mid_m_two],words[1000],words[arr[5]],words[100],words["&"],words[last_two]].join(" "))
   elsif arr.length == 9  # hundreds of milly
   adder.push([words[arr[0]], words[100],words["&"], words[nxt_two], words[1000000], words[arr[3]], words[100],words["&"],words[mid_l_two],words[1000],words[arr[6]],words[100],words["&"],words[last_two]].join(" "))
   elsif arr.length == 10  # Billion!!!!!!!!!!!!
   adder.push([words[arr[0]], words[1000000000],words[arr[1]], words[100], words["&"], words[mid_two], words[1000000], words[arr[4]], words[100],words["&"],words[mid_s_two],words[1000],words[arr[7]],words[100],words["&"],words[last_two]].join(" "))
else 
  puts "Invalid input. Please try again"
  
end

adder

end


puts "Please enter a number and hit 'Enter' button"

cr=gets.chomp.split("")
ot= []
arr=[]
if cr[0]=="-"
  arr=cr[1..-1].map(&:to_i)
  neg = "negative "
  puts ot= [neg,convert_number_to_text(arr)].join(" ")
elsif cr[0] !="-"
  arr = cr.map(&:to_i)
  puts ot=[convert_number_to_text(arr)]
end







