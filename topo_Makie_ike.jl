using Printf
using Revise
using VisClaw
using CairoMakie

simdir = joinpath(VisClaw.CLAW,"geoclaw/examples/storm-surge/ike/_output")
topo = VisClaw.loadtopo(simdir)


fig, ax = VisClaw.makietopo(topo, colormap=:topo, colorrange=(-7000, 7000))
#CairoMakie.display(fig)
CairoMakie.save("test_load_topo.png", fig)
