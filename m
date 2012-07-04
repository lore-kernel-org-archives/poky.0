Return-Path: <alexandru.damian@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AACDE006B1
	for <poky@yoctoproject.org>; Wed,  4 Jul 2012 00:32:00 -0700 (PDT)
Received: from mail-lb0-f180.google.com ([209.85.217.180])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 04 Jul 2012 00:31:59 -0700
Received: by lbbgj3 with SMTP id gj3so8862001lbb.25
	for <poky@yoctoproject.org>; Wed, 04 Jul 2012 00:31:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=R7TJxsFoIaqTi90O+OiZoxifpglbk2uiS5RC/Qm2WXU=;
	b=MYr3Goe9PESNBEwNHh8inp7TT+E6jSLH9k0Ev6V/OBjvvSZviAKjvpHO3Yf6DWzeap
	Pxs/R3J+sFvhMwvE+T91vKsNAqsWfwjhIHu2vncb7wSe1IPHgXBXQAuM8p1rDrdEFCuT
	2QfXkS2PCUrwRCwwj52Wsd+FLJxmhHWEixfTLjyexC+N7DKlazAmYi2/dDqo3R0kWt5l
	YXyWL7kcws6bd2vNZK9NDwhiWYY2rFxc4/8Buuut1bXQjdcd1ozZZ3Tbg0lPTr69cKUh
	QHlexDcbx2Q9uRTVl7CQq1FsrAJzmb8+NCcpHWnbagE8CcTdGXoFRzU56kGDocuJJtNz
	BUcg==
MIME-Version: 1.0
Received: by 10.152.108.144 with SMTP id hk16mr20552982lab.2.1341387117198;
	Wed, 04 Jul 2012 00:31:57 -0700 (PDT)
Received: by 10.112.38.132 with HTTP; Wed, 4 Jul 2012 00:31:57 -0700 (PDT)
In-Reply-To: <1341387022-24986-2-git-send-email-alexandru.damian@intel.com>
References: <1341387022-24986-1-git-send-email-alexandru.damian@intel.com>
	<1341387022-24986-2-git-send-email-alexandru.damian@intel.com>
Date: Wed, 4 Jul 2012 10:31:57 +0300
Message-ID: <CAJ2CSBt=oBmW4-MoFe8+_K6ZGO+A8f6ZfboLUy+QhvEXtP=-cw@mail.gmail.com>
From: "Damian, Alexandru" <alexandru.damian@intel.com>
To: poky@yoctoproject.org
X-Gm-Message-State: ALoCoQkASKs1I2R5yZCOgayHTUbHsJhFz+1cj62PMQKp2/mj9OpQ01PAPtRSKCRHo6niQ6P47BhX
Subject: Re: [PATCH 2/2] curl: upgrade to 7.26.0
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
X-List-Received-Date: Wed, 04 Jul 2012 07:32:00 -0000
Content-Type: multipart/alternative; boundary=bcaec54d4dd6a07b3504c3fc0651

--bcaec54d4dd6a07b3504c3fc0651
Content-Type: text/plain; charset=ISO-8859-1

Disregard, wrong mail list.

Alex

On Wed, Jul 4, 2012 at 10:30 AM, <alexandru.damian@intel.com> wrote:

