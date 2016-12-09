require './names'

def readNames(filename)
  if File.exists? (filename)
    file = open(filename, 'r')

    file.each do |line|
      l = line.split.map{|x| (x == "0" ? x = "1001": x)}

      NameChart.create(name: l[0],
                       year1900: l[1],
                       year1910: l[2],
                       year1920: l[3],
                       year1930: l[4],
                       year1940: l[5],
                       year1950: l[6],
                       year1960: l[7],
                       year1970: l[8],
                       year1980: l[9],
                       year1990: l[10],
                       year2000: l[11]) if !NameChart.first(:name => l[0])
    end
  end
end