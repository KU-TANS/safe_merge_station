function do_work(player, start, end) {
	local start_tile = tile_x(start.x, start.y, start.z)
	local end_tile = square_x(end.x, end.y)
	local base_station = start_tile.get_halt()
	local vanish_station = end_tile.get_player_halt(player)
	if(base_station == null || vanish_station == null){
		return
	}
	local base_station_name = base_station.get_name()
	local vanish_station_name = vanish_station.get_name()
	local base_station_owner = base_station.get_owner().get_name()
	local vanish_station_owner = vanish_station.get_owner().get_name()
	if(base_station_name == vanish_station_name && base_station_owner == vanish_station_owner){
		return "Same station!!"
	}
	local err = command_x(tool_merge_stop).work(player, start, end,"")
	if(err != null){
		return err
	}
}