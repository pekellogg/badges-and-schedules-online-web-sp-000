def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(speakers_list)
    batch_badges = []
    speakers_list.each do |speaker|
        badge = badge_maker(speaker)
        batch_badges << badge
    end
    batch_badges
end

def assign_rooms(speakers_list)
    speakers_list.each_with_index.map do |speaker, room|
        "Hello, #{speaker}! You'll be assigned to room #{room + 1}!"
    end
end

def printer(speakers_list)
    batch_badge_creator(speakers_list).each do |badge|
        puts badge
    end
    assign_rooms(speakers_list).each do |speaker_with_room_assignment|
        puts speaker_with_room_assignment
    end
end

