.PHONY: build clean

CC = xelatex
RESUME_DIR = resume
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')

build: resume.pdf

resume.pdf: resume.tex $(RESUME_SRCS)
	$(CC) $<
	$(CC) $<

clean:
	rm -rf *.aux *.lof *.log *.lot *.fls *.out *.toc *.pdf
