Return-Path: <ke.yu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1DC154C80A7E
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 19:11:53 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Mar 2011 17:11:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,250,1297065600"; d="scan'208";a="396062735"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by azsmga001.ch.intel.com with ESMTP; 01 Mar 2011 17:11:52 -0800
Date: Wed, 2 Mar 2011 09:17:09 +0800
From: Yu Ke <ke.yu@intel.com>
To: Scott Garman <scott.a.garman@intel.com>
Message-ID: <20110302011709.GE23315@kyu3-hedt>
References: <cover.1299014665.git.scott.a.garman@intel.com>
	<cc834823c4140b0873d7d891188f6e4dfc119e0d.1299014665.git.scott.a.garman@intel.com>
MIME-Version: 1.0
In-Reply-To: <cc834823c4140b0873d7d891188f6e4dfc119e0d.1299014665.git.scott.a.garman@intel.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] screenshot: change the order of LDADD arguments
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 02 Mar 2011 01:11:54 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Interesting fix. Could you elaborate a bit more why changing the order of *=
=2Ela and libs has the effect? it should be a good learning to me.

Regards
Ke

On Mar 01, 13:27, Scott Garman wrote:
> From: Scott Garman <scott.a.garman@intel.com>
>=20
> Rather than setting linker flags explicitly in LDADD as the
> previous patch did, simply put libshot.la before GTK_LIBS.
>=20
> This fixes [BUGID #664]
>=20
> Signed-off-by: Scott Garman <scott.a.garman@intel.com>
> ---
>  .../files/dso_linking_change_build_fix.patch       |   49 --------------=
------
>  .../screenshot/files/fix_ldadd_order.patch         |   12 +++++
>  meta/recipes-sato/screenshot/screenshot_svn.bb     |    6 +-
>  3 files changed, 15 insertions(+), 52 deletions(-)
>  delete mode 100644 meta/recipes-sato/screenshot/files/dso_linking_change=
_build_fix.patch
>  create mode 100644 meta/recipes-sato/screenshot/files/fix_ldadd_order.pa=
tch
>=20
> diff --git a/meta/recipes-sato/screenshot/files/dso_linking_change_build_=
fix.patch b/meta/recipes-sato/screenshot/files/dso_linking_change_build_fix=
=2Epatch
> deleted file mode 100644
> index d3a9ed1..0000000
> --- a/meta/recipes-sato/screenshot/files/dso_linking_change_build_fix.pat=
ch
> +++ /dev/null
> @@ -1,49 +0,0 @@
> -after gcc linking has changed, all the libraries must be explicitely spe=
cified=20
> -This patch avoids these linking errors:
> -
> -
> -
> -| i586-poky-linux-libtool: link: ccache i586-poky-linux-gcc -march=3Di58=
6 --sysroot=3D/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux -Wall -g=
 -pthread -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/includ=
e/gtk-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/gt=
k-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/in=
clude/atk-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/in=
clude/cairo -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/incl=
ude/pango-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/in=
clude/glib-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/l=
ib/glib-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/=
usr/include/pixman-1 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux=
/usr/include/freetype2 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-lin=
ux/usr/include/libpng12 -pthread -I/disk0/pokybuild/build1/tmp/sysroots/i58=
6-poky-linux/usr/incl
>  ude/glib-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/=
lib/glib-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux=
/usr/include/gtk-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux=
/usr/lib/gtk-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-l=
inux/usr/include/atk-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-l=
inux/usr/include/cairo -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-lin=
ux/usr/include/pango-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-l=
inux/usr/include/pixman-1 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-=
linux/usr/include/freetype2 -I/disk0/pokybuild/build1/tmp/sysroots/i586-pok=
y-linux/usr/include/libpng12 -fexpensive-optimizations -fomit-frame-pointer=
 -frename-registers -O2 -ggdb -feliminate-unused-debug-types -Wl,-O1 -Wl,--=
hash-style=3Dgnu -Wl,--as-needed -o .libs/screenshot main.o -pthread  /disk=
0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgtk-x11-2.0.so /=
disk0/pokybuild/bui
>  ld1/tmp/sysroots/i586-poky-linux/usr/lib/libgdk-x11-2.0.so /disk0/pok
> ybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libatk-1.0.so /disk0/p=
okybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgdk_pixbuf-2.0.so /=
disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgio-2.0.so -=
lresolv /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpan=
gocairo-1.0.so -L/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/l=
ib /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpangoft2=
-1.0.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libstd=
c++.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libcair=
o.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpixman=
-1.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpng12=
=2Eso /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libXrend=
er.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libX11.s=
o /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libxcb.so /d=
isk0/pokybuild/buil
>  d1/tmp/sysroots/i586-poky-linux/usr/lib/libXau.so /disk0/pokybuild/build=
1/tmp/sysroots/i586-poky-linux/usr/lib/libXdmcp.so /disk0/pokybuild/build1/=
tmp/sysroots/i586-poky-linux/usr/lib/libz.so /disk0/pokybuild/build1/tmp/sy=
sroots/i586-poky-linux/usr/lib/libpango-1.0.so -lm /disk0/pokybuild/build1/=
tmp/sysroots/i586-poky-linux/usr/lib/libfontconfig.so /disk0/pokybuild/buil=
d1/tmp/sysroots/i586-poky-linux/usr/lib/libfreetype.so /disk0/pokybuild/bui=
ld1/tmp/sysroots/i586-poky-linux/usr/lib/libexpat.so /disk0/pokybuild/build=
1/tmp/sysroots/i586-poky-linux/usr/lib/libgobject-2.0.so /disk0/pokybuild/b=
uild1/tmp/sysroots/i586-poky-linux/usr/lib/libgmodule-2.0.so -ldl /disk0/po=
kybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgthread-2.0.so -lpth=
read /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libglib-2=
=2E0.so -lrt ./.libs/libshot.a -pthread
> -| /disk0/pokybuild/build1/tmp/sysroots/x86_64-linux/usr/libexec/i586-pok=
y-linux/gcc/i586-poky-linux/4.5.1/ld: L: invalid DSO for symbol `gdk_cursor=
_unref' definition
> -| /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgdk-x1=
1-2.0.so: could not read symbols: Bad value
> -| collect2: ld returned 1 exit status
> -| make[1]: *** [screenshot] Error 1
> -
> -
> -
> -
> -| i586-poky-linux-libtool: link: ccache i586-poky-linux-gcc -march=3Di58=
6 --sysroot=3D/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux -Wall -g=
 -pthread -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/includ=
e/gtk-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/gt=
k-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/in=
clude/atk-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/in=
clude/cairo -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/incl=
ude/pango-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/in=
clude/glib-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/l=
ib/glib-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/=
usr/include/pixman-1 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux=
/usr/include/freetype2 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-lin=
ux/usr/include/libpng12 -pthread -I/disk0/pokybuild/build1/tmp/sysroots/i58=
6-poky-linux/usr/incl
>  ude/glib-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/=
lib/glib-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux=
/usr/include/gtk-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux=
/usr/lib/gtk-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-l=
inux/usr/include/atk-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-l=
inux/usr/include/cairo -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-lin=
ux/usr/include/pango-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-l=
inux/usr/include/pixman-1 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-=
linux/usr/include/freetype2 -I/disk0/pokybuild/build1/tmp/sysroots/i586-pok=
y-linux/usr/include/libpng12 -fexpensive-optimizations -fomit-frame-pointer=
 -frename-registers -O2 -ggdb -feliminate-unused-debug-types -Wl,-O1 -Wl,--=
hash-style=3Dgnu -Wl,--as-needed -o .libs/screenshot main.o -pthread  /disk=
0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgtk-x11-2.0.so /=
disk0/pokybuild/bui
>  ld1/tmp/sysroots/i586-poky-linux/usr/lib/libatk-1.0.so /disk0/pokybui
> ld/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgdk_pixbuf-2.0.so /disk=
0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgio-2.0.so -lres=
olv /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpangoca=
iro-1.0.so -L/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib /=
disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpangoft2-1.0=
=2Eso /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libstdc+=
+.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libcairo.=
so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpixman-1=
=2Eso /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpng12=
=2Eso /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libXrend=
er.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libX11.s=
o /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libxcb.so /d=
isk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libXau.so /disk0=
/pokybuild/build1/tmp/s
>  ysroots/i586-poky-linux/usr/lib/libXdmcp.so /disk0/pokybuild/build1/tmp/=
sysroots/i586-poky-linux/usr/lib/libz.so /disk0/pokybuild/build1/tmp/sysroo=
ts/i586-poky-linux/usr/lib/libpango-1.0.so -lm /disk0/pokybuild/build1/tmp/=
sysroots/i586-poky-linux/usr/lib/libfontconfig.so /disk0/pokybuild/build1/t=
mp/sysroots/i586-poky-linux/usr/lib/libfreetype.so /disk0/pokybuild/build1/=
tmp/sysroots/i586-poky-linux/usr/lib/libexpat.so /disk0/pokybuild/build1/tm=
p/sysroots/i586-poky-linux/usr/lib/libgobject-2.0.so /disk0/pokybuild/build=
1/tmp/sysroots/i586-poky-linux/usr/lib/libgmodule-2.0.so -ldl /disk0/pokybu=
ild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgthread-2.0.so -lpthread=
 /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libglib-2.0.s=
o -lrt ./.libs/libshot.a /disk0/pokybuild/build1/tmp/sysroots/i586-poky-lin=
ux/usr/lib/libgdk-x11-2.0.so -pthread
> -| /disk0/pokybuild/build1/tmp/sysroots/x86_64-linux/usr/libexec/i586-pok=
y-linux/gcc/i586-poky-linux/4.5.1/ld: a: invalid DSO for symbol `gdk_pixbuf=
_unref' definition
> -| /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgdk_pi=
xbuf-2.0.so: could not read symbols: Bad value
> -| collect2: ld returned 1 exit status
> -| make[1]: *** [screenshot] Error 1
> -
> -
> -| i586-poky-linux-libtool: link: ccache i586-poky-linux-gcc -march=3Di58=
6 --sysroot=3D/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux -Wall -g=
 -pthread -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/includ=
e/gtk-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/gt=
k-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/in=
clude/atk-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/in=
clude/cairo -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/incl=
ude/pango-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/in=
clude/glib-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/l=
ib/glib-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/=
usr/include/pixman-1 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux=
/usr/include/freetype2 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-lin=
ux/usr/include/libpng12 -pthread -I/disk0/pokybuild/build1/tmp/sysroots/i58=
6-poky-linux/usr/incl
>  ude/glib-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/=
lib/glib-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux=
/usr/include/gtk-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux=
/usr/lib/gtk-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-l=
inux/usr/include/atk-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-l=
inux/usr/include/cairo -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-lin=
ux/usr/include/pango-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-l=
inux/usr/include/pixman-1 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-=
linux/usr/include/freetype2 -I/disk0/pokybuild/build1/tmp/sysroots/i586-pok=
y-linux/usr/include/libpng12 -fexpensive-optimizations -fomit-frame-pointer=
 -frename-registers -O2 -ggdb -feliminate-unused-debug-types -Wl,-O1 -Wl,--=
hash-style=3Dgnu -Wl,--as-needed -o .libs/screenshot main.o -pthread  /disk=
0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgtk-x11-2.0.so /=
disk0/pokybuild/bui
>  ld1/tmp/sysroots/i586-poky-linux/usr/lib/libatk-1.0.so /disk0/pokybui
> ld/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpangocairo-1.0.so -L/di=
sk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib /disk0/pokybuild/=
build1/tmp/sysroots/i586-poky-linux/usr/lib/libpangoft2-1.0.so /disk0/pokyb=
uild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libstdc++.so /disk0/pokybu=
ild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libcairo.so /disk0/pokybuil=
d/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpixman-1.so /disk0/pokybui=
ld/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpng12.so /disk0/pokybuild=
/build1/tmp/sysroots/i586-poky-linux/usr/lib/libXrender.so /disk0/pokybuild=
/build1/tmp/sysroots/i586-poky-linux/usr/lib/libX11.so /disk0/pokybuild/bui=
ld1/tmp/sysroots/i586-poky-linux/usr/lib/libxcb.so /disk0/pokybuild/build1/=
tmp/sysroots/i586-poky-linux/usr/lib/libXau.so /disk0/pokybuild/build1/tmp/=
sysroots/i586-poky-linux/usr/lib/libXdmcp.so /disk0/pokybuild/build1/tmp/sy=
sroots/i586-poky-linux/usr/lib/libpango-1.0.so /disk0/pokybuild/build1/tmp/=
sysroots/i586-pok
>  y-linux/usr/lib/libfontconfig.so /disk0/pokybuild/build1/tmp/sysroots/i5=
86-poky-linux/usr/lib/libfreetype.so /disk0/pokybuild/build1/tmp/sysroots/i=
586-poky-linux/usr/lib/libexpat.so ./.libs/libshot.a /disk0/pokybuild/build=
1/tmp/sysroots/i586-poky-linux/usr/lib/libgdk-x11-2.0.so /disk0/pokybuild/b=
uild1/tmp/sysroots/i586-poky-linux/usr/lib/libgdk_pixbuf-2.0.so /disk0/poky=
build/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgio-2.0.so -lresolv /d=
isk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libz.so /disk0/p=
okybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgobject-2.0.so /dis=
k0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgmodule-2.0.so =
-ldl /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgthrea=
d-2.0.so -lpthread /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr=
/lib/libglib-2.0.so -lrt -lm -pthread
> -| /disk0/pokybuild/build1/tmp/sysroots/x86_64-linux/usr/libexec/i586-pok=
y-linux/gcc/i586-poky-linux/4.5.1/ld: }: invalid DSO for symbol `XUngrabSer=
ver' definition
> -| /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libX11.so=
: could not read symbols: Bad value
> -| collect2: ld returned 1 exit status
> -| make[1]: *** [screenshot] Error 1
> -
> -Nitin A Kamble <nitin.a.kamble@intel.com>
> -Date: 2011/01/11
> -
> -Update:
> -This is identified as a libtool issue. While creating the libshot.la=20
> -file, libtool should have added these needed libraries in there.
> - A bug has been created for this issue:=20
> -   http://bugzilla.pokylinux.org/show_bug.cgi?id=3D664
> -Nitin A Kamble <nitin.a.kamble@intel.com>
> -Date: 2011/01/19
> -
> -
> -Index: screenshot/Makefile.am
> -=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> ---- screenshot.orig/Makefile.am
> -+++ screenshot/Makefile.am
> -@@ -23,4 +23,4 @@ endif
> - # A standalone tool for running from a terminal and scripts
> - bin_PROGRAMS =3D screenshot
> - screenshot_SOURCES =3D main.c
> --screenshot_LDADD =3D $(GTK_LIBS) libshot.la
> -+screenshot_LDADD =3D $(GTK_LIBS) libshot.la -lgdk-x11-2.0 -lgdk_pixbuf-=
2.0 -lX11
> diff --git a/meta/recipes-sato/screenshot/files/fix_ldadd_order.patch b/m=
eta/recipes-sato/screenshot/files/fix_ldadd_order.patch
> new file mode 100644
> index 0000000..726d590
> --- /dev/null
> +++ b/meta/recipes-sato/screenshot/files/fix_ldadd_order.patch
> @@ -0,0 +1,12 @@
> +Fix the ordering of LDADD options to fix a compilation failure.
> +
> +Signed-off-by: Scott Garman <scott.a.garman@intel.com>
> +diff -urN screenshot.orig//Makefile.am screenshot/Makefile.am
> +--- screenshot.orig//Makefile.am	2010-06-29 11:55:00.000000000 -0700
> ++++ screenshot/Makefile.am	2011-03-01 11:09:01.215813968 -0800
> +@@ -23,4 +23,4 @@
> + # A standalone tool for running from a terminal and scripts
> + bin_PROGRAMS =3D screenshot
> + screenshot_SOURCES =3D main.c
> +-screenshot_LDADD =3D $(GTK_LIBS) libshot.la
> ++screenshot_LDADD =3D libshot.la $(GTK_LIBS)
> diff --git a/meta/recipes-sato/screenshot/screenshot_svn.bb b/meta/recipe=
s-sato/screenshot/screenshot_svn.bb
> index ff2b7c8..f9c4db6 100644
> --- a/meta/recipes-sato/screenshot/screenshot_svn.bb
> +++ b/meta/recipes-sato/screenshot/screenshot_svn.bb
> @@ -10,10 +10,10 @@ LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D94d55d512a=
9ba36caa9b7df079bae19f \
>  PRIORITY =3D "optional"
>  DEPENDS =3D "matchbox-panel-2"
>  PV =3D "0.0+svnr${SRCPV}"
> -PR =3D "r1"
> +PR =3D "r2"
> =20
> -SRC_URI =3D "svn://svn.o-hand.com/repos/misc/trunk;module=3D${PN};proto=
=3Dhttp\
> -	file://dso_linking_change_build_fix.patch"
> +SRC_URI =3D "svn://svn.o-hand.com/repos/misc/trunk;module=3D${PN};proto=
=3Dhttp \
> +           file://fix_ldadd_order.patch"
> =20
>  S =3D ${WORKDIR}/${PN}
> =20
> --=20
> 1.7.1
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

