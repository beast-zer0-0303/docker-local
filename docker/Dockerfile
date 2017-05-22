# 利用するUbuntuのイメージ
FROM ubuntu:14.04

# x64環境でx86バイナリを動かすパッケージ
RUN yes 'Y' | dpkg --add-architecture i386
RUN yes 'Y' | apt-get update
RUN yes 'Y' | apt-get install libc6:i386 libncurses5:i386
RUN yes 'Y' | apt-get install libstdc++6:i386 gcc-multilib g++-multilib

# ELF解析用, Python，perl
RUN yes 'Y' | apt-get install binutils python2.7 perl

# ROPガジェット探索用, その他
RUN yes 'Y' | apt-get install wget
RUN wget https://github.com/downloads/0vercl0k/rp/rp-lin-x86 && \
    chmod +x rp-lin-x86; mv rp-lin-x86 /usr/local/bin
RUN yes 'Y' | apt-get install binutils socat git build-essential gdb gdbserver nasm

# gdb-peda導入
RUN git clone https://github.com/longld/peda.git ~/peda && \
    echo "source ~/peda/peda.py" >> ~/.gdbinit
