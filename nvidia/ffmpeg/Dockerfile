# NVIDIA Video Codec SDK in ffmpeg
# https://www.ffmpeg.org/
# https://developer.nvidia.com/ffmpeg
# FFmpeg is licensed under the GNU Lesser General Public License
# (LGPL) version 2.1 or later.
# FFmpeg incorporates several optional parts and optimizations that
# are covered by the GNU General Public License (GPL) version 2 or
# later.

# docker build -t ffmpeg-gpu .
# docker run --runtime=nvidia -ti --rm --tmpfs /tmp ffmpeg-gpu

FROM nvidia/cuda:9.0-devel as ffmpeg

RUN apt-get update && apt-get install -y --no-install-recommends \
        ca-certificates \
        git \
        libgl1-mesa-glx \
        make \
        nasm && \
    rm -rf /var/lib/apt/lists/*

RUN git clone --depth 1 --branch n3.4.1 https://github.com/ffmpeg/ffmpeg ffmpeg && \
    cd ffmpeg && \
    ./configure --enable-cuda --enable-cuvid --enable-nvenc --enable-nonfree --enable-libnpp \
                --extra-cflags=-I/usr/local/cuda/include \
                --extra-ldflags=-L/usr/local/cuda/lib64 \
                --prefix=/usr/local/ffmpeg --enable-shared --disable-static \
                --disable-manpages --disable-doc --disable-podpages && \
                make -j"$(nproc)" install && \
                ldconfig


FROM nvidia/cuda:9.0-base

COPY --from=ffmpeg /usr/local/ffmpeg /usr/local

ENV NVIDIA_DRIVER_CAPABILITIES $NVIDIA_DRIVER_CAPABILITIES,video

RUN apt-get update && apt-get install -y --no-install-recommends \
        cuda-npp-9-0 && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["ffmpeg"]

WORKDIR /tmp
CMD ["-y", "-hwaccel", "cuvid", "-c:v", "h264_cuvid", "-vsync", "0", "-i", \
     "http://distribution.bbb3d.renderfarming.net/video/mp4/bbb_sunflower_1080p_30fps_normal.mp4", \
     "-vf", "scale_npp=1280:720", "-vcodec", "h264_nvenc", "-t", "00:02:00", "output.mp4"]

