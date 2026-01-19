function find_package {
  find "/host/${GITHUB_WORKSPACE}/spack" -maxdepth 4 -type d -name "$1"
}

CMAKE_PREFIX_PATH="$CMAKE_PREFIX_PATH:$(find_package boost)"
CMAKE_PREFIX_PATH="$CMAKE_PREFIX_PATH:$(find_package eigen3)"
CMAKE_PREFIX_PATH="$CMAKE_PREFIX_PATH:$(find_package nlohmann-json)"
CMAKE_PREFIX_PATH="$CMAKE_PREFIX_PATH:$(find_package intel-tbb)"
CMAKE_PREFIX_PATH="$CMAKE_PREFIX_PATH:$(find_package hepmc3)"
export CMAKE_PREFIX_PATH
