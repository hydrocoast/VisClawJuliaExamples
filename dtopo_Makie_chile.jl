using Revise
using VisClaw
using Printf
using CairoMakie

# -----------------------------
# chile 2010
# -----------------------------
simdir = joinpath(VisClaw.CLAW,"geoclaw/examples/tsunami/chile2010/_output")

dtopo = VisClaw.loaddtopo(simdir)
fig, ax = VisClaw.makiedtopo(dtopo; colorrange=(-1.0, 1.0), colormap=:balance)
CairoMakie.Colorbar(fig[1,2], limits=(-1.0, 1.0), colormap=:balance, flipaxis=true)
CairoMakie.save("chile2010_dtopo.png", fig)