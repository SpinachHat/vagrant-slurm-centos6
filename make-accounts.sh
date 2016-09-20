sacctmgr add account parent1
sacctmgr add account user1 parent=parent1
sacctmgr -i add user user1  DefaultAccount=user1
sacctmgr add account user2 parent=parent1
sacctmgr add account user3 parent=parent1

sacctmgr add account parent2
sacctmgr add account user4 parent=parent2
sacctmgr add account user5 parent=parent2
sacctmgr add account user6 parent=parent2
