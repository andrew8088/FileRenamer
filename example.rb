require_relative 'filerenamer'

fr = FileRenamer.new /(\d{4})(\d{2})/, "example"

months = ["", "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]

fr.rename_files do |md, i|
 "#{months[md[2].to_i]}-#{md[1]} vacation #{i}.txt"
end
