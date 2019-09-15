class Hotspot < ApplicationRecord
	enum concentration: %w[ low medium high ]
end