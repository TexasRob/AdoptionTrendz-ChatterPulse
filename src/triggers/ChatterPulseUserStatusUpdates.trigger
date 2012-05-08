trigger ChatterPulseUserStatusUpdates on User (before update) {
    
    for (Integer i = 0; i < trigger.new.size(); i++)
    {
        if (trigger.old[i].CurrentStatus != trigger.new[i].CurrentStatus)
        {
            ChatterPulseUser.PulseAdd(Trigger.newMap.keySet());
        }
    }
    
    
}