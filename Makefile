paper_dir = ./paper/
readme = README.md
abstract = $(addprefix $(paper_dir), abstract.tex)
bibtex = entry.bib
copyright = COPYRIGHT

all: paper readme

readme: $(readme)

$(readme): $(abstract) $(bibtex) $(copyright)
	echo "#Exogenous Empirical-evidence Equilibria in Perfect-monitoring Repeated Games Yield Correlated Equilibria" > $@
	echo "**Nicolas Dudebout and Jeff S. Shamma**\n" >> $@

	echo "" >> $@

	echo "##Abstract" >> $@
	cat $(abstract) >> $@

	echo "" >> $@

	echo "##BibTeX" >> $@
	cat $(bibtex) | sed 's/^/    /' >> $@

	echo "" >> $@

	echo "##Copyright" >> $@
	cat $(copyright) >> $@

.PHONY: paper
paper:
	$(MAKE) -C $(paper_dir)

.PHONY: clean
clean:
	$(MAKE) -C $(paper_dir) clean
	rm -f $(readme)
