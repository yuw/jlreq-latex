﻿--[[
3.1.3
3.1.6.a
]]

--[[
priority: 詰めの4,5,6段階が2,1,0
空け詰め両方ある時は必ず詰めが6段階，空けが2段階なので（たぶん），空けの3段階目をpriority = -1とする．
]]

local hyphen_glue = {
	[1] = {0.5, 0, 0.5, ratio = 1, priority = 1},
	[2] = {0, 0, 0},
	[300] = {0, 0, 0},
	[301] = {0, 0, 0},
	[302] = {0, 0, 0},
	[4] = {0, 0, 0},
	[5] = {0.25, 0, 0.25, ratio = 1, priority = 2},
	[6] = {0, 0, 0},
	[7] = {0, 0, 0},
	[8] = {0, 0, 0},
	[9] = {0, 0, 0},
	[10] = {0, 0, 0},
	[11] = {0, 0, 0},
	[12] = {0, 0, 0},
	[13] = {0, 0, 0},
	[14] = {0, 0, 0},
	[15] = {0, 0, 0},
	[16] = {0, 0, 0},
	[0] = {0, 0, 0},
--[[
	[20] = {0, 0, 0},
	[21] = {0, 0, 0},
	[22] = {0, 0, 0},
	[23] = {0, 0, 0},
	[24] = {0, 0, 0},
	[25] = {0, 0, 0},
	[26] = {0, 0, 0},
	[27] = {0, 0, 0},
	[28] = {0, 0, 0},
	[29] = {0, 0, 0},
	[30] = {0, 0, 0},
]]
}