> From: Alexandru DAMIAN <alexandru.damian@intel.com>
>
> Config system changed from 7.24.0 and the noldlibpatch
> is no longer needed, thus deleted.
>
> Signed-off-by: Alexandru DAMIAN <alexandru.damian@intel.com>
> ---
>  meta/recipes-support/curl/curl/noldlibpath.patch |   76
> ----------------------
>  meta/recipes-support/curl/curl_7.24.0.bb         |   55 ----------------
>  meta/recipes-support/curl/curl_7.26.0.bb         |   54 +++++++++++++++
>  3 files changed, 54 insertions(+), 131 deletions(-)
>  delete mode 100644 meta/recipes-support/curl/curl/noldlibpath.patch
>  delete mode 100644 meta/recipes-support/curl/curl_7.24.0.bb
>  create mode 100644 meta/recipes-support/curl/curl_7.26.0.bb
>
> diff --git a/meta/recipes-support/curl/curl/noldlibpath.patch
> b/meta/recipes-support/curl/curl/noldlibpath.patch
> deleted file mode 100644
> index f4c72a1..0000000
> --- a/meta/recipes-support/curl/curl/noldlibpath.patch
> +++ /dev/null
> @@ -1,76 +0,0 @@
> -Upstream-Status: Inappropriate [embedded specific]
> -
> -Manipulating LD_LIBRARY_PATH can totally break builds when cross
> compiling.
> -Since we never run compiled binaries for the target, we should *never*
> need
> -to change LD_LIBRARY_PATH.
> -
> -RP 9/6/2010
> -
> -Index: curl-7.20.0/configure.ac
> -===================================================================
> ---- curl-7.20.0.orig/configure.ac      2010-06-09 11:06:30.000000000
> +0100
> -+++ curl-7.20.0/configure.ac   2010-06-09 11:04:25.000000000 +0100
> -@@ -1461,9 +1461,10 @@
> -        dnl linker doesn't search through, we need to add it to
> LD_LIBRARY_PATH
> -        dnl to prevent further configure tests to fail due to this
> -
> --       LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$LIB_OPENSSL"
> --       export LD_LIBRARY_PATH
> --       AC_MSG_NOTICE([Added $LIB_OPENSSL to LD_LIBRARY_PATH])
> -+       #LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$LIB_OPENSSL"
> -+       #export LD_LIBRARY_PATH
> -+       #AC_MSG_NOTICE([Added $LIB_OPENSSL to LD_LIBRARY_PATH])
> -+       :
> -     fi
> -   fi
> -
> -@@ -1684,9 +1686,10 @@
> -           dnl LD_LIBRARY_PATH to prevent further configure tests to fail
> -           dnl due to this
> -
> --          LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$gtlslib"
> --          export LD_LIBRARY_PATH
> --          AC_MSG_NOTICE([Added $gtlslib to LD_LIBRARY_PATH])
> -+          #LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$gtlslib"
> -+          #export LD_LIBRARY_PATH
> -+          #AC_MSG_NOTICE([Added $gtlslib to LD_LIBRARY_PATH])
> -+          :
> -         fi
> -       fi
> -
> -@@ -1696,6 +1699,8 @@
> -
> - fi dnl OPENSSL != 1
> -
> -+AC_SUBST(GNUTLS_REQUIRED)
> -+
> - dnl ----------------------------------------------------
> - dnl NSS. Only check if GnuTLS and OpenSSL are not enabled
> - dnl ----------------------------------------------------
> -@@ -1781,9 +1786,10 @@
> -         dnl LD_LIBRARY_PATH to prevent further configure tests to fail
> -         dnl due to this
> -
> --        LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$nssprefix/lib$libsuff"
> --        export LD_LIBRARY_PATH
> --        AC_MSG_NOTICE([Added $nssprefix/lib$libsuff to LD_LIBRARY_PATH])
> -+        #LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$nssprefix/lib$libsuff"
> -+        #export LD_LIBRARY_PATH
> -+        #AC_MSG_NOTICE([Added $nssprefix/lib$libsuff to LD_LIBRARY_PATH])
> -+        :
> -       fi
> -
> -     fi
> -@@ -1881,9 +1887,9 @@
> -        dnl libssh2_version is a post 1.0 addition
> -        AC_CHECK_FUNCS( libssh2_version )
> -
> --       LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$DIR_SSH2"
> --       export LD_LIBRARY_PATH
> --       AC_MSG_NOTICE([Added $DIR_SSH2 to LD_LIBRARY_PATH])
> -+       #LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$DIR_SSH2"
> -+       #export LD_LIBRARY_PATH
> -+       #AC_MSG_NOTICE([Added $DIR_SSH2 to LD_LIBRARY_PATH])
> -     fi
> -   else
> -     dnl no libssh2, revert back to clean variables
> diff --git a/meta/recipes-support/curl/curl_7.24.0.bbb/meta/recipes-support/curl/
> curl_7.24.0.bb
> deleted file mode 100644
> index 832254f..0000000
> --- a/meta/recipes-support/curl/curl_7.24.0.bb
> +++ /dev/null
> @@ -1,55 +0,0 @@
> -DESCRIPTION = "Command line tool and library for client-side URL
> transfers."
> -HOMEPAGE = "http://curl.haxx.se/"
> -BUGTRACKER = "http://curl.haxx.se/mail/list.cgi?list=curl-tracker"
> -SECTION = "console/network"
> -LICENSE = "MIT"
> -LIC_FILES_CHKSUM =
> "file://COPYING;beginline=7;md5=3a34942f4ae3fbf1a303160714e664ac"
> -
> -DEPENDS = "zlib gnutls"
> -DEPENDS_virtclass-native = "zlib-native openssl-native"
> -DEPENDS_virtclass-nativesdk = "zlib-nativesdk"
> -PR = "r3"
> -
> -SRC_URI = "http://curl.haxx.se/download/curl-${PV}.tar.bz2 \
> -           file://noldlibpath.patch \
> -           file://pkgconfig_fix.patch"
> -
> -SRC_URI[md5sum] = "f912221d75eb8d8fe08900eaf011b023"
> -SRC_URI[sha256sum] =
> "ebdb111088ff8b0e05b1d1b075e9f1608285e8105cc51e21caacf33d01812c16"
> -
> -inherit autotools pkgconfig binconfig
> -
> -EXTRA_OECONF = "--with-zlib=${STAGING_LIBDIR}/../ \
> -                --without-libssh2 \
> -               --with-random=/dev/urandom \
> -               --without-libidn \
> -               --enable-crypto-auth \
> -                ${CURLGNUTLS} \
> -               "
> -
> -CURLGNUTLS = " --with-gnutls=${STAGING_LIBDIR}/../ --without-ssl"
> -CURLGNUTLS_virtclass-native = "--without-gnutls --with-ssl"
> -CURLGNUTLS_virtclass-nativesdk = "--without-gnutls --without-ssl"
> -
> -do_configure_prepend() {
> -       sed -i s:OPT_GNUTLS/bin:OPT_GNUTLS:g configure.ac
> -}
> -
> -PACKAGES =+ "${PN}-certs libcurl libcurl-dev libcurl-staticdev
> libcurl-doc"
> -
> -FILES_${PN}-certs = "${datadir}/curl/curl-*"
> -PACKAGE_ARCH_${PN}-certs = "all"
> -
> -FILES_lib${BPN} = "${libdir}/lib*.so.*"
> -RRECOMMENDS_lib${BPN} += "${PN}-certs"
> -FILES_lib${BPN}-dev = "${includedir} \
> -                      ${libdir}/lib*.so \
> -                      ${libdir}/lib*.la \
> -                      ${libdir}/pkgconfig \
> -                      ${datadir}/aclocal \
> -                      ${bindir}/*-config"
> -FILES_lib${BPN}-staticdev = "${libdir}/lib*.a"
> -FILES_lib${BPN}-doc = "${mandir}/man3 \
> -                      ${mandir}/man1/curl-config.1"
> -
> -BBCLASSEXTEND = "native nativesdk"
> diff --git a/meta/recipes-support/curl/curl_7.26.0.bbb/meta/recipes-support/curl/
> curl_7.26.0.bb
> new file mode 100644
> index 0000000..f04b400
> --- /dev/null
> +++ b/meta/recipes-support/curl/curl_7.26.0.bb
> @@ -0,0 +1,54 @@
> +DESCRIPTION = "Command line tool and library for client-side URL
> transfers."
> +HOMEPAGE = "http://curl.haxx.se/"
> +BUGTRACKER = "http://curl.haxx.se/mail/list.cgi?list=curl-tracker"
> +SECTION = "console/network"
> +LICENSE = "MIT"
> +LIC_FILES_CHKSUM =
> "file://COPYING;beginline=7;md5=3a34942f4ae3fbf1a303160714e664ac"
> +
> +DEPENDS = "zlib gnutls"
> +DEPENDS_virtclass-native = "zlib-native openssl-native"
> +DEPENDS_virtclass-nativesdk = "zlib-nativesdk"
> +PR = "r0"
> +
> +SRC_URI = "http://curl.haxx.se/download/curl-${PV}.tar.bz2 \
> +           file://pkgconfig_fix.patch"
> +
> +SRC_URI[md5sum] = "bfa80f01b3d300359cfb4d409b6136a3"
> +SRC_URI[sha256sum] =
> "fced262f16eb6bfcdcea15e04a7905ffcb5ff04b14a19ca35b9df86d6720d26a"
> +
> +inherit autotools pkgconfig binconfig
> +
> +EXTRA_OECONF = "--with-zlib=${STAGING_LIBDIR}/../ \
> +                --without-libssh2 \
> +               --with-random=/dev/urandom \
> +               --without-libidn \
> +               --enable-crypto-auth \
> +                ${CURLGNUTLS} \
> +               "
> +
> +CURLGNUTLS = " --with-gnutls=${STAGING_LIBDIR}/../ --without-ssl"
> +CURLGNUTLS_virtclass-native = "--without-gnutls --with-ssl"
> +CURLGNUTLS_virtclass-nativesdk = "--without-gnutls --without-ssl"
> +
> +do_configure_prepend() {
> +       sed -i s:OPT_GNUTLS/bin:OPT_GNUTLS:g configure.ac
> +}
> +
> +PACKAGES =+ "${PN}-certs libcurl libcurl-dev libcurl-staticdev
> libcurl-doc"
> +
> +FILES_${PN}-certs = "${datadir}/curl/curl-*"
> +PACKAGE_ARCH_${PN}-certs = "all"
> +
> +FILES_lib${BPN} = "${libdir}/lib*.so.*"
> +RRECOMMENDS_lib${BPN} += "${PN}-certs"
> +FILES_lib${BPN}-dev = "${includedir} \
> +                      ${libdir}/lib*.so \
> +                      ${libdir}/lib*.la \
> +                      ${libdir}/pkgconfig \
> +                      ${datadir}/aclocal \
> +                      ${bindir}/*-config"
> +FILES_lib${BPN}-staticdev = "${libdir}/lib*.a"
> +FILES_lib${BPN}-doc = "${mandir}/man3 \
> +                      ${mandir}/man1/curl-config.1"
> +
> +BBCLASSEXTEND = "native nativesdk"
> --
> 1.7.9.5
>
>

