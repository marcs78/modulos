require 'os'

def my_os
    if OS.windows?

        "Windows"

    elsif OS.linux?

        "Linux"

    elsif OS.mac?

        "Osx"

    else

        "Não consigo identificar"
    end
end

puts "Meu Computador possui #{OS.cpu_count} core, é #{OS.bits} bits e o sistema operacional é #{my_os}"



