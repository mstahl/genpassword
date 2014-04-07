class Genpassword::CLI < Thor

  # Constants ------------------------------------------------------------------

  LETTERS = [ ('a'..'z'), ('A'..'Z') ].map(&:to_a).flatten
  NUMBERS = ('0'..'9').to_a
  SYMBOLS = '<>/\[]{}()-=_+!@#$%^&*~`,.;:|'.split(//)

  desc 'generate', 'Generate a random password'
  long_desc <<-LONGDESC
    `genpassword` or `genpassword generate` will generate you a random password
    using letters, numbers, and symbols. Turn these off with the
    `--no-letters`, `--no-numbers`, and `--no-symbols` options. Change the length
    of the generated password with the `-c` option.
  LONGDESC
  option :letters, type: :boolean, aliases: [ '-l' ], default: true
  option :numbers, type: :boolean, aliases: [ '-n' ], default: true
  option :symbols, type: :boolean, aliases: [ '-s' ], default: true
  option :chars, type: :numeric, default: 12, aliases: [ '-c' ]
  def generate
    char_set = []
    char_set += LETTERS if options[:letters]
    char_set += NUMBERS if options[:numbers]
    char_set += SYMBOLS if options[:symbols]

    password = (0..options[:chars]).map{|_| char_set.sample}.join

    puts "Your brand new password is {{ #{password} }}. Enjoy!"
  end
  default_task :generate
end
