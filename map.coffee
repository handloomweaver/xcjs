class Map extends XCNode
	constructor: () ->
		super()
		this.loadMap()
		
	loadMap: ->
		
		@gridSize = 16
		width = 20
		height = 24

		tiles = [
		['#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#',],
		['#','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
		['#','.','@','@','@','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
		['#','.','@','@','@','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
		['#','.','@','@','@','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
		['#','.','@','@','@','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
		['#','.','@','@','@','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
		['#','.','@','.','.','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
		['#','.','@','.','.','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
		['#','.','@','.','.','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
		['#','.','@','.','.','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
		['#','.','@','@','@','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
		['#','.','@','@','@','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
		['#','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
		['#','.','@','@','@','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
		['#','.','@','@','@','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
		['#','.','@','@','@','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
		['#','.','@','@','@','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
		['#','.','@','@','@','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
		['#','.','@','.','.','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
		['#','.','@','.','.','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
		['#','.','@','.','.','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
		['#','.','@','.','.','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
		['#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#',],
		]

		
		@tiles = new Array(width)
		for i in [0 .. width]
			@tiles[i] = new Array(height)
			
		for x in [0 ... width]
			for y in [0 ... height]
				type = tiles[y][x]
				fileName = ""
				if type == "#"
					fileName = "walltile.png"
				else if type == "@"
					fileName = "blocktile.png"
				
				if fileName != ""
					@tiles[x][y] = new GridEntity(fileName, this, type, x, y)
				else
					empty = []
					empty.type = "empty"
					@tiles[x][y] = "empty"
					
					
	moveableBlock: (block) ->  block.type != '#'
		