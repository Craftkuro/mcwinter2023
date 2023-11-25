import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import scripts.common.makeExtremeRecipe9 as makeExtremeRecipe9;


import mods.gregtech.recipe.RecipeMap;

//AE2 Creative Storage Cell
recipes.remove(<appliedenergistics2:creative_storage_cell>);
makeExtremeRecipe9(<appliedenergistics2:creative_storage_cell>,
    ["    A    ",
     "   ABA   ",
     "  ABCBA  ",
     " ABCDCBA ",
     "ABCDEDCBA",
     " ABCDCBA ",
     "  ABCBA  ",
     "   ABA   ",
     "    A    "],
    { A : <appliedenergistics2:storage_cell_1k>,
      B : <appliedenergistics2:storage_cell_4k>,
      C : <appliedenergistics2:storage_cell_16k>,
      D : <appliedenergistics2:storage_cell_64k>,
      E : <gregtech:machine:1668> });
