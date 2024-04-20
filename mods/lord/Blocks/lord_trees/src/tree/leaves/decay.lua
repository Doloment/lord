
-- Регистрация опадающей листвы и др.

-- Alders / Ольха
default.register_leafdecay({
	trunks = {"lord_trees:aldertree"},
	leaves = {"lord_trees:alder_leaf"},
	radius = 3,
})

default.register_leafdecay({
	trunks = {"default:tree"},
	leaves = {
		"lord_trees:apple_leaf", "default:leaves", "default:apple", -- Apple Tree / Яблоня
		"lord_trees:beech_leaf", -- Beeches / Бук.   Оставлено опадание вокруг ствола яблони, т.к. есть уже сгенерированные.
		"lord_trees:culumalda_leaf", "lord_trees:yellow_flowers", -- Culumalda / Кулумальда     Оставлено, т.к.  ...
		"lord_trees:elm_leaf", -- Elms / Вяз.   Оставлено опадание вокруг ствола яблони, т.к. есть уже сгенерированные.
		"lord_trees:plum_leaf", "lord_trees:plum", -- Plum Tree / Слива
		"lord_trees:rowan_leaf", "lord_trees:rowan_berry", -- Rowans / Рябина
		"lord_trees:white_leaf", -- White Tree / Белое дерево
		"lord_trees:yavannamire_leaf", "lord_trees:yavannamire_fruit", -- Yavannamire / Йаванамирэ
	},
	radius = 3,
})

-- Lebethron / Лебетрон
default.register_leafdecay({
	trunks = {"lord_trees:lebethrontree"},
	leaves = {"lord_trees:lebethron_leaf"},
	radius = 2,
})

-- Birches / Береза
default.register_leafdecay({
	trunks = {"lord_trees:birchtree"},
	leaves = {"lord_trees:birch_leaf"},
	radius = 3,
})

-- Cherry / Сакура
default.register_leafdecay({
	trunks = {"lord_trees:cherrytree"},
	leaves = {"lord_trees:cherry_leaf"},
	radius = 2,
})

-- Culumalda / Кулумальда
default.register_leafdecay({
	trunks = {"lord_trees:culumaldatree"},
	leaves = {"lord_trees:culumalda_leaf", "lord_trees:yellow_flowers"},
	radius = 2,
})

-- Firs / Ель
default.register_leafdecay({
	trunks = {"lord_trees:firtree"},
	leaves = {"lord_trees:fir_leaf"},
	radius = 4,
})

-- (Young) Mallorn / (Молодой) маллорн
default.register_leafdecay({
	trunks = {"lord_trees:mallorntree", "lord_trees:mallorn_young_tree"},
	leaves = {"lord_trees:mallorn_leaf"},
	radius = 2,
})

-- Pines / Сосна
default.register_leafdecay({
	trunks = {"lord_trees:pinetree"},
	leaves = {"lord_trees:pine_leaf"},
	radius = 2,
})

-- Mirk Large/Small / Большое/Малое дерево Лихолесья
default.register_leafdecay({
	trunks = {"default:jungletree"},
	leaves = {"lord_trees:mirk_leaf"},
	radius = 2,
})

-- Elms / Вяз
default.register_leafdecay({
	trunks = {"lord_trees:elmtree"},
	leaves = {"lord_trees:elm_leaf"},
	radius = 2,
})

-- Beeches / Бук
default.register_leafdecay({
	trunks = {"lord_trees:beechtree"},
	leaves = {"lord_trees:beech_leaf"},
	radius = 4,
})
