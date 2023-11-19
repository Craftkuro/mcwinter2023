import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.contenttweaker.Fluid;

import mods.gregtech.recipe.RecipeMap;

/*
[[<>, <>, <>, <>, <>, <>],
[<>, <>, <>, <>, <>, <>],
[<>, <>, <>, <>, <>, <>],
[<>, <>, <>, <>, <>, <>],
[<>, <>, <>, <>, <>, <>]]); */

/////////////////////////////////////////////
/////////// User Custom Tewaks //////////////
/////////////////////////////////////////////

//Remove Redundant duct types
mods.jei.JEI.removeAndHide(<thermaldynamics:duct_32:2>);
mods.jei.JEI.removeAndHide(<thermaldynamics:duct_32:3>);
mods.jei.JEI.removeAndHide(<thermaldynamics:duct_32:6>);
mods.jei.JEI.removeAndHide(<thermaldynamics:duct_32:7>);
mods.jei.JEI.removeAndHide(<thermaldynamics:duct_0:7>);
mods.jei.JEI.removeAndHide(<thermaldynamics:duct_0:8>);
mods.jei.JEI.removeAndHide(<thermaldynamics:duct_64:0>);
mods.jei.JEI.removeAndHide(<thermaldynamics:duct_64:1>);
mods.jei.JEI.removeAndHide(<thermaldynamics:duct_64:2>);
mods.jei.JEI.removeAndHide(<thermaldynamics:duct_64:3>);

//Redstone Fluxduct
recipes.remove(<thermaldynamics:duct_0:2>);
recipes.addShaped(<thermaldynamics:duct_0:2>*6, [
	[<thermaldynamics:duct_0:6>, <thermaldynamics:duct_0:6>, <thermaldynamics:duct_0:6>],
	[<gregtech:wire_single:32012>, <gregtech:wire_single:32012>, <gregtech:wire_single:32012>],
	[<thermaldynamics:duct_0:6>, <thermaldynamics:duct_0:6>, <thermaldynamics:duct_0:6>]]);

//Cryo-Stabilized Fluxduct
recipes.remove(<thermaldynamics:duct_0:5>);
fluid_canner.recipeBuilder()
    .outputs([<thermaldynamics:duct_0:5>])
    .inputs([<thermaldynamics:duct_0:9>])
    .fluidInputs([<liquid:cryotheum> * 500])
    .duration(400).EUt(2).buildAndRegister();