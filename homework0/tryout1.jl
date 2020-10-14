### A Pluto.jl notebook ###
# v0.12.0

using Markdown
using InteractiveUtils

# ╔═╡ 15f1ad66-0953-11eb-26ff-5d692fd1dff2
# Array Basics

# ╔═╡ 382a0676-0953-11eb-11dd-ad2ba51c98c1
v = [1,2,3,4] # vector

# ╔═╡ 58f24350-0953-11eb-0b1d-73373920214e
size(v)

# ╔═╡ 5d99d21a-0953-11eb-2d18-bd58587fa2b4
length(v)

# ╔═╡ 40ba1a60-0953-11eb-0add-9f522b021f2d
w = [ 1 2 3
	  4 5 6 ]  #2d array

# ╔═╡ 547db962-0953-11eb-351f-27a3c9932b41
size(w)

# ╔═╡ 6c7b7b58-0953-11eb-37ae-abaa325c267c
w[2,3] # indexing starts at 1 !

# ╔═╡ 8519c520-0953-11eb-0034-03e014460fd5
w[1,:]

# ╔═╡ 8a3e41b6-0953-11eb-15d1-57e118ac4b09
w[1:2,1:2]

# ╔═╡ 9c7cbd08-0953-11eb-2252-11ef0a347da8
A1 = rand( 1:9 , 3, 4)

# ╔═╡ a6382988-0953-11eb-2004-83d3ca34cc8c
size(A1)

# ╔═╡ d3d2ce0a-0953-11eb-1e0c-318d5543743b
colors = distinguishable_colors(6)

# ╔═╡ ee5d7518-0953-11eb-3f2f-c13bebec1e74
A3 = rand(colors, 10, 10)

# ╔═╡ 1201be04-0954-11eb-2b89-0389b5461843
D = [i*j for i=1:5, j=1:5]

# ╔═╡ 343bf172-0954-11eb-1cc4-3bbe8dcd9473
D^2 

# ╔═╡ 4d9390a8-0954-11eb-0996-6f465e68d76c
D.^2 #elementwise square

# ╔═╡ 64a7910e-0954-11eb-2e11-512e75b7e885
[D^2 D^2]

# ╔═╡ 6c47f282-0954-11eb-1d26-651a7485bc1c
[D^2 ; D.^2]

# ╔═╡ Cell order:
# ╠═15f1ad66-0953-11eb-26ff-5d692fd1dff2
# ╠═382a0676-0953-11eb-11dd-ad2ba51c98c1
# ╠═58f24350-0953-11eb-0b1d-73373920214e
# ╠═5d99d21a-0953-11eb-2d18-bd58587fa2b4
# ╠═40ba1a60-0953-11eb-0add-9f522b021f2d
# ╠═547db962-0953-11eb-351f-27a3c9932b41
# ╠═6c7b7b58-0953-11eb-37ae-abaa325c267c
# ╠═8519c520-0953-11eb-0034-03e014460fd5
# ╠═8a3e41b6-0953-11eb-15d1-57e118ac4b09
# ╠═9c7cbd08-0953-11eb-2252-11ef0a347da8
# ╠═a6382988-0953-11eb-2004-83d3ca34cc8c
# ╠═d3d2ce0a-0953-11eb-1e0c-318d5543743b
# ╠═ee5d7518-0953-11eb-3f2f-c13bebec1e74
# ╠═1201be04-0954-11eb-2b89-0389b5461843
# ╠═343bf172-0954-11eb-1cc4-3bbe8dcd9473
# ╠═4d9390a8-0954-11eb-0996-6f465e68d76c
# ╠═64a7910e-0954-11eb-2e11-512e75b7e885
# ╠═6c47f282-0954-11eb-1d26-651a7485bc1c
