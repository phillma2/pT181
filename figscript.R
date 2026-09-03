# Fig. 1
ggsave2(fig1a, filename = "fig1a.ggsave.pdf", width = 8, height = 6)
ggsave2(fig1b, filename = "fig1b.ggsave.pdf", width = 8, height = 6)

# Fig. 2
ggsave2(geneplot_rev, filename = "fig2_geneplot_rev.ggsave.pdf", width = 8, height = 6)
ggsave2(fig2mutplot, filename = "fig2mutplot.4tall.ggsave.pdf",
        width = 8, height = 4)

# Fig. 3
ggsave2(fig3, filename = "fig3.ggsave.pdf", width = 8, height = 6)

# Fig. 4
ggsave2(fig4, filename = "fig4.ggsave.pdf", width = 8, height = 6)

# Fig. 6
ggsave2(fig6a, filename = "fig6a.ggsave.pdf", width = 8, height = 6)
ggsave2(fig6b, filename = "fig6b.ggsave.pdf", width = 8, height = 6)

# Fig. 7
# PCN by strain & year of collection for n = 455
fig7 <- oe5 %>%
  ggplot(aes(x = numYear, y = PCN, color = strain)) +
  geom_point() +
  scale_y_sqrt(breaks = c(5, 15, 30, 50, 100, 150, 200),
               minor_breaks = NULL) +
  theme_bw(base_size = 16) +
  # geom_smooth(method = "lm") + # too many slopes -> too messy
  xlab("Year of Collection") +
  # scale_color_viridis(discrete=TRUE, option="inferno")
  scale_color_manual(values = strain.c11)
fig7
ggsave2(fig7, filename = "fig7.ggsave.pdf", width = 8, height = 6)

# Fig. 8
ggsave2(plot8, filename = "fig8.ggsave.pdf", width = 8, height = 6)

# Fig. 9
ggsave2(fig9main, filename = "fig9main.ggsave.pdf", width = 8, height = 6)
ggsave2(fig9inset, filename = "fig9inset.ggsave.pdf", width = 8, height = 6)

# Fig. 11
ggsave2(fig11, filename = "fig11.ggsave.pdf", width = 8, height = 6)

# Fig. 12
ggsave2(fig12, filename = "fig12.ggsave.pdf", width = 8, height = 6)

# Fig. 13
# strains & bioproject by median pcn boxplot
fig13 <- oe5 %>%
  ggplot(aes(x = forcats::fct_reorder(strainFac, PCN, .fun = median),
             y = PCN, color = BioProject)) +
  geom_boxplot() +
  theme_bw(base_size = 16) +
  theme(legend.position = "none") +
  scale_y_sqrt(breaks = c(5, 15, 30, 50, 100, 150, 200),
               minor_breaks = NULL) +
  labs(x = "Strain (colored by BioProject)") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
fig13
ggsave2(fig13, filename = "fig13.ggsave.pdf", width = 8, height = 6)