--bcaec54d4dd6a07b3504c3fc0651
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Disregard, wrong mail list.<br><br>Alex<br><br><div class=3D"gmail_quote">O=
n Wed, Jul 4, 2012 at 10:30 AM,  <span dir=3D"ltr">&lt;<a href=3D"mailto:al=
exandru.damian@intel.com" target=3D"_blank">alexandru.damian@intel.com</a>&=
gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">From: Alexandru DAMIAN &lt;<a href=3D"mailto=
:alexandru.damian@intel.com">alexandru.damian@intel.com</a>&gt;<br>
<br>
Config system changed from 7.24.0 and the noldlibpatch<br>
is no longer needed, thus deleted.<br>
<br>
Signed-off-by: Alexandru DAMIAN &lt;<a href=3D"mailto:alexandru.damian@inte=
l.com">alexandru.damian@intel.com</a>&gt;<br>
---<br>
=A0meta/recipes-support/curl/curl/noldlibpath.patch | =A0 76 --------------=
--------<br>
=A0meta/recipes-support/curl/<a href=3D"http://curl_7.24.0.bb" target=3D"_b=
lank">curl_7.24.0.bb</a> =A0 =A0 =A0 =A0 | =A0 55 ----------------<br>
=A0meta/recipes-support/curl/<a href=3D"http://curl_7.26.0.bb" target=3D"_b=
lank">curl_7.26.0.bb</a> =A0 =A0 =A0 =A0 | =A0 54 +++++++++++++++<br>
=A03 files changed, 54 insertions(+), 131 deletions(-)<br>
=A0delete mode 100644 meta/recipes-support/curl/curl/noldlibpath.patch<br>
=A0delete mode 100644 meta/recipes-support/curl/<a href=3D"http://curl_7.24=
.0.bb" target=3D"_blank">curl_7.24.0.bb</a><br>
=A0create mode 100644 meta/recipes-support/curl/<a href=3D"http://curl_7.26=
.0.bb" target=3D"_blank">curl_7.26.0.bb</a><br>
<br>
diff --git a/meta/recipes-support/curl/curl/noldlibpath.patch b/meta/recipe=
s-support/curl/curl/noldlibpath.patch<br>
deleted file mode 100644<br>
index f4c72a1..0000000<br>
--- a/meta/recipes-support/curl/curl/noldlibpath.patch<br>
+++ /dev/null<br>
@@ -1,76 +0,0 @@<br>
-Upstream-Status: Inappropriate [embedded specific]<br>
-<br>
-Manipulating LD_LIBRARY_PATH can totally break builds when cross compiling=
.<br>
-Since we never run compiled binaries for the target, we should *never* nee=
d<br>
-to change LD_LIBRARY_PATH.<br>
-<br>
-RP 9/6/2010<br>
-<br>
-Index: curl-7.20.0/<a href=3D"http://configure.ac" target=3D"_blank">confi=
gure.ac</a><br>
-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
---- curl-7.20.0.orig/<a href=3D"http://configure.ac" target=3D"_blank">con=
figure.ac</a> =A0 =A0 =A02010-06-09 11:06:30.000000000 +0100<br>
-+++ curl-7.20.0/<a href=3D"http://configure.ac" target=3D"_blank">configur=
e.ac</a> =A0 2010-06-09 11:04:25.000000000 +0100<br>
-@@ -1461,9 +1461,10 @@<br>
- =A0 =A0 =A0 =A0dnl linker doesn&#39;t search through, we need to add it t=
o LD_LIBRARY_PATH<br>
- =A0 =A0 =A0 =A0dnl to prevent further configure tests to fail due to this=
<br>
-<br>
-- =A0 =A0 =A0 LD_LIBRARY_PATH=3D&quot;$LD_LIBRARY_PATH:$LIB_OPENSSL&quot;<=
br>
-- =A0 =A0 =A0 export LD_LIBRARY_PATH<br>
-- =A0 =A0 =A0 AC_MSG_NOTICE([Added $LIB_OPENSSL to LD_LIBRARY_PATH])<br>
-+ =A0 =A0 =A0 #LD_LIBRARY_PATH=3D&quot;$LD_LIBRARY_PATH:$LIB_OPENSSL&quot;=
<br>
-+ =A0 =A0 =A0 #export LD_LIBRARY_PATH<br>
-+ =A0 =A0 =A0 #AC_MSG_NOTICE([Added $LIB_OPENSSL to LD_LIBRARY_PATH])<br>
-+ =A0 =A0 =A0 :<br>
- =A0 =A0 fi<br>
- =A0 fi<br>
-<br>
-@@ -1684,9 +1686,10 @@<br>
- =A0 =A0 =A0 =A0 =A0 dnl LD_LIBRARY_PATH to prevent further configure test=
s to fail<br>
- =A0 =A0 =A0 =A0 =A0 dnl due to this<br>
-<br>
-- =A0 =A0 =A0 =A0 =A0LD_LIBRARY_PATH=3D&quot;$LD_LIBRARY_PATH:$gtlslib&quo=
t;<br>
-- =A0 =A0 =A0 =A0 =A0export LD_LIBRARY_PATH<br>
-- =A0 =A0 =A0 =A0 =A0AC_MSG_NOTICE([Added $gtlslib to LD_LIBRARY_PATH])<br=
>
-+ =A0 =A0 =A0 =A0 =A0#LD_LIBRARY_PATH=3D&quot;$LD_LIBRARY_PATH:$gtlslib&qu=
ot;<br>
-+ =A0 =A0 =A0 =A0 =A0#export LD_LIBRARY_PATH<br>
-+ =A0 =A0 =A0 =A0 =A0#AC_MSG_NOTICE([Added $gtlslib to LD_LIBRARY_PATH])<b=
r>
-+ =A0 =A0 =A0 =A0 =A0:<br>
- =A0 =A0 =A0 =A0 fi<br>
- =A0 =A0 =A0 fi<br>
-<br>
-@@ -1696,6 +1699,8 @@<br>
-<br>
- fi dnl OPENSSL !=3D 1<br>
-<br>
-+AC_SUBST(GNUTLS_REQUIRED)<br>
-+<br>
- dnl ----------------------------------------------------<br>
- dnl NSS. Only check if GnuTLS and OpenSSL are not enabled<br>
- dnl ----------------------------------------------------<br>
-@@ -1781,9 +1786,10 @@<br>
- =A0 =A0 =A0 =A0 dnl LD_LIBRARY_PATH to prevent further configure tests to=
 fail<br>
