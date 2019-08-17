require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  #Grab the names of the pigeons from data and store them as empty hashes in pigeon_list
  data.values.map do |attribute|
    attribute.values.map do |type|
       counter = 0
       while type[counter] do
        if (!pigeon_list.has_key?(type[counter])) then
          pigeon_list.store(type[counter], {})
        end
          counter += 1
       end
    end
  end
  

  pigeon_list.each do |name, hash|
     pigeon_list[name] = {:color => [], :gender => [],  :lives => []}
    end
  puts pigeon_list
  
  data.map do |attribute, values|
    values.map do |type, names|
      counter = 0
      while names[counter] do
        pigeon_list[names[counter]][attribute] << type.to_s
        counter += 1
      end
    end
  end

  return pigeon_list
end
