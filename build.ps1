$dirname = [System.IO.Path]::GetFileName((Get-Location).Path)
docker run --rm -v "${PWD}:/code" --mount type=volume,source="${dirname}_cache",target=/code/target --mount type=volume,source=registry_cache,target=/usr/local/cargo/registry cosmwasm/rust-optimizer:0.14.0
