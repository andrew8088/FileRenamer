class FileRenamer
  attr_accessor :regex
  def initialize regex, path = Dir.pwd
    @regex = regex
    @path  = path
  end

  def rename_files
    Dir.glob( File.join(@path, "*")).each_with_index do |file, i|
      file = File.basename(file)
      unless (md = file.match regex).nil?
        rename file, yield(md,i)
      end
    end
    puts "Successfully renamed all files that matched!"
  end

  def rename_file_in path
    old_path = @path
    @path = path
    rename_files
    @path = old_path
  end

  private

  def rename old, new
    File.rename(File.join(@path, old), File.join(@path, new))
  end
end
