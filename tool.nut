function do_work(player, start, end) {
	local base_station = tile_x(start.x, start.y, start.z).get_halt()
	local vanish_station = tile_x(end.x, end.y, end.z).get_halt()
	if(base_station == null || vanish_station == null){
		return
	}
	else if(vanish_station.get_owner().nr != player.nr && player.nr != 1){
		return "error"
	}
	else if((base_station <=> vanish_station) == 0){
		return "Same station!!"
	}
	local err = command_x(tool_merge_stop).work(player, start, end, "")
	if(err){
		return err
	}
}