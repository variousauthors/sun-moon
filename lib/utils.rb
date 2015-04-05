
def character_map(string, map = [[], []])
  string.chars.inject("") do |inversion, char|
    if index = map[0].index(char)
      inversion << map[1][index]
    elsif index = map[1].index(char)
      inversion << map[0][index]
    else
      inversion << char
    end

    inversion
  end
end

def do_work(args, work = method(:character_map))
  # convert each of the given file names from the old style to the new
  args.each do |filename|
    puts filename
    level_file = File.open(filename, 'r')
    level = level_file.read

    # regular expressions
    # preamble: until the term 'message' or two newlines not followed by a '(' or EOF
    preamble = '(?<preamble>.*?(\nmessage|\n\n(?!\()|\Z))'
    map = '(?<map>\n*.*?(\Z|\n\n))'
    solutions = '(?<solutions>\( Solutions \).*)?'

    match = level.match(/#{ preamble }#{ map }#{ solutions }/m)

    map = match[:map]

    level_file.reopen(filename, 'w')
    level_file.write("#{ match[:preamble] }#{ work.call(map) }#{ match[:solutions] }")
  end
end
