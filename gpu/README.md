# ollama

https://github.com/intel/ipex-llm/blob/main/docs/mddocs/DockerGuides/docker_cpp_xpu_quickstart.md

see: https://github.com/mattcurf/ollama-intel-gpu/tree/alternate_base_image
see: https://dev.to/itlackey/run-ollama-on-intel-arc-gpu-ipex-4e4k
see: https://github.com/intel/ipex-llm/tree/main/docs/mddocs/DockerGuides
see: https://github.com/intel/ipex-llm/blob/main/docs/mddocs/DockerGuides/docker_windows_gpu.md
see: https://docs.openwebui.com/tutorials/integrations/ipex_llm


check that video card is available with clinfo and vainfo:
first try just `apt install clinfo`, but also must try latest versions:
```
# after this clinfo worked on ollama Ubuntu 22 image, with passing device /dev/dri/renderD128
#
export GMMLIB_VER=22.5.4
export IGC2_VER=2.2.3
export IGC2_BUILD=18220
export NEO_VER=24.48.31907.7
export IGC1_LEGACY_VER=1.0.17537.20
export NEO_LEGACY_VER=24.35.30872.22

curl -LO https://github.com/intel/compute-runtime/releases/download/${NEO_VER}/libigdgmm12_${GMMLIB_VER}_amd64.deb \
     -LO https://github.com/intel/intel-graphics-compiler/releases/download/v${IGC2_VER}/intel-igc-core-2_${IGC2_VER}+${IGC2_BUILD}_amd64.deb \
     -LO https://github.com/intel/intel-graphics-compiler/releases/download/v${IGC2_VER}/intel-igc-opencl-2_${IGC2_VER}+${IGC2_BUILD}_amd64.deb \
     -LO https://github.com/intel/compute-runtime/releases/download/${NEO_VER}/intel-opencl-icd_${NEO_VER}_amd64.deb \
     -LO https://github.com/intel/intel-graphics-compiler/releases/download/igc-${IGC1_LEGACY_VER}/intel-igc-core_${IGC1_LEGACY_VER}_amd64.deb \
     -LO https://github.com/intel/intel-graphics-compiler/releases/download/igc-${IGC1_LEGACY_VER}/intel-igc-opencl_${IGC1_LEGACY_VER}_amd64.deb \
     -LO https://github.com/intel/compute-runtime/releases/download/${NEO_LEGACY_VER}/intel-opencl-icd-legacy1_${NEO_LEGACY_VER}_amd64.deb
dpkg -i --force-all *.deb
apt install ocl-icd-libopencl1
apt install clinfo
clinfo 
```
