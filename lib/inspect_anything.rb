require "inspect_anything/version"

module InspectAnything
  def io_inspect(label: nil, io: STDOUT)
    io.write("#{label}: ") if label
    io.puts(self.inspect)
    self
  end
end

Object.include(InspectAnything)
