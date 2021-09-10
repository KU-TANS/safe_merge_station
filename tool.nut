function is_valid_pos(player, start, pos) {
    if(tile_x(start.x, start.y, start.z).get_halt() != null) {
        return 2
    }
    else {
		// 1クリック目のタイルに駅が無ければその時点でストップする
        return 0
    }
}

function do_work(player, start, end) {
	local base_station = tile_x(start.x, start.y, start.z).get_halt()
	local vanish_station = tile_x(end.x, end.y, end.z).get_halt()
	if(vanish_station == null){
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