local jfm = {
	dir = 'tate',
	zw = 1.0,
	zh = 1.0,
	-- 原則使わない
	kanjiskip = {0, 0, 0},
	xkanjiskip = {0, 0, 0},
	
	-- alignは適当
	[1] = { -- 初め括弧類
		chars = {'（', '〔', '［', '｛', '〈', '《', '「', '『', '【', '｟', '〘', '〖', '«', '〝',
			'‘', '“'},
		width = 0.5,
		align = 'right',
		glue = {
			[1] = {0, 0, 0},
			[2] = {0, 0, 0},
			[300] = {0, 0, 0},
			[301] = {0, 0, 0},
			[302] = {0, 0, 0},
			[4] = {0, 0, 0},
			[5] = {0.25, 0, 0.25, ratio = 1, priority = 2},
			[6] = {0, 0, 0},
			[7] = {0, 0, 0},
			[8] = {0, 0, 0},
			[9] = {0, 0, 0},
			[10] = {0, 0, 0},
			[11] = {0, 0, 0},
			[12] = {0, 0, 0},
			[13] = {0, 0, 0},
			[14] = {0, 0, 0},
			[15] = {0, 0, 0},
			[16] = {0, 0, 0},
			[0] = {0, 0, 0},
		--[[
			[20] = {0, 0, 0},
			[21] = {0, 0, 0},
			[22] = {0, 0, 0},
			[23] = {0, 0, 0},
			[24] = {0, 0, 0},
			[25] = {0, 0, 0},
			[26] = {0, 0, 0},
			[27] = {0, 0, 0},
			[28] = {0, 0, 0},
			[29] = {0, 0, 0},
			[30] = {0, 0, 0},
			-- [22][23] 注1
		]]
		},
	},
	
	[2] = { -- 終わり括弧類
		chars = { '）', '〕', '］', '｝', '〉', '》', '」', '』', '】', '｠', '〙', '〗', '»', '〟',
			 '’', '”'},
		width = 0.5,
		align = 'left',
		glue = {
			[1] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[2] = {0, 0, 0},
			[300] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[301] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[302] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[4] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[5] = {0.25, 0, 0.25, ratio = 1, priority = 2},
			[6] = {0, 0, 0},
			[7] = {0, 0, 0},
			[8] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[9] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[10] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[11] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[12] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[13] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[14] = {0, 0, 0},
			[15] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[16] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[0] = {0.5, 0, 0.5, ratio = 0, priority = 1},
		--[[
			[20] = {0, 0, 0},
			[21] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[22] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[23] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[24] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[25] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[26] = {0.5, 0, 0, ratio = 0, priority = 1},
			[27] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[28] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[29] = {0, 0, 0},
			[30] = {0.5, 0, 0.5, ratio = 0, priority = 1},
		]]
		},
--		end_adjust = {-0.5, 0},
	},
	
	-- [3*]はハイフン類．幅が違うので分ける．
	[300] = {
		chars = {'‐'},
		align = 'middle',
		width = 0.25,
		glue = hyphen_glue,-- 上の方で定義
	},
	
	[301] = {
		chars = {'゠', '–'},
		align = 'middle',
		width = 0.5,
		glue = hyphen_glue,
	},

	[302] = {
		chars = {'〜'},
		align = 'middle',
		width = 1,
		glue = hyphen_glue,
	},

	[4] = { -- 区切り約物
		chars = {'！', '？', '‼', '⁇', '⁈', '⁉'},
		align = 'middle',
		width = 1,
		glue = {
			[1] = {0.5, 0.5, 0.5, ratio = 1, priority = 1},
			[2] = {0, 0, 0},
			[300] = {0, 0, 0},
			[301] = {0, 0, 0},
			[302] = {0, 0, 0},
			[4] = {0, 0, 0},
			[5] = {0.25, 0, 0.25, ratio = 1, priority = 2},
			[6] = {0, 0, 0},
			[7] = {0, 0, 0},
			[8] = {0, 0, 0},
			[9] = {0, 0, 0},
			[10] = {0, 0, 0},
			[11] = {0, 0, 0},
			[12] = {0, 0, 0},
			[13] = {0, 0, 0},
			[14] = {0, 0, 0},
			[15] = {0, 0, 0},
			[16] = {0, 0, 0},
			[0] = {0, 0, 0},
		--[[
			[20] = {0, 0, 0},
			[21] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空けpriority = 2段階
			[22] = {0, 0, 0},
			[23] = {0, 0, 0},
			[24] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空けpriority = 2段階
			[25] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空けpriority = 2段階
			[26] = {0, 0, 0},
		]]
			[27] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空けpriority = 2段階
		--[[
			[28] = {0, 0, 0},
			[29] = {0, 0, 0},
			[30] = {0, 0, 0},
		]]
		},
	},
	
	[5] = { -- 中点類
		chars = {'・', '：', 
			'；'
		},
		width = 0.5,
		align = 'middle',
		glue = {
			[1] = {0.25, 0, 0.25, ratio = 0, priority = 2},
			[2] = {0.25, 0, 0.25, ratio = 0, priority = 2},
			[300] = {0.25, 0, 0.25, ratio = 0, priority = 2},
			[301] = {0.25, 0, 0.25, ratio = 0, priority = 2},
			[302] = {0.25, 0, 0.25, ratio = 0, priority = 2},
			[4] = {0.25, 0, 0.25, ratio = 0, priority = 2},
			[5] = {0.5, 0, 0.5, ratio = 0.5, priority = 2},
			[6] = {0.25, 0, 0.25, ratio = 0, priority = 2},
			[7] = {0.25, 0, 0.25, ratio = 0, priority = 2},
			[8] = {0.25, 0, 0.25, ratio = 0, priority = 2},
			[9] = {0.25, 0, 0.25, ratio = 0, priority = 2},
			[10] = {0.25, 0, 0.25, ratio = 0, priority = 2},
			[11] = {0.25, 0, 0.25, ratio = 0, priority = 2},
			[12] = {0.25, 0, 0.25, ratio = 0, priority = 2},
			[13] = {0.25, 0, 0.25, ratio = 0, priority = 2},
			[14] = {0.25, 0, 0.25, ratio = 0, priority = 2},
			[15] = {0.25, 0, 0.25, ratio = 0, priority = 2},
			[16] = {0.25, 0, 0.25, ratio = 0, priority = 2},
			[0] = {0.25, 0, 0.25, ratio = 0, priority = 2},
		--[[
			[20] = {0.25, 0, 0.25, ratio = 0, priority = 2},
			[21] = {0.25, 0, 0.25, ratio = 0, priority = 2},
			[22] = {0.25, 0, 0.25, ratio = 0, priority = 2},
			[23] = {0.25, 0, 0.25, ratio = 0, priority = 2},
			[24] = {0.25, 0, 0.25, ratio = 0, priority = 2},
			[25] = {0.25, 0, 0.25, ratio = 0, priority = 2},
			[26] = {0.25, 0, 0, ratio = 0, priority = 2},
		]]
			[27] = {0.25, 0, 0.25, ratio = 0, priority = 2},
		--[[
			[28] = {0.25, 0, 0.25, ratio = 0, priority = 2},
			[29] = {0.25, 0, 0.25, ratio = 0, priority = 2},
			[30] = {0.25, 0, 0.25, ratio = 0, priority = 2},
		]]
		},
		end_stretch = 0.25, -- 本当は前も同時につぶす？（3.8.3.c）
	},
	
	[6] = { -- 句点類
		chars = {'。', 
			'．'}, -- 縦書きでは使わない
		width = 0.5,
		align = 'left',
		glue = {
			[1] = {0.5, 0, 0, ratio = 0},
			[2] = {0, 0, 0},
			[300] = {0.5, 0, 0, ratio = 0},
			[301] = {0.5, 0, 0, ratio = 0},
			[302] = {0.5, 0, 0, ratio = 0},
			[4] = {0.5, 0, 0, ratio = 0},
			[5] = {0.75, 0, 0.25, ratio = 0.33333333, priority = 2},
			[6] = {0, 0, 0},
			[7] = {0, 0, 0},
			[8] = {0.5, 0, 0, ratio = 0},
			[9] = {0.5, 0, 0, ratio = 0},
			[10] = {0.5, 0, 0, ratio = 0},
			[11] = {0.5, 0, 0, ratio = 0},
			[12] = {0.5, 0, 0, ratio = 0},
			[13] = {0.5, 0, 0, ratio = 0},
			[14] = {0.5, 0, 0, ratio = 0},
			[15] = {0.5, 0, 0, ratio = 0},
			[16] = {0.5, 0, 0, ratio = 0},
			[0] = {0.5, 0, 0, ratio = 0},
		--[[
			[20] = {0, 0, 0},
			[21] = {0.5, 0, 0, ratio = 0},
			[22] = {0.5, 0, 0, ratio = 0},
			[23] = {0.5, 0, 0, ratio = 0},
			[24] = {0.5, 0, 0, ratio = 0},
			[25] = {0.5, 0, 0, ratio = 0},
			[26] = {0.5, 0, 0, ratio = 0},
		]]
			[27] = {0.5, 0, 0, ratio = 0},
		--[[
			[28] = {0.5, 0, 0, ratio = 0},
			[29] = {0.5, 0, 0, ratio = 0},
			[30] = {0.5, 0, 0, ratio = 0},
		]]
		},
		end_stretch = 0.5,
	},
	
	[7] = { -- 読点類
		chars = {'、', 
			'，'}, -- 縦書きでは使わない
		width = 0.5,
		align = 'left',
		glue = {
			[1] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[2] = {0, 0, 0},
			[300] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[301] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[302] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[4] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[5] = {0.75, 0, 0.75, ratio = 0.33333333, priority = 2},
			[6] = {0, 0, 0},
			[7] = {0, 0, 0},
			[8] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[9] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[10] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[11] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[12] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[13] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[14] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[15] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[16] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[0] = {0.5, 0, 0.5, ratio = 0, priority = 1},
		--[[
			[20] = {0, 0, 0},
			[21] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[22] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[23] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[24] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[25] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[26] = {0.5, 0, 0, ratio = 0, priority = 1},
		]]
			[27] = {0.5, 0, 0.5, ratio = 0, priority = 1},
		--[[
			[28] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[29] = {0.5, 0, 0.5, ratio = 0, priority = 1},
			[30] = {0.5, 0, 0.5, ratio = 0, priority = 1},
		]]
		},
		end_stretch = 0.5,
	},
	
	[8] = { -- 分離禁止文字
		chars = {'—', '…', '‥', '〳', '〴', '〵'},
		align = 'middle',
		glue = {
			[1] = {0.5, 0, 0.5, ratio = 1, priority = 1},
			[2] = {0, 0, 0},
			[300] = {0, 0, 0},
			[301] = {0, 0, 0},
			[302] = {0, 0, 0},
			[4] = {0, 0, 0},
			[5] = {0.25, 0, 0.25, ratio = 1, priority = 2},
			[6] = {0, 0, 0},
			[7] = {0, 0, 0},
			[8] = {0, 0, 0},
			[9] = {0, 0.25, 0, priority = -1},
			[10] = {0, 0.25, 0, priority = -1},
			[11] = {0, 0.25, 0, priority = -1},
			[12] = {0, 0.25, 0, priority = -1},
			[13] = {0, 0.25, 0, priority = -1},
			[14] = {0, 0, 0},
			[15] = {0, 0.25, 0, priority = -1},
			[16] = {0, 0.25, 0, priority = -1},
			[0] = {0, 0.25, 0, priority = -1},
		--[[
			[20] = {0, 0, 0},
			[21] = {0, 0.25, 0, priority = -1},
			[22] = {0, 0.25, 0, priority = -1},
			[23] = {0, 0.25, 0, priority = -1},
			[24] = {0, 0, 0},
			[25] = {0, 0, 0},
			[26] = {0, 0, 0},
		]]
			[27] = {0, 0.25, 0, priority = -1},
		--[[
			[28] = {0, 0.25, 0, priority = -1},
			[29] = {0, 0, 0},
			[30] = {0, 0.25, 0, priority = -1},
		]]
		},
	},
	
	[9] = { -- 繰返し記号
		chars = {'ヽ', 'ヾ', 'ゝ', 'ゞ', '々', '〻'},
		align = 'middle',
		glue = {
			[1] = {0.5, 0, 0.5, ratio = 1, priority = 1},
			[2] = {0, 0, 0},
			[300] = {0, 0, 0},
			[301] = {0, 0, 0},
			[302] = {0, 0, 0},
			[4] = {0, 0, 0},
			[5] = {0.25, 0, 0.25, ratio = 1, priority = 2},
			[6] = {0, 0, 0},
			[7] = {0, 0, 0},
			[8] = {0, 0, 0},
			[9] = {0, 0.25, 0, priority = -1},
			[10] = {0, 0.25, 0, priority = -1},
			[11] = {0, 0.25, 0, priority = -1},
			[12] = {0, 0.25, 0, priority = -1},
			[13] = {0, 0.25, 0, priority = -1},
			[14] = {0, 0, 0},
			[15] = {0, 0.25, 0, priority = -1},
			[16] = {0, 0.25, 0, priority = -1},
			[0] = {0, 0.25, 0, priority = -1},
		--[[
			[20] = {0, 0, 0},
			[21] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 2段階
			[22] = {0, 0.25, 0, priority = -1},
			[23] = {0, 0.25, 0, priority = -1},
			[24] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 2段階
			[25] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 2段階
			[26] = {0, 0, 0},
		]]
			[27] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 2段階
		--[[
			[28] = {0, 0.25, 0, priority = -1},
			[29] = {0, 0, 0},
			[30] = {0, 0.25, 0, priority = -1},
		]]
		},
	},

	[10] = { -- 長音記号
		chars = {'ー'},
		align = 'middle',
		glue = {
			[1] = {0.5, 0, 0.5, ratio = 1, priority = 1},
			[2] = {0, 0, 0},
			[300] = {0, 0, 0},
			[301] = {0, 0, 0},
			[302] = {0, 0, 0},
			[4] = {0, 0, 0},
			[5] = {0.25, 0, 0.25, ratio = 1, priority = 2},
			[6] = {0, 0, 0},
			[7] = {0, 0, 0},
			[8] = {0, 0, 0},
			[9] = {0, 0.25, 0, priority = -1},
			[10] = {0, 0.25, 0, priority = -1},
			[11] = {0, 0.25, 0, priority = -1},
			[12] = {0, 0.25, 0, priority = -1},
			[13] = {0, 0.25, 0, priority = -1},
			[14] = {0, 0, 0},
			[15] = {0, 0.25, 0, priority = -1},
			[16] = {0, 0.25, 0, priority = -1},
			[0] = {0, 0.25, 0, priority = -1},
		--[[
			[20] = {0, 0, 0},
			[21] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 2段階
			[22] = {0, 0.25, 0, priority = -1},
			[23] = {0, 0.25, 0, priority = -1},
			[24] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 2段階
			[25] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 2段階
			[26] = {0, 0, 0},
		]]
			[27] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 2段階
		--[[
			[28] = {0, 0.25, 0, priority = -1},
			[29] = {0, 0, 0},
			[30] = {0, 0.25, 0, priority = -1},
		]]
		},
	},
	
	[11] = { -- 小書きの仮名
		chars = {'ぁ', 'ぃ', 'ぅ', 'ぇ', 'ぉ', 'ァ', 'ィ', 'ゥ', 'ェ', 'ォ', 'っ', 'ゃ', 'ゅ', 'ょ', 'ゎ', 'ゕ', 'ゖ', 'ッ', 'ャ', 'ュ', 'ョ', 'ヮ', 'ヵ', 'ヶ', 'ㇰ', 'ㇱ', 'ㇲ', 'ㇳ', 'ㇴ', 'ㇵ', 'ㇶ', 'ㇷ', 'ㇸ', 'ㇹ', 'ㇺ', 'ㇻ', 'ㇼ', 'ㇽ', 'ㇾ', 'ㇿ', 'ㇷ゚'},
		align = 'middle',
		glue = {
			[1] = {0.5, 0, 0.5, ratio = 1, priority = 1},
			[2] = {0, 0, 0},
			[300] = {0, 0, 0},
			[301] = {0, 0, 0},
			[302] = {0, 0, 0},
			[4] = {0, 0, 0},
			[5] = {0.25, 0, 0.25, ratio = 1, priority = 2},
			[6] = {0, 0, 0},
			[7] = {0, 0, 0},
			[8] = {0, 0, 0},
			[9] = {0, 0.25, 0, priority = -1},
			[10] = {0, 0.25, 0, priority = -1},
			[11] = {0, 0.25, 0, priority = -1},
			[12] = {0, 0.25, 0, priority = -1},
			[13] = {0, 0.25, 0, priority = -1},
			[14] = {0, 0, 0},
			[15] = {0, 0.25, 0, priority = -1},
			[16] = {0, 0.25, 0, priority = -1},
			[0] = {0, 0.25, 0, priority = -1},
		--[[
			[20] = {0, 0, 0},
			[21] = {0.25, 0, 0.125, ratio = 0, priority = 0},
			[22] = {0, 0.25, 0, priority = -1},
			[23] = {0, 0.25, 0, priority = -1},
			[24] = {0.25, 0, 0.125, ratio = 0, priority = 0},
			[25] = {0.25, 0, 0.125, ratio = 0, priority = 0},
			[26] = {0, 0, 0},
		]]
			[27] = {0.25, 0, 0.125, ratio = 0, priority = 0},
		--[[
			[28] = {0, 0.25, 0, priority = -1},
			[29] = {0, 0, 0},
			[30] = {0, 0.25, 0, priority = -1},
		]]
		},
	},
	
	[12] = { -- 前置省略記号
		chars = {'￥', '＄', '￡', '＃', '€', '№'},
		align = 'middle',
		glue = {
			[1] = {0.5, 0, 0.5, ratio = 1, priority = 1},
			[2] = {0, 0, 0},
			[300] = {0, 0, 0},
			[301] = {0, 0, 0},
			[302] = {0, 0, 0},
			[4] = {0, 0, 0},
			[5] = {0.25, 0, 0.25, ratio = 1, priority = 2},
			[6] = {0, 0, 0},
			[7] = {0, 0, 0},
			[8] = {0, 0.25, 0, priority = -1},
			[9] = {0, 0.25, 0, priority = -1},
			[10] = {0, 0.25, 0, priority = -1},
			[11] = {0, 0.25, 0, priority = -1},
			[12] = {0, 0.25, 0, priority = -1},
			[13] = {0, 0.25, 0, priority = -1},
			[14] = {0, 0, 0},
			[15] = {0, 0.25, 0, priority = -1},
			[16] = {0, 0.25, 0, priority = -1},
			[0] = {0, 0.25, 0, priority = -1},
		--[[
			[20] = {0, 0, 0},
			[21] = {0, 0.25, 0, priority = -1},
			[22] = {0, 0.25, 0, priority = -1},
			[23] = {0, 0.25, 0, priority = -1},
			[24] = {0, 0, 0},
			[25] = {0, 0.25, 0, priority = -1},
			[26] = {0, 0, 0},
		]]
			[27] = {0, 0.25, 0, priority = -1},
		--[[
			[28] = {0, 0.25, 0, priority = -1},
			[29] = {0, 0, 0},
			[30] = {0, 0.25, 0, priority = -1},
		]]
		},
	},
	
	[13] = { -- 後置省略記号
		chars = {'°', '′', '″', '℃', '￠', '％', '‰', '㏋', 'ℓ', '㌃', '㌍', '㌔', '㌘', '㌢', '㌣', '㌦', '㌧', '㌫', '㌶', '㌻', '㍉', '㍊', '㍍', '㍑', '㍗', '㎎', '㎏', '㎜', '㎝', '㎞', '㎡', '㏄'},
		align = 'middle',
		glue = {
			[1] = {0.5, 0, 0.5, ratio = 1, priority = 1},
			[2] = {0, 0, 0},
			[300] = {0, 0, 0},
			[301] = {0, 0, 0},
			[302] = {0, 0, 0},
			[4] = {0, 0, 0},
			[5] = {0.25, 0, 0.25, ratio = 1, priority = 2},
			[6] = {0, 0, 0},
			[7] = {0, 0, 0},
			[8] = {0, 0.25, 0, priority = -1},
			[9] = {0, 0.25, 0, priority = -1},
			[10] = {0, 0.25, 0, priority = -1},
			[11] = {0, 0.25, 0, priority = -1},
			[12] = {0, 0.25, 0, priority = -1},
			[13] = {0, 0.25, 0, priority = -1},
			[14] = {0, 0, 0},
			[15] = {0, 0.25, 0, priority = -1},
			[16] = {0, 0.25, 0, priority = -1},
			[0] = {0, 0.25, 0, priority = -1},
		--[[
			[20] = {0, 0, 0},
			[21] = {0, 0.25, 0, priority = -1},
			[22] = {0, 0.25, 0, priority = -1},
			[23] = {0, 0.25, 0, priority = -1},
			[24] = {0, 0.25, 0, priority = -1},
			[25] = {0, 0.25, 0, priority = -1},
			[26] = {0, 0, 0},
		]]
			[27] = {0, 0.25, 0, priority = -1},
		--[[
			[28] = {0, 0.25, 0, priority = -1},
			[29] = {0, 0, 0},
			[30] = {0, 0.25, 0, priority = -1},
		]]
		},
	},
	
	[14] = { -- 和字間隔
		chars = {'　'},
		align = 'middle',
		width= 1,height = 1,depth = 0,
		glue = {
			[1] = {0, 0, 0},
			[2] = {0, 0, 0},
			[300] = {0, 0, 0},
			[301] = {0, 0, 0},
			[302] = {0, 0, 0},
			[4] = {0, 0, 0},
			[5] = {0.25, 0, 0.25, ratio = 1, priority = 2},
			[6] = {0, 0, 0},
			[7] = {0, 0, 0},
			[8] = {0, 0, 0},
			[9] = {0, 0, 0},
			[10] = {0, 0, 0},
			[11] = {0, 0, 0},
			[12] = {0, 0, 0},
			[13] = {0, 0, 0},
			[14] = {0, 0, 0},
			[15] = {0, 0, 0},
			[16] = {0, 0, 0},
			[0] = {0, 0, 0},
		--[[
			[20] = {0, 0, 0},
			[21] = {0, 0, 0},
			[22] = {0, 0, 0},
			[23] = {0, 0, 0},
			[24] = {0, 0, 0},
			[25] = {0, 0, 0},
			[26] = {0, 0, 0},
		]]
			[27] = {0, 0, 0},
		--[[
			[28] = {0, 0, 0},
			[29] = {0, 0, 0},
			[30] = {0, 0, 0},
		]]
		},
	},
	
	[15] = { -- 平仮名
		chars = {'あ', 'い', 'う', 'え', 'お', 'か', 'が', 'き', 'ぎ', 'く', 'ぐ', 'け', 'げ', 'こ', 'ご', 'さ', 'ざ', 'し', 'じ', 'す', 'ず', 'せ', 'ぜ', 'そ', 'ぞ', 'た', 'だ', 'ち', 'ぢ', 'つ', 'づ', 'て', 'で', 'と', 'ど', 'な', 'に', 'ぬ', 'ね', 'の', 'は', 'ば', 'ぱ', 'ひ', 'び', 'ぴ', 'ふ', 'ぶ', 'ぷ', 'へ', 'べ', 'ぺ', 'ほ', 'ぼ', 'ぽ', 'ま', 'み', 'む', 'め', 'も', 'や', 'ゆ', 'よ', 'ら', 'り', 'る', 'れ', 'ろ', 'わ', 'ゐ', 'ゑ', 'を', 'ん', 'ゔ', 'か゚', 'き゚', 'く゚', 'け゚', 'こ゚'},
		align = 'middle',
		glue = {
			[1] = {0.5, 0, 0.5, ratio = 1, priority = 1},
			[2] = {0, 0, 0},
			[300] = {0, 0, 0},
			[301] = {0, 0, 0},
			[302] = {0, 0, 0},
			[4] = {0, 0, 0},
			[5] = {0.25, 0, 0.25, ratio = 1, priority = 2},
			[6] = {0, 0, 0},
			[7] = {0, 0, 0},
			[8] = {0, 0.25, 0, priority = -1},
			[9] = {0, 0.25, 0, priority = -1},
			[10] = {0, 0.25, 0, priority = -1},
			[11] = {0, 0.25, 0, priority = -1},
			[12] = {0, 0.25, 0, priority = -1},
			[13] = {0, 0.25, 0, priority = -1},
			[14] = {0, 0, 0},
			[15] = {0, 0.25, 0, priority = -1},
			[16] = {0, 0.25, 0, priority = -1},
			[0] = {0, 0.25, 0, priority = -1},
		--[[
			[20] = {0, 0, 0},
			[21] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 2段階
			[22] = {0, 0.25, 0, priority = -1},
			[23] = {0, 0.25, 0, priority = -1},
			[24] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 2段階
			[25] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 2段階
			[26] = {0, 0, 0},
		]]
			[27] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 2段階
		--[[
			[28] = {0, 0.25, 0, priority = -1},
			[29] = {0, 0, 0},
			[30] = {0, 0.25, 0, priority = -1},
		]]
		},
	},
	
	[16] = { -- 片仮名
		chars = {'ア', 'イ', 'ウ', 'エ', 'オ', 'カ', 'ガ', 'キ', 'ギ', 'ク', 'グ', 'ケ', 'ゲ', 'コ', 'ゴ', 'サ', 'ザ', 'シ', 'ジ', 'ス', 'ズ', 'セ', 'ゼ', 'ソ', 'ゾ', 'タ', 'ダ', 'チ', 'ヂ', 'ツ', 'ヅ', 'テ', 'デ', 'ト', 'ド', 'ナ', 'ニ', 'ヌ', 'ネ', 'ノ', 'ハ', 'バ', 'パ', 'ヒ', 'ビ', 'ピ', 'フ', 'ブ', 'プ', 'ヘ', 'ベ', 'ペ', 'ホ', 'ボ', 'ポ', 'マ', 'ミ', 'ム', 'メ', 'モ', 'ヤ', 'ユ', 'ヨ', 'ラ', 'リ', 'ル', 'レ', 'ロ', 'ワ', 'ヰ', 'ヱ', 'ヲ', 'ン', 'ヴ', 'ヷ', 'ヸ', 'ヹ', 'ヺ', 'カ゚', 'キ゚', 'ク゚', 'ケ゚', 'コ゚', 'セ゚', 'ツ゚', 'ト゚'},
		align = 'middle',
		glue = {
			[1] = {0.5, 0, 0.5, ratio = 1, priority = 1},
			[2] = {0, 0, 0},
			[300] = {0, 0, 0},
			[301] = {0, 0, 0},
			[302] = {0, 0, 0},
			[4] = {0, 0, 0},
			[5] = {0.25, 0, 0.25, ratio = 1, priority = 2},
			[6] = {0, 0, 0},
			[7] = {0, 0, 0},
			[8] = {0, 0.25, 0, priority = -1},
			[9] = {0, 0.25, 0, priority = -1},
			[10] = {0, 0.25, 0, priority = -1},
			[11] = {0, 0.25, 0, priority = -1},
			[12] = {0, 0.25, 0, priority = -1},
			[13] = {0, 0.25, 0, priority = -1},
			[14] = {0, 0, 0},
			[15] = {0, 0.25, 0, priority = -1},
			[16] = {0, 0.25, 0, priority = -1},
			[0] = {0, 0.25, 0, priority = -1},
		--[[
			[20] = {0, 0, 0},
			[21] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 2段階
			[22] = {0, 0.25, 0, priority = -1},
			[23] = {0, 0.25, 0, priority = -1},
			[24] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 2段階
			[25] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 2段階
			[26] = {0, 0, 0},
		]]
			[27] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 2段階
		--[[
			[28] = {0, 0.25, 0, priority = -1},
			[29] = {0, 0, 0},
			[30] = {0, 0.25, 0, priority = -1},
		]]
		},
	},
	
	--[[
	[17] = { -- 等号類
		chars = {'＝', '≠', '≒', '≃', '≅', '≈', '≡', '≢', '＜', '＞', '≦', '≧', '≪', '≫', '≶', '≷', '⋚', '⋛', '∧', '∨', '⌅', '⌆', '⊂', '⊃', '⊄', '⊅', '⊆', '⊇', '⊊', '⊋', '∈', '∋', '∉', '∪', '∩', '∥', '∦', '⇒', '⇔', '↔', '∽', '∝', '⊥', '⊕', '⊗'},
		align = 'middle',
		width = 1,
	},
	
	[18] = { -- 演算記号
		chars = {'＋', '－', '×', '÷', '±', '∓'},
		align = 'middle',
		width = 1,
	},
	]]
	
	-- [19] -- 漢字等：「その他の和文」として[0]で扱う
	[0] = { -- = [19]
		left = 0,
		align = 'middle',
		width = 1,
		glue = {
			[1] = {0.5, 0, 0.5, ratio = 1, priority = 1},
			[2] = {0, 0, 0},
			[300] = {0, 0, 0},
			[301] = {0, 0, 0},
			[302] = {0, 0, 0},
			[4] = {0, 0, 0},
			[5] = {0.25, 0, 0.25, ratio = 1, priority = 2},
			[6] = {0, 0, 0},
			[7] = {0, 0, 0},
			[8] = {0, 0.25, 0, priority = -1},
			[9] = {0, 0.25, 0, priority = -1},
			[10] = {0, 0.25, 0, priority = -1},
			[11] = {0, 0.25, 0, priority = -1},
			[12] = {0, 0.25, 0, priority = -1},
			[13] = {0, 0.25, 0, priority = -1},
			[14] = {0, 0, 0},
			[15] = {0, 0.25, 0, priority = -1},
			[16] = {0, 0.25, 0, priority = -1},
			[0] = {0, 0.25, 0, priority = -1},
		--[[
			[20] = {0, 0, 0},
			[21] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 2段階
			[22] = {0, 0.25, 0, priority = -1},
			[23] = {0, 0.25, 0, priority = -1},
			[24] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 2段階
			[25] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 2段階
			[26] = {0, 0, 0},
		]]
			[27] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 2段階
		--[[
			[28] = {0, 0.25, 0, priority = -1},
			[29] = {0, 0, 0},
			[30] = {0, 0.25, 0, priority = -1},
		]]
		},
	},

	
	--[[
	[20] = { -- 合印中の文字
		glue = {
			[1] = {0,5, 0, 0.5, ratio = 1, priority = 1},
			[2] = {0, 0, 0},
			[300] = {0, 0, 0},
			[301] = {0, 0, 0},
			[302] = {0, 0, 0},
			[4] = {0, 0, 0},
			[5] = {0.25, 0, 0.25, ratio = 1, priority = 2},
			[6] = {0, 0, 0},
			[7] = {0, 0, 0},
			[8] = {0, 0.25, 0, priority = -1},
			[9] = {0, 0.25, 0, priority = -1},
			[10] = {0, 0.25, 0, priority = -1},
			[11] = {0, 0.25, 0, priority = -1},
			[12] = {0, 0.25, 0, priority = -1},
			[13] = {0, 0.25, 0, priority = -1},
			[14] = {0, 0, 0},
			[15] = {0, 0.25, 0, priority = -1},
			[16] = {0, 0.25, 0, priority = -1},
			[0] = {0, 0.25, 0, priority = -1},
			[20] = {0, 0, 0},
			[21] = {0, 0.25, 0, priority = -1},
			[22] = {0, 0.25, 0, priority = -1},
			[23] = {0, 0.25, 0, priority = -1},
			[24] = {0, 0.25, 0, priority = -1},
			[25] = {0, 0.25, 0, priority = -1},
			[26] = {0, 0, 0},
			[27] = {0, 0.25, 0, priority = -1},
			[28] = {0, 0.25, 0, priority = -1},
			[29] = {0, 0, 0},
			[30] = {0, 0.25, 0, priority = -1},
		},
	},
	
	[21] = {-- 親文字群中の文字（添え字付き）
		glue = {
			[1] = {0,5, 0, 0.5, ratio = 1, priority = 1},
			[2] = {0, 0, 0},
			[300] = {0, 0, 0},
			[301] = {0, 0, 0},
			[302] = {0, 0, 0},
			[4] = {0, 0, 0},
			[5] = {0.25, 0, 0.25, ratio = 1, priority = 2},
			[6] = {0, 0, 0},
			[7] = {0, 0, 0},
			[8] = {0, 0.25, 0, priority = -1},
			[9] = {0.25, 0.25, 0.125, ratio = 1, priority = 0}, -- 空け priority = 二段階
			[10] = {0.25, 0.25, 0.125, ratio = 1, priority = 0}, -- 空け priority = 二段階
			[11] = {0.25, 0.25, 0.125, ratio = 1, priority = 0}, -- 空け priority = 二段階
			[12] = {0, 0.25, 0, priority = -1},
			[13] = {0, 0.25, 0, priority = -1},
			[14] = {0, 0, 0},
			[15] = {0.25, 0.25, 0.125, ratio = 1, priority = 0}, -- 空け priority = 二段階
			[16] = {0.25, 0.25, 0.125, ratio = 1, priority = 0}, -- 空け priority = 二段階
			[0] = {0.25, 0.25, 0.125, ratio = 1, priority = 0}, -- 空け priority = 二段階
			[20] = {0, 0, 0},
			[21] = {0, 0, 0},-- 注9，空け注5
			[22] = {0.25, 0.25, 0.125, ratio = 1, priority = 0}, -- 空け priority = 二段階
			[23] = {0.25, 0.25, 0.125, ratio = 1, priority = 0}, -- 空け priority = 二段階
			[24] = {0, 0.25, 0, priority = -1},
			[25] = {0, 0.25, 0, priority = -1},
			[26] = {0, 0, 0},
			[27] = {0, 0.25, 0, priority = -1},
			[28] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 三段階，表6と表3が整合的でない
			[29] = {0, 0, 0},
			[30] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
		},
	},
	
	[22] = { -- 親文字群中の文字（熟語ルビ以外のルビ付き）
		glue = {
			[1] = {0,5, 0, 0.5, ratio = 1, priority = 1},
			[2] = {0, 0, 0},
			[300] = {0, 0, 0},
			[301] = {0, 0, 0},
			[302] = {0, 0, 0},
			[4] = {0, 0, 0},
			[5] = {0.25, 0, 0.25, ratio = 1, priority = 2},
			[6] = {0, 0, 0},
			[7] = {0, 0, 0},
			[8] = {0, 0.25, 0, priority = -1},
			[9] = {0, 0.25, 0, priority = -1},
			[10] = {0, 0.25, 0, priority = -1},
			[11] = {0, 0.25, 0, priority = -1},
			[12] = {0, 0.25, 0, priority = -1},
			[13] = {0, 0.25, 0, priority = -1},
			[14] = {0, 0, 0},
			[15] = {0, 0.25, 0, priority = -1},
			[16] = {0, 0.25, 0, priority = -1},
			[0] = {0, 0.25, 0, priority = -1},
			[20] = {0, 0, 0},
			[21] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 二段階
			[22] = {0, 0.25, 0, priority = -1}, -- 空け注10
			[23] = {0, 0.25, 0, priority = -1},
			[24] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 二段階
			[25] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 二段階
			[26] = {0, 0, 0},
			[27] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 二段階
			[28] = {0, 0.25, 0, priority = -1},
			[29] = {0, 0, 0},
			[30] = {0, 0.25, 0, priority = -1},
		},
	},
	
	[23] = { -- 親文字群中の文字（熟語ルビ付き）
		glue = {
			[1] = {0,5, 0, 0.5, ratio = 1, priority = 1},
			[2] = {0, 0, 0},
			[300] = {0, 0, 0},
			[301] = {0, 0, 0},
			[302] = {0, 0, 0},
			[4] = {0, 0, 0},
			[5] = {0.25, 0, 0.25, ratio = 1, priority = 2},
			[6] = {0, 0, 0},
			[7] = {0, 0, 0},
			[8] = {0, 0.25, 0, priority = -1},
			[9] = {0, 0.25, 0, priority = -1},
			[10] = {0, 0.25, 0, priority = -1},
			[11] = {0, 0.25, 0, priority = -1},
			[12] = {0, 0.25, 0, priority = -1},
			[13] = {0, 0.25, 0, priority = -1},
			[14] = {0, 0, 0},
			[15] = {0, 0.25, 0, priority = -1},
			[16] = {0, 0.25, 0, priority = -1},
			[0] = {0, 0.25, 0, priority = -1},
			[20] = {0, 0, 0},
			[21] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 二段階
			[22] = {0, 0.25, 0, priority = -1},
			[23] = {0, 0.25, 0, priority = -1},-- 空け注7
			[24] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 二段階
			[25] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 二段階
			[26] = {0, 0, 0},
			[27] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 二段階
			[28] = {0, 0.25, 0, priority = -1},
			[29] = {0, 0, 0},
			[30] = {0, 0.25, 0, priority = -1},
		},
	},
	
	[24] = { -- 連数字中の文字
		chars = {'	', ',', '.', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'},
		glue = {
			[1] = {0,5, 0, 0.5, ratio = 1, priority = 1},
			[2] = {0, 0, 0},
			[300] = {0, 0, 0},
			[301] = {0, 0, 0},
			[302] = {0, 0, 0},
			[4] = {0, 0, 0},
			[5] = {0.25, 0, 0.25, ratio = 1, priority = 2},
			[6] = {0, 0, 0},
			[7] = {0, 0, 0},
			[8] = {0, 0.25, 0, priority = -1},
			[9] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
			[10] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
			[11] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
			[12] = {0, 0.25, 0, priority = -1},
			[13] = {0, 0, 0},-- 空け注8
			[14] = {0, 0, 0},
			[15] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
			[16] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
			[0] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
			[20] = {0, 0, 0},
			[21] = {0, 0.25, 0, priority = -1},
			[22] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
			[23] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
			[24] = {0, 0, 0},
			[25] = {0.25, 0, 0, ratio = 0},
			[26] = {0, 0, 0},
			[27] = {0, 0, 0},-- 空け注9
			[28] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 二段階
			[29] = {0, 0, 0},
			[30] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
		}
	},
	
	[25] = { -- 単位記号中の文字
		chars = {'	', '(', ')', '/', '1', '2', '3', '4', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'Ω', 'μ', '℧', 'Å', '−', '・'},
		glue = {
			[1] = {0,5, 0, 0.5, ratio = 1, priority = 1},
			[2] = {0, 0, 0},
			[300] = {0, 0, 0},
			[301] = {0, 0, 0},
			[302] = {0, 0, 0},
			[4] = {0, 0, 0},
			[5] = {0.25, 0, 0.25, ratio = 1, priority = 2},-- 注12
			[6] = {0, 0, 0},
			[7] = {0, 0, 0},
			[8] = {0, 0.25, 0, priority = -1},
			[9] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
			[10] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
			[11] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
			[12] = {0, 0.25, 0, priority = -1},
			[13] = {0, 0.25, 0, priority = -1},
			[14] = {0, 0, 0},
			[15] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
			[16] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
			[0] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
			[20] = {0, 0, 0},
			[21] = {0, 0.25, 0, priority = -1},
			[22] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
			[23] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
			[24] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},
			[25] = {0, 0, 0},
			[26] = {0, 0, 0},
			[27] = {0, 0, 0},
			[28] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 二段階
			[29] = {0, 0, 0},
			[30] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
		}
	},
	
	[26] = { -- 欧文間隔
		chars = {' '},
		glue = { -- 表3の方には記述がないのは何故？
			[1] = {0.5, 0, 0.5, ratio = 1},
			[2] = {0, 0, 0},
			[300] = {0, 0, 0},
			[301] = {0, 0, 0},
			[302] = {0, 0, 0},
			[4] = {0, 0, 0},
			[5] = {0.25, 0, 0.25, ratio = 1},
			[6] = {0, 0, 0},
			[7] = {0, 0, 0},
			[8] = {0, 0, 0},
			[9] = {0, 0, 0},
			[10] = {0, 0, 0},
			[11] = {0, 0, 0},
			[12] = {0, 0, 0},
			[13] = {0, 0, 0},
			[14] = {0, 0, 0},
			[15] = {0, 0, 0},
			[16] = {0, 0, 0},
			[0] = {0, 0, 0},
			[21] = {0, 0, 0},
			[22] = {0, 0, 0},
			[23] = {0, 0, 0},
			[24] = {0, 0, 0},
			[25] = {0, 0, 0},
			[26] = {0, 0, 0},
			[27] = {0, 0, 0},
			[28] = {0, 0, 0},
			[29] = {0, 0, 0},-- 注13, （空け）注4
			[30] = {0, 0, 0},
		}
	},
	]]
	
	[27] = {-- 欧文
		chars = {'jcharbdd'},
		glue = {
			[1] = {0.5, 0, 0.5, ratio = 1, priority = 1},
			[2] = {0, 0, 0},
			[3] = {0, 0, 0},
			[4] = {0, 0, 0},
			[5] = {0.25, 0, 0.25, ratio = 1, priority = 2},
			[6] = {0, 0, 0},
			[7] = {0, 0, 0},
			[8] = {0, 0.25, 0, priority = -1},
			[9] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
			[10] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
			[11] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
			[12] = {0, 0.25, 0, priority = -1},
			[13] = {0, 0.25, 0, priority = -1},-- 空け注10
			[14] = {0, 0, 0},
			[15] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
			[16] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
			[0] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
			[20] = {0, 0, 0},
			[21] = {0, 0.25, 0, priority = -1},
			[22] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
			[23] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
			[24] = {0, 0, 0},
			[25] = {0.25, 0, 0.125, ratio = 0, priority = 2},
			[26] = {0, 0, 0},
			[27] = {0, 0, 0},
			[28] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 二段階
			[29] = {0, 0, 0},
			[30] = {0.25, 0.25, 0.125, ratio = 0, priority = 0},-- 空け priority = 二段階
		}
	},
	
	--[[
	[28] = { -- 割注始め括弧類
		chars = {'（', '〔', '［'},
		glue = {
			[1] = {0, 0, 0},
			[2] = {0, 0, 0},
			[3] = {0, 0, 0},
			[4] = {0, 0, 0},
			[5] = {0, 0, 0},
			[6] = {0, 0, 0},
			[7] = {0, 0, 0},
			[8] = {0, 0, 0},
			[9] = {0, 0, 0},-- 注14
			[10] = {0, 0, 0},-- 注15
			[11] = {0, 0, 0},-- 注16
			[12] = {0, 0, 0},
			[13] = {0, 0, 0},
			[14] = {0, 0, 0},
			[15] = {0, 0, 0},
			[16] = {0, 0, 0},
			[0] = {0, 0, 0},
			[20] = {0, 0, 0},
			[21] = {0, 0, 0},
			[22] = {0, 0, 0},
			[23] = {0, 0, 0},
			[24] = {0, 0, 0},
			[25] = {0, 0, 0},
			[26] = {0, 0, 0}, -- 注13, （空け）注4
			[27] = {0, 0, 0},
			[28] = {0, 0, 0},
			[29] = {0, 0, 0},
			[30] = {0, 0, 0},
		}
	},
	
	[29] = { -- 割注終わり括弧類
		chars = {'）', '〕', '］'},
		glue = {
			[1] = {0.5, 0, 0.5, ratio = 1, priority = 1},
			[2] = {0, 0, 0},
			[3] = {0, 0, 0},
			[4] = {0, 0, 0},
			[5] = {0.25, 0, 0.25, ratio = 1, priority = 2},
			[6] = {0, 0, 0},
			[7] = {0, 0, 0},
			[8] = {0, 0.25, 0, priority = -1},
			[9] = {0, 0.25, 0, priority = -1},
			[10] = {0, 0.25, 0, priority = -1},
			[11] = {0, 0.25, 0, priority = -1},
			[12] = {0, 0.25, 0, priority = -1},
			[13] = {0, 0.25, 0, priority = -1},
			[14] = {0, 0, 0},
			[15] = {0, 0.25, 0, priority = -1},
			[16] = {0, 0.25, 0, priority = -1},
			[0] = {0, 0.25, 0, priority = -1},
			[20] = {0, 0, 0},
			[21] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
			[22] = {0, 0.25, 0, priority = -1},
			[23] = {0, 0.25, 0, priority = -1},
			[24] = {0.25, 0.25, 0.125, ratio = 1}, priority = 0,-- 空け priority = 二段階
			[25] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
			[26] = {0, 0, 0},
			[27] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
			[28] = {0, 0.25, 0, priority = -1},
			[29] = {0, 0, 0},
			[30] = {0, 0.25, 0, priority = -1},
		}
	},
	
	[30] = { -- 縦中横中の文字
		glue = {
			[1] = {0.5, 0, 0.5, ratio = 1, priority = 1},
			[2] = {0, 0, 0},
			[3] = {0, 0, 0},
			[4] = {0, 0, 0},
			[5] = {0.25, 0, 0.25, ratio = 1, priority = 2},
			[6] = {0, 0, 0},
			[7] = {0, 0, 0},
			[8] = {0, 0.25, 0, priority = -1},
			[9] = {0, 0.25, 0, priority = -1},
			[10] = {0, 0.25, 0, priority = -1},
			[11] = {0, 0.25, 0, priority = -1},
			[12] = {0, 0.25, 0, priority = -1},
			[13] = {0, 0.25, 0, priority = -1},
			[14] = {0, 0, 0},
			[15] = {0, 0.25, 0, priority = -1},
			[16] = {0, 0.25, 0, priority = -1},
			[0] = {0, 0.25, 0, priority = -1},
			[20] = {0, 0, 0},
			[21] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
			[22] = {0, 0.25, 0, priority = -1},
			[23] = {0, 0.25, 0, priority = -1},
			[24] = {0.25, 0.25, 0.125, ratio = 1}, priority = 0,-- 空け priority = 二段階
			[25] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
			[26] = {0, 0, 0},
			[27] = {0.25, 0.25, 0.125, ratio = 1, priority = 0},-- 空け priority = 二段階
			[28] = {0, 0.25, 0, priority = -1},
			[29] = {0, 0, 0},
			[30] = {0, 0.25, 0, priority = -1},
		}
	},
	]]

	[90] = { -- 行頭
		chars = {'parbdd','boxbdd'},
		glue = {
			[1] = {0, 0, 0}, -- 行頭括弧はベタ組
		},
	},
}

if jlreq ~= nil then
	if type(jlreq.open_bracket_pos) == "string" then
		local r = jlreq.open_bracket_pos:find("_")
		local danraku = jlreq.open_bracket_pos:sub(1,r - 1)
		local orikaeshi = jlreq.open_bracket_pos:sub(r + 1)

		-- 折り返し行頭を二分下げる……つもり
		if orikaeshi == "nibu" then
			jfm[1].width = 1
			for k,v in pairs(jfm) do
				if tonumber(k) ~= nil then
					if v.glue[1] ~= nil then v.glue[1][1] = v.glue[1][1] - 0.5
					else v.glue[1] = {-0.5,0,0} end
				end
			end
		end

		-- 段落行頭の下げ
		if danraku == "zenkakunibu" then
			jfm[90].glue[1][1] = jfm[90].glue[1][1] + 0.5
		elseif danraku == "nibu" then
			jfm[90].glue[1][1] = jfm[90].glue[1][1] - 0.5
		end
	end

	-- ぶら下げ組を有効に
	if jlreq.burasage == true then
		jfm[6].end_shrink = 0.5
		jfm[7].end_shrink = 0.5
	end
end

luatexja.jfont.define_jfm(jfm)
