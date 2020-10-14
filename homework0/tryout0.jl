### A Pluto.jl notebook ###
# v0.12.0

using Markdown
using InteractiveUtils

# ╔═╡ 64a68fac-03b9-11eb-2cdd-43108205c7f1
begin 
	import Pkg; Pkg.add("ImageMagick")
	using Images
	philip = load("philip.jpg")
end

# ╔═╡ 997e6b06-03b8-11eb-2a3e-c32f1105fe5d
url = "https://i.imgur.com/VGPeJ6s.jpg"

# ╔═╡ 22e4ef46-03b9-11eb-2826-ff2956064845
download(url, "philip.jpg")

# ╔═╡ 7bd2a274-03b9-11eb-0ee3-0b504ea82456
typeof(philip)

# ╔═╡ 08e6fdfe-03ba-11eb-14ae-1bbf7208afd6
size(philip)

# ╔═╡ 1a16466e-08bc-11eb-0d1e-130b895770e7
RGBX(0.4,0.8,0.1)

# ╔═╡ 4acba7dc-08d4-11eb-2297-e1c82f9f2622
typeof(philip[100, 400])

# ╔═╡ 6b06be4c-08d4-11eb-1dfe-2d5e5d1b7df6
philip[100, 400]

# ╔═╡ 78c6a61e-08d4-11eb-1d0b-2b2915c1766e
philip[1:400,1:400]

# ╔═╡ 926be31a-08d4-11eb-1335-d7392b1cd3b4
begin
	(h,w) = size(philip)
	head = philip[(h ÷ 2):h,(w ÷ 10):(9w ÷ 10)]
	#Julia uses basicly latec: '÷' is typed as \div <TAB> --integer division
end

# ╔═╡ 32384922-08d5-11eb-33d4-b9ae32f3219f
∇ = 2
# we can even use symbols as variable names 

# ╔═╡ 6c48379e-08d5-11eb-2ae5-09cc2fd49888
# Concatenate Arrays is simple it works like in a math context
[head head]

# ╔═╡ 84daa92c-08d5-11eb-0413-91367e80c0f3
[
	head                   reverse(head, dims=2)
	reverse(head, dims=1)  reverse(reverse(head, dims=1), dims=2)
]

# ╔═╡ ec698bac-08d6-11eb-0520-19b20dc6eccc
new_phil = copy(head)

# ╔═╡ 3eb2edea-08d7-11eb-2986-5120d2e27feb
red = RGB(1,0,0)

# ╔═╡ fa749dc2-08d6-11eb-04c3-b371613aefc9
begin
	for i in 1:100
		for j in 1:300
			new_phil[i,j] = red
		end
	end
	new_phil
end

# ╔═╡ 7633e56c-08d7-11eb-3d87-ad5fa8825ed6
# broadcasting example (similar to Matlab . is componentwise operation)
begin
	new_phil2 = copy(new_phil)
	new_phil2[100:200,1:100] .= RGB(0,1,0)
	new_phil2
end

# ╔═╡ bcef3182-08d7-11eb-0473-fd1caaca7df4
# This also works for functions
function redify(color)
	return RGB(color.r, 0, 0)
end

# ╔═╡ d5fe5c7a-08d7-11eb-0967-4782d2b91ba3
begin
	color = RGB(0.8,0.5,0.2)
	
	[color, redify(color)]
end

# ╔═╡ 0d6d2196-08d8-11eb-2bfa-ab28e1473ff6
# we can now broadcast a whole image
redify.(philip)

# ╔═╡ 674a002a-0951-11eb-152e-a7ae25862314
element = 1 // 1

# ╔═╡ 6f6c0f8e-0951-11eb-2426-f536ff0af753
fill(element, 3, 4)

# ╔═╡ 7a77a242-0951-11eb-0ca0-3fb2626ebd10
typeof( element )

# ╔═╡ 88fdf076-0951-11eb-2774-213361eeaee5
keeptrack = [ typeof(1), typeof(1.0), typeof("one"), typeof(1//1)]

# ╔═╡ a14fa268-0951-11eb-22a7-e1a93bc49402
typeof(keeptrack)

# ╔═╡ aaa3568c-0951-11eb-0a45-351dc29f8fb8
load(download(https://www.cliqueiachei.com.br/logotipo-logomarca/1500/logotipo-numberone-315.jpg))

# ╔═╡ Cell order:
# ╟─997e6b06-03b8-11eb-2a3e-c32f1105fe5d
# ╠═22e4ef46-03b9-11eb-2826-ff2956064845
# ╠═64a68fac-03b9-11eb-2cdd-43108205c7f1
# ╠═7bd2a274-03b9-11eb-0ee3-0b504ea82456
# ╠═08e6fdfe-03ba-11eb-14ae-1bbf7208afd6
# ╠═1a16466e-08bc-11eb-0d1e-130b895770e7
# ╠═4acba7dc-08d4-11eb-2297-e1c82f9f2622
# ╠═6b06be4c-08d4-11eb-1dfe-2d5e5d1b7df6
# ╠═78c6a61e-08d4-11eb-1d0b-2b2915c1766e
# ╠═926be31a-08d4-11eb-1335-d7392b1cd3b4
# ╠═32384922-08d5-11eb-33d4-b9ae32f3219f
# ╠═6c48379e-08d5-11eb-2ae5-09cc2fd49888
# ╠═84daa92c-08d5-11eb-0413-91367e80c0f3
# ╠═ec698bac-08d6-11eb-0520-19b20dc6eccc
# ╠═3eb2edea-08d7-11eb-2986-5120d2e27feb
# ╠═fa749dc2-08d6-11eb-04c3-b371613aefc9
# ╠═7633e56c-08d7-11eb-3d87-ad5fa8825ed6
# ╠═bcef3182-08d7-11eb-0473-fd1caaca7df4
# ╠═d5fe5c7a-08d7-11eb-0967-4782d2b91ba3
# ╠═0d6d2196-08d8-11eb-2bfa-ab28e1473ff6
# ╠═674a002a-0951-11eb-152e-a7ae25862314
# ╠═6f6c0f8e-0951-11eb-2426-f536ff0af753
# ╠═7a77a242-0951-11eb-0ca0-3fb2626ebd10
# ╠═88fdf076-0951-11eb-2774-213361eeaee5
# ╠═a14fa268-0951-11eb-22a7-e1a93bc49402
# ╠═aaa3568c-0951-11eb-0a45-351dc29f8fb8
