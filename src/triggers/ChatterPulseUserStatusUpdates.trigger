trigger ChatterPulseUserStatusUpdates on User (before update) {

	for (User u : Trigger.new) { //for all records
    	if (u.CurrentStatus != Trigger.oldMap.get(u.Id).CurrentStatus) { //was the status updated?
        	ChatterPulseUser.PulseAdd(Trigger.newMap.keySet());
        }
    }    
    
}