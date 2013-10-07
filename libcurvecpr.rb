require 'formula'

class Libcurvecpr < Formula
    homepage 'https://github.com/impl/libcurvecpr'
    version '0.1.1'
    url 'https://github.com/impl/libcurvecpr/releases/download/v0.1.1/libcurvecpr-0.1.1.tar.bz2'
    sha256 '00eb9f7bea20ce1b191de41a2394ccbc59bdf751abe3dae7509c132e5518cfe0'

    depends_on 'libsodium'
    depends_on 'check' => :build
    depends_on 'pkg-config' => :build

    def install
        system "./configure", "--prefix=#{prefix}"
        system "make check"
        system "make install"
    end
end
