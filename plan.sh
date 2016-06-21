pkg_bin_dirs=(bin)
pkg_build_deps=(core/zlib core/coreutils core/autoconf core/automake core/libtool core/make core/m4 core/gcc core/bison core/flex core/pkg-config core/libxml2 core/bzip2 core/patchelf core/glibc core/imagemagick core/gcc-libs)
pkg_deps=()
pkg_expose=()
pkg_filename="${pkg_name}-${pkg_version}".tar.gz
pkg_include_dirs=(include)
pkg_lib_dirs=(lib)
pkg_license=('UNLICENSED')
pkg_origin=walterdolce
pkg_maintainer="Walter Dolce <walterdolce@gmail.com>"
pkg_name=libxml2
pkg_shasum=ffb911191e509b966deb55de705387f14156e1a56b21824357cdf0053233633c
pkg_source=http://xmlsoft.org/sources/libxml2-2.9.4.tar.gz
pkg_svc_group=$pkg_svc_user
pkg_svc_user=hab
pkg_version=2.9.4


do_build() {
    ./configure --prefix=$pkg_prefix --disable-static --with-history
    make
}

do_install() {
    make install
}