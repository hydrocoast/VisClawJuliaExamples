using Revise
using VisClaw
using Printf
using CairoMakie

# -----------------------------
# chile 2010
# -----------------------------
simdir = joinpath(VisClaw.CLAW,"geoclaw/examples/tsunami/chile2010/_output")

amrall = VisClaw.loadsurface(simdir)

figs, ax = VisClaw.makieheatmap(amrall; colorrange=(-0.5, 0.5), colormap=:balance)
for i = 1:amrall.nstep
    CairoMakie.Colorbar(figs[i][1,2], limits=(-0.5, 0.5), colormap=:balance, label="m")
end
figs[6]

for i = 1:amrall.nstep
    VisClaw.tilenumber!(ax[i], amrall.amr[i])
    VisClaw.tilebound!(ax[i], amrall.amr[i])
end
figs[6]