- =A0 =A0 =A0 =A0 dnl due to this<br>
-<br>
-- =A0 =A0 =A0 =A0LD_LIBRARY_PATH=3D&quot;$LD_LIBRARY_PATH:$nssprefix/lib$l=
ibsuff&quot;<br>
-- =A0 =A0 =A0 =A0export LD_LIBRARY_PATH<br>
-- =A0 =A0 =A0 =A0AC_MSG_NOTICE([Added $nssprefix/lib$libsuff to LD_LIBRARY=
_PATH])<br>
-+ =A0 =A0 =A0 =A0#LD_LIBRARY_PATH=3D&quot;$LD_LIBRARY_PATH:$nssprefix/lib$=
libsuff&quot;<br>
-+ =A0 =A0 =A0 =A0#export LD_LIBRARY_PATH<br>
-+ =A0 =A0 =A0 =A0#AC_MSG_NOTICE([Added $nssprefix/lib$libsuff to LD_LIBRAR=
Y_PATH])<br>
-+ =A0 =A0 =A0 =A0:<br>
- =A0 =A0 =A0 fi<br>
-<br>
- =A0 =A0 fi<br>
-@@ -1881,9 +1887,9 @@<br>
- =A0 =A0 =A0 =A0dnl libssh2_version is a post 1.0 addition<br>
- =A0 =A0 =A0 =A0AC_CHECK_FUNCS( libssh2_version )<br>
-<br>
-- =A0 =A0 =A0 LD_LIBRARY_PATH=3D&quot;$LD_LIBRARY_PATH:$DIR_SSH2&quot;<br>
-- =A0 =A0 =A0 export LD_LIBRARY_PATH<br>
-- =A0 =A0 =A0 AC_MSG_NOTICE([Added $DIR_SSH2 to LD_LIBRARY_PATH])<br>
-+ =A0 =A0 =A0 #LD_LIBRARY_PATH=3D&quot;$LD_LIBRARY_PATH:$DIR_SSH2&quot;<br=
>
-+ =A0 =A0 =A0 #export LD_LIBRARY_PATH<br>
-+ =A0 =A0 =A0 #AC_MSG_NOTICE([Added $DIR_SSH2 to LD_LIBRARY_PATH])<br>
- =A0 =A0 fi<br>
- =A0 else<br>
- =A0 =A0 dnl no libssh2, revert back to clean variables<br>
diff --git a/meta/recipes-support/curl/<a href=3D"http://curl_7.24.0.bb" ta=
rget=3D"_blank">curl_7.24.0.bb</a> b/meta/recipes-support/curl/<a href=3D"h=
ttp://curl_7.24.0.bb" target=3D"_blank">curl_7.24.0.bb</a><br>
deleted file mode 100644<br>
index 832254f..0000000<br>
--- a/meta/recipes-support/curl/<a href=3D"http://curl_7.24.0.bb" target=3D=
"_blank">curl_7.24.0.bb</a><br>
+++ /dev/null<br>
@@ -1,55 +0,0 @@<br>
-DESCRIPTION =3D &quot;Command line tool and library for client-side URL tr=
ansfers.&quot;<br>
-HOMEPAGE =3D &quot;<a href=3D"http://curl.haxx.se/" target=3D"_blank">http=
://curl.haxx.se/</a>&quot;<br>
-BUGTRACKER =3D &quot;<a href=3D"http://curl.haxx.se/mail/list.cgi?list=3Dc=
url-tracker" target=3D"_blank">http://curl.haxx.se/mail/list.cgi?list=3Dcur=
l-tracker</a>&quot;<br>
-SECTION =3D &quot;console/network&quot;<br>
-LICENSE =3D &quot;MIT&quot;<br>
-LIC_FILES_CHKSUM =3D &quot;file://COPYING;beginline=3D7;md5=3D3a34942f4ae3=
fbf1a303160714e664ac&quot;<br>
-<br>
-DEPENDS =3D &quot;zlib gnutls&quot;<br>
-DEPENDS_virtclass-native =3D &quot;zlib-native openssl-native&quot;<br>
-DEPENDS_virtclass-nativesdk =3D &quot;zlib-nativesdk&quot;<br>
-PR =3D &quot;r3&quot;<br>
-<br>
-SRC_URI =3D &quot;<a href=3D"http://curl.haxx.se/download/curl-$%7BPV%7D.t=
ar.bz2" target=3D"_blank">http://curl.haxx.se/download/curl-${PV}.tar.bz2</=
a> \<br>
- =A0 =A0 =A0 =A0 =A0 file://noldlibpath.patch \<br>
- =A0 =A0 =A0 =A0 =A0 file://pkgconfig_fix.patch&quot;<br>
-<br>
-SRC_URI[md5sum] =3D &quot;f912221d75eb8d8fe08900eaf011b023&quot;<br>
-SRC_URI[sha256sum] =3D &quot;ebdb111088ff8b0e05b1d1b075e9f1608285e8105cc51=
e21caacf33d01812c16&quot;<br>
-<br>
-inherit autotools pkgconfig binconfig<br>
-<br>
-EXTRA_OECONF =3D &quot;--with-zlib=3D${STAGING_LIBDIR}/../ \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0--without-libssh2 \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 --with-random=3D/dev/urandom \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 --without-libidn \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 --enable-crypto-auth \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0${CURLGNUTLS} \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 &quot;<br>
-<br>
-CURLGNUTLS =3D &quot; --with-gnutls=3D${STAGING_LIBDIR}/../ --without-ssl&=
quot;<br>
-CURLGNUTLS_virtclass-native =3D &quot;--without-gnutls --with-ssl&quot;<br=
>
-CURLGNUTLS_virtclass-nativesdk =3D &quot;--without-gnutls --without-ssl&qu=
ot;<br>
-<br>
-do_configure_prepend() {<br>
- =A0 =A0 =A0 sed -i s:OPT_GNUTLS/bin:OPT_GNUTLS:g <a href=3D"http://config=
ure.ac" target=3D"_blank">configure.ac</a><br>
-}<br>
-<br>
-PACKAGES =3D+ &quot;${PN}-certs libcurl libcurl-dev libcurl-staticdev libc=
url-doc&quot;<br>
-<br>
-FILES_${PN}-certs =3D &quot;${datadir}/curl/curl-*&quot;<br>
-PACKAGE_ARCH_${PN}-certs =3D &quot;all&quot;<br>
-<br>
-FILES_lib${BPN} =3D &quot;${libdir}/lib*.so.*&quot;<br>
-RRECOMMENDS_lib${BPN} +=3D &quot;${PN}-certs&quot;<br>
-FILES_lib${BPN}-dev =3D &quot;${includedir} \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0${libdir}/lib*.so \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0${libdir}/lib*.la \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0${libdir}/pkgconfig \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0${datadir}/aclocal \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0${bindir}/*-config&quot;<br>
-FILES_lib${BPN}-staticdev =3D &quot;${libdir}/lib*.a&quot;<br>
-FILES_lib${BPN}-doc =3D &quot;${mandir}/man3 \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0${mandir}/man1/curl-config.1&q=
uot;<br>
-<br>
-BBCLASSEXTEND =3D &quot;native nativesdk&quot;<br>
diff --git a/meta/recipes-support/curl/<a href=3D"http://curl_7.26.0.bb" ta=
rget=3D"_blank">curl_7.26.0.bb</a> b/meta/recipes-support/curl/<a href=3D"h=
ttp://curl_7.26.0.bb" target=3D"_blank">curl_7.26.0.bb</a><br>
new file mode 100644<br>
index 0000000..f04b400<br>
--- /dev/null<br>
+++ b/meta/recipes-support/curl/<a href=3D"http://curl_7.26.0.bb" target=3D=
"_blank">curl_7.26.0.bb</a><br>
@@ -0,0 +1,54 @@<br>
+DESCRIPTION =3D &quot;Command line tool and library for client-side URL tr=
ansfers.&quot;<br>
+HOMEPAGE =3D &quot;<a href=3D"http://curl.haxx.se/" target=3D"_blank">http=
://curl.haxx.se/</a>&quot;<br>
+BUGTRACKER =3D &quot;<a href=3D"http://curl.haxx.se/mail/list.cgi?list=3Dc=
url-tracker" target=3D"_blank">http://curl.haxx.se/mail/list.cgi?list=3Dcur=
l-tracker</a>&quot;<br>
+SECTION =3D &quot;console/network&quot;<br>
+LICENSE =3D &quot;MIT&quot;<br>
+LIC_FILES_CHKSUM =3D &quot;file://COPYING;beginline=3D7;md5=3D3a34942f4ae3=
fbf1a303160714e664ac&quot;<br>
+<br>
+DEPENDS =3D &quot;zlib gnutls&quot;<br>
+DEPENDS_virtclass-native =3D &quot;zlib-native openssl-native&quot;<br>
+DEPENDS_virtclass-nativesdk =3D &quot;zlib-nativesdk&quot;<br>
+PR =3D &quot;r0&quot;<br>
+<br>
+SRC_URI =3D &quot;<a href=3D"http://curl.haxx.se/download/curl-$%7BPV%7D.t=
ar.bz2" target=3D"_blank">http://curl.haxx.se/download/curl-${PV}.tar.bz2</=
a> \<br>
+ =A0 =A0 =A0 =A0 =A0 file://pkgconfig_fix.patch&quot;<br>
+<br>
+SRC_URI[md5sum] =3D &quot;bfa80f01b3d300359cfb4d409b6136a3&quot;<br>
+SRC_URI[sha256sum] =3D &quot;fced262f16eb6bfcdcea15e04a7905ffcb5ff04b14a19=
ca35b9df86d6720d26a&quot;<br>
+<br>
+inherit autotools pkgconfig binconfig<br>
+<br>
+EXTRA_OECONF =3D &quot;--with-zlib=3D${STAGING_LIBDIR}/../ \<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0--without-libssh2 \<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 --with-random=3D/dev/urandom \<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 --without-libidn \<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 --enable-crypto-auth \<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0${CURLGNUTLS} \<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 &quot;<br>
+<br>
+CURLGNUTLS =3D &quot; --with-gnutls=3D${STAGING_LIBDIR}/../ --without-ssl&=
quot;<br>
+CURLGNUTLS_virtclass-native =3D &quot;--without-gnutls --with-ssl&quot;<br=
>
+CURLGNUTLS_virtclass-nativesdk =3D &quot;--without-gnutls --without-ssl&qu=
ot;<br>
+<br>
+do_configure_prepend() {<br>
+ =A0 =A0 =A0 sed -i s:OPT_GNUTLS/bin:OPT_GNUTLS:g <a href=3D"http://config=
ure.ac" target=3D"_blank">configure.ac</a><br>
+}<br>
+<br>
+PACKAGES =3D+ &quot;${PN}-certs libcurl libcurl-dev libcurl-staticdev libc=
url-doc&quot;<br>
+<br>
+FILES_${PN}-certs =3D &quot;${datadir}/curl/curl-*&quot;<br>
+PACKAGE_ARCH_${PN}-certs =3D &quot;all&quot;<br>
+<br>
+FILES_lib${BPN} =3D &quot;${libdir}/lib*.so.*&quot;<br>
+RRECOMMENDS_lib${BPN} +=3D &quot;${PN}-certs&quot;<br>
+FILES_lib${BPN}-dev =3D &quot;${includedir} \<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0${libdir}/lib*.so \<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0${libdir}/lib*.la \<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0${libdir}/pkgconfig \<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0${datadir}/aclocal \<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0${bindir}/*-config&quot;<br>
+FILES_lib${BPN}-staticdev =3D &quot;${libdir}/lib*.a&quot;<br>
+FILES_lib${BPN}-doc =3D &quot;${mandir}/man3 \<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0${mandir}/man1/curl-config.1&q=
uot;<br>
+<br>
+BBCLASSEXTEND =3D &quot;native nativesdk&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.7.9.5<br>
<br>
</font></span></blockquote></div><br>

--bcaec54d4dd6a07b3504c3fc0651--
