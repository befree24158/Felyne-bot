module FelyneBot
	module Commands
		module Raid
			extend Discordrb::Commands::CommandContainer
			command(:raid, description: 'Displays raid schedule.') do |event, list|
				now = Time.now
				now = now.to_i
				name1=IO.readlines("bot/raid1")[0]
				name2=IO.readlines("bot/raid2")[0]
				name3=IO.readlines("bot/raid3")[0]
				name4=IO.readlines("bot/raid4")[0]
				name5=IO.readlines("bot/raid5")[0]
				if name1.to_s == ''
					raid1 = "```Raid 1:  Nothing set up"
				else
					name1=name1.gsub("\n","")
					time1=IO.readlines("bot/raid1")[1].to_i
					timediff1 = time1 - now - 3600
					if time1 < now
						raid1 = "```Raid 1:  In process or Completed"
					else
						raid1 = "```Raid 1:  #{name1} in #{Time.at(timediff1).strftime('%H hours %M minutes %S seconds')}"
					end
				end
				if name2.to_s == ''
					raid2 = "Raid 2:  Nothing set up"
				else
					name2=name2.gsub("\n","")
					time2=IO.readlines("bot/raid2")[1].to_i
					timediff2 = time2 - now - 3600
					if time2 < now
						raid2 = "Raid 2:  In process or Completed"
					else
						raid2 = "Raid 2:  #{name2} in #{Time.at(timediff2).strftime('%H hours %M minutes %S seconds')}"
					end
				end
				if name3.to_s == ''
					raid3 = "Raid 3:  Nothing set up"
				else
					name3=name3.gsub("\n","")
					time3=IO.readlines("bot/raid3")[1].to_i
					timediff3 = time3 - now - 3600
					if time3 < now
						raid3 = "Raid 3:  In process or Completed"
					else
						raid3 = "Raid 3:  #{name3} in #{Time.at(timediff3).strftime('%H hours %M minutes %S seconds')}"
					end
				end
				if name4.to_s == ''
					raid4 = "Raid 4:  Nothing set up"
				else
					name4=name4.gsub("\n","")
					time4=IO.readlines("bot/raid4")[1].to_i
					timediff4 = time4 - now - 3600
					if time4 < now
						raid4 = "Raid 4:  In process or Completed"
					else
						raid4 = "Raid 4:  #{name4} in #{Time.at(timediff4).strftime('%H hours %M minutes %S seconds')}"
					end
				end
				if name5.to_s == ''
					raid5 = "Raid 5:  Nothing set up```"
				else
					name5=name5.gsub("\n","")
					time5=IO.readlines("bot/raid5")[1].to_i
					timediff5 = time5 - now - 3600
					if time5 < now
						raid5 = "Raid 5:  In process or Completed```"
					else
						raid5 = "Raid 5:  #{name5} in #{Time.at(timediff5).strftime('%H hours %M minutes %S seconds')}```"
					end
				end
				event << "#{raid1}\n#{raid2}\n#{raid3}\n#{raid4}\n#{raid5}"
				if list == 'list'
					event << "userlist"
				end
			end
		end
	end
end