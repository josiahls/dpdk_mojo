# mujoco_mojo
> Mujoco bindings to mojo.

## Installation

```bash
git clone https://github.com/google-deepmind/mujoco.git
cd mujoco
mkdir -p build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=$HOME/.local -DCMAKE_BUILD_TYPE=Debug
cmake --build . -j3
cmake --install .
# Add to bashrc, or use the docker image which already sets this.
export LD_LIBRARY_PATH=$HOME/.local/lib
```

## Binding generation
```bash
pixi run generate_bindings mujoco_mojo/mujoco/include/mujoco/mujoco.h output ~/.local/lib/libmujoco.so '-I /home/c_binder_mojo_user/c_binder_mojo/mujoco_mojo/mujoco/include' mj
```