# coding: utf-8
puts "注意!!!対象ファイルは同じディレクトリにありますか?"
puts "ファイル名を入力してください。"
fileName = STDIN.gets.chomp
File.open("#{fileName}.txt", "r:UTF-8"){|readFile|
  endFlag = false
  writeFile = File.open("#{fileName}_edited.txt", "w:UTF-8")
  readFile.each_line{|line|
    if line != "\n"
      writeFile.print line
      if line[-2] == "." then
        endFlag = true
      else
        endFlag = false
      end
    else
      if endFlag == true then
        writeFile.print line
      end
    end
  }
}
