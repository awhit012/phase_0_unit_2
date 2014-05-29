# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [by myself, with: ].


# Pseudocode
# CREATE class Song
		# SET ATTR_READER :title
		# SET ATTR_READER :artist

		# DEFINE method initialize with two ARGUMENTS title, artist
			# SET INSTANCE VARIABLE @title = title
			# SET INSTANCE VARIABLE @artist = artist

		# DEFINE method play with NO ARGUMENTS
			# print string "Playing [song title]."

	# CREATE class Playlist

		# DEFINE method initialize with single ARGUMENT *songs
			# SET INSTANCE VARIABLE @songs = songs

		# DEFINE method add with single ARGUMENT *tracks
			# PUSH EACH track to array @songs

		# DEFINE method num_of_tracks with NO ARGUMENTS
			# RETURN number of elements in array @songs

		# DEFINE method REMOVE with single ARGUMENT *tracks
			# DELETE each track from array @songs

		# DEFINE method includes? with single ARGUMENT track
			# check if array @songs INCLUDE? track

		# DEFINE method play_all with NO ARGUMENTS
			# CALL method play for EACH track in array @songs

		# DEFINE method display with NO ARGUMENTS
			# PRINT EACH track in array @songs



# Initial Solution
# class Song

# 	attr_reader :artist 
# 	attr_reader :title

# 	def initialize(title, artist)
# 		@title = title
# 		@artist = artist
# 	end

# 	def play
# 		puts "playing" + title 
# 	end
# end


# class Playlist 

# 	def initialize(*tracks)
# 		@playlist = tracks 
# 	end

# 	def add(*tracks)
# 		tracks.each { |track| @playlist << track }
# 	end

# 	def num_of_tracks
# 		@playlist.length
# 	end

# 	def remove(*tracks)
# 	end

# 	def includes?(track)
# 		@playlist.include?(track)
# 	end

# 	def play_all
# 	end
# end




# Refactored Solution
class Song

	attr_reader :artist 
	attr_reader :title

	def initialize(title, artist)
		@title = title
		@artist = artist
	end

	def play
		puts "playing" + title 
	end
end


class Playlist 

	def initialize(*tracks)
		@playlist = tracks 
	end

	def add(*tracks)
		tracks.each { |track| @playlist << track }
	end

	def num_of_tracks
		@playlist.length
	end

	def remove(*tracks)
	end

	def includes?(track)
		@playlist.include?(track)
	end

	def play_all
	end
end





# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection 