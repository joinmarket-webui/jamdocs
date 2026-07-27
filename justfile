# This justfile requires https://github.com/casey/just

# Load environment variables from `.env` file.
set dotenv-load
# Fail the script if the env file is not found.
set dotenv-required

project_dir := justfile_directory()

regtest_bitcoin_container_name := 'jam_docker_bitcoind'
regtest_bitcoin_container_rpcport := '43782'

# print available targets
[group("project-agnostic")]
default:
    @just --list --justfile {{justfile()}}

# evaluate and print all just variables
[group("project-agnostic")]
evaluate:
    @just --evaluate

# print system information such as OS and architecture
[group("project-agnostic")]
system-info:
    @echo "architecture: {{arch()}}"
    @echo "os: {{os()}}"
    @echo "os family: {{os_family()}}"


[group("mkdocs")]
install:
    pip install mkdocs
    pip install mkdocs-material

[group("mkdocs")]
update:
    pip install -U mkdocs

[group("mkdocs")]
serve:
    mkdocs serve

[group("mkdocs")]
build:
    mkdocs build
