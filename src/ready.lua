
function mod.InsertBeforeInTable(tableArg, insertBefore, value)
    local index = mod.FindTableIndex(tableArg, insertBefore)
    if index then
        return table.insert(tableArg, index, value)
    else
        return table.insert(tableArg, value)
    end
end

function mod.FindTableIndex(tableArg, value)
    for k, v in ipairs(tableArg) do
        if v == value then
            return k
        end
    end
    return nil
end



local newLayoutSets = {"LayoutSet7","LayoutSet8","LayoutSet9","LayoutSet10","LayoutSet11","LayoutSet12","LayoutSet13","LayoutSet14","LayoutSet15","LayoutSet16",}

MetaUpgradeSaveLayoutData.MaximumMetaUpgradeLayouts = 16
for _, name in ipairs(newLayoutSets) do
mod.InsertBeforeInTable(ScreenData.MetaUpgradeCardLayout.ComponentData.Order, "LayoutSetSelectionHighlight", name) 
end

--table.insert(ScreenData.MetaUpgradeCardLayout.ComponentData.Order,"LayoutSet7" )
--table.insert(ScreenData.MetaUpgradeCardLayout.ComponentData.Order,"LayoutSet8" )

local layoutSetsToChange = {"LayoutSet1",
		"LayoutSet2",
		"LayoutSet3",
		"LayoutSet4",
		"LayoutSet5",
		"LayoutSet6",}
for _,name in ipairs(layoutSetsToChange) do
ScreenData.MetaUpgradeCardLayout.ComponentData[name].Y = ScreenData.MetaUpgradeCardLayout.ComponentData[name].Y - ScreenData.MetaUpgradeCardLayout.LayoutSetSpacingY
end
ScreenData.MetaUpgradeCardLayout.ComponentData.LayoutSet7 = MergeTables( ScreenData.MetaUpgradeCardLayout.LayoutSetTemplate,
	{
		MetaUpgradeLayoutNum = 7,
		X = ScreenData.MetaUpgradeCardLayout.ComponentData["LayoutSet6"].X + ScreenData.MetaUpgradeCardLayout.LayoutSetSpacingX,
		Y = ScreenData.MetaUpgradeCardLayout.ComponentData["LayoutSet6"].Y + ScreenData.MetaUpgradeCardLayout.LayoutSetSpacingY,
	})
ScreenData.MetaUpgradeCardLayout.ComponentData.LayoutSet8 = MergeTables( ScreenData.MetaUpgradeCardLayout.LayoutSetTemplate,
	{
		MetaUpgradeLayoutNum = 8,
		X = ScreenData.MetaUpgradeCardLayout.ComponentData["LayoutSet7"].X + ScreenData.MetaUpgradeCardLayout.LayoutSetSpacingX,
		Y = ScreenData.MetaUpgradeCardLayout.ComponentData["LayoutSet7"].Y + ScreenData.MetaUpgradeCardLayout.LayoutSetSpacingY,
	})


	ScreenData.MetaUpgradeCardLayout.ComponentData.LayoutSet9 = MergeTables( ScreenData.MetaUpgradeCardLayout.LayoutSetTemplate,
	{
		MetaUpgradeLayoutNum = 9,
		X = ScreenData.MetaUpgradeCardLayout.ComponentData["LayoutSet1"].X + 95,
		Y = ScreenData.MetaUpgradeCardLayout.ComponentData["LayoutSet1"].Y,
	})

    ScreenData.MetaUpgradeCardLayout.ComponentData.LayoutSet10 = MergeTables( ScreenData.MetaUpgradeCardLayout.LayoutSetTemplate,
	{
		MetaUpgradeLayoutNum = 10,
		X = ScreenData.MetaUpgradeCardLayout.ComponentData["LayoutSet2"].X + 95,
		Y = ScreenData.MetaUpgradeCardLayout.ComponentData["LayoutSet2"].Y,
	})

    ScreenData.MetaUpgradeCardLayout.ComponentData.LayoutSet11 = MergeTables( ScreenData.MetaUpgradeCardLayout.LayoutSetTemplate,
	{
		MetaUpgradeLayoutNum = 11,
		X = ScreenData.MetaUpgradeCardLayout.ComponentData["LayoutSet3"].X + 95,
		Y = ScreenData.MetaUpgradeCardLayout.ComponentData["LayoutSet3"].Y,
	})

    ScreenData.MetaUpgradeCardLayout.ComponentData.LayoutSet12 = MergeTables( ScreenData.MetaUpgradeCardLayout.LayoutSetTemplate,
	{
		MetaUpgradeLayoutNum = 12,
		X = ScreenData.MetaUpgradeCardLayout.ComponentData["LayoutSet4"].X + 95,
		Y = ScreenData.MetaUpgradeCardLayout.ComponentData["LayoutSet4"].Y,
	})

    ScreenData.MetaUpgradeCardLayout.ComponentData.LayoutSet13 = MergeTables( ScreenData.MetaUpgradeCardLayout.LayoutSetTemplate,
	{
		MetaUpgradeLayoutNum = 13,
		X = ScreenData.MetaUpgradeCardLayout.ComponentData["LayoutSet5"].X + 95,
		Y = ScreenData.MetaUpgradeCardLayout.ComponentData["LayoutSet5"].Y,
	})

    ScreenData.MetaUpgradeCardLayout.ComponentData.LayoutSet14 = MergeTables( ScreenData.MetaUpgradeCardLayout.LayoutSetTemplate,
	{
		MetaUpgradeLayoutNum = 14,
		X = ScreenData.MetaUpgradeCardLayout.ComponentData["LayoutSet6"].X + 95,
		Y = ScreenData.MetaUpgradeCardLayout.ComponentData["LayoutSet6"].Y,
	})

    ScreenData.MetaUpgradeCardLayout.ComponentData.LayoutSet15 = MergeTables( ScreenData.MetaUpgradeCardLayout.LayoutSetTemplate,
	{
		MetaUpgradeLayoutNum = 15,
		X = ScreenData.MetaUpgradeCardLayout.ComponentData["LayoutSet7"].X + 95,
		Y = ScreenData.MetaUpgradeCardLayout.ComponentData["LayoutSet7"].Y,
	})

    ScreenData.MetaUpgradeCardLayout.ComponentData.LayoutSet16 = MergeTables( ScreenData.MetaUpgradeCardLayout.LayoutSetTemplate,
	{
		MetaUpgradeLayoutNum = 16,
		X = ScreenData.MetaUpgradeCardLayout.ComponentData["LayoutSet8"].X + 95,
		Y = ScreenData.MetaUpgradeCardLayout.ComponentData["LayoutSet8"].Y,
	})