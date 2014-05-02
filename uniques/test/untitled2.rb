@team_list = {}

CSV.foreach('lackp_starting_rosters.csv', headers: true, :header_converters => :symbol, :converters => :all) do |row|
  @team_list[row[:team]][row[:first_name] + " " + row[:last_name]] = row[:position]

}
	end
  @team_list
  erb :index
end