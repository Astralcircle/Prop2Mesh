
-------------------------------
-- PRIMITIVE COMPAT
--
-- prop2mesh no longer bundles its own copy of the primitives construct library.
-- Instead, if the "primitive" addon ( by shadowscion ) is installed, its construct
-- library is reused directly. This avoids maintaining the same ~3000 line file in
-- two places, and means prop2mesh only supports primitive parts when the addon that
-- actually creates them is present.
-------------------------------

hook.Add("Initialize", "prop2mesh_primitive_compat", function()
	prop2mesh.primitive = Primitive
end)
