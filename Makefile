ifeq ($(OS),Windows_NT)
	detected_OS := Windows
	CONDA_ACTIVATE=call conda activate
else
	detected_OS := $(shell uname -s)
	CONDA_ACTIVATE=source $$(conda info --base)/etc/profile.d/conda.sh ; conda activate ; conda activate
endif

install:
	@conda create --name breitong -y python=3.9.5 && \
	$(CONDA_ACTIVATE) breitong && \
	pip install -r requirements.txt && \
	pip install pre-commit && \
	pre-commit install

lint:
	@pre-commit run -a

kernel:
	@kedro jupyter notebook
