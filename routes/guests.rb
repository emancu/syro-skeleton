Guests = Syro.new(Frontend) do
  page[:title] = "Welcome"

  get do
    render("views/guests/index.mote")
  end
end
