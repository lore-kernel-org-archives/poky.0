Return-Path: <alexandru.damian@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8595E006B1
	for <poky@yoctoproject.org>; Wed,  4 Jul 2012 00:32:26 -0700 (PDT)
Received: from mail-lb0-f180.google.com ([209.85.217.180])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 04 Jul 2012 00:32:26 -0700
Received: by mail-lb0-f180.google.com with SMTP id gj3so8862001lbb.25
	for <poky@yoctoproject.org>; Wed, 04 Jul 2012 00:32:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=Umclor9PeSuzIj/q3UhyJ/0JKCf0oArNA4tFv73d1lo=;
	b=BoX+tmMNrNs0jJXd9zeSIsaIt+mJz1nlBOWNuGcKl0nY22tS6c4rPjRPsDKKKX7UeG
	IeItt6l29Uo8DMpscJlx7o2iPH2vIzvgLf3J4gi9byRndLubjeTfqQIQIrrxc4BRfJRI
	bil1ncF4/2rWk0jHgKTMz0Y4uDEFPuUGPueOMwQoo8GXz519Mk3banIE9xlaLZqQXJCV
	BOEfkzXHFvJ94XcDSD4SMEbq97PQTOj0A6C+8b7E5Qwj84ipnIZbrGtZ/9j0g7KpdAyj
	UjRbHbdcB0P+JnLk1UlUlMahKflW+L1FOS/JpFwJe4RFLAaqKwEW5yqpsYf+awbVlw4n
	OjlA==
MIME-Version: 1.0
Received: by 10.112.25.100 with SMTP id b4mr9438816lbg.55.1341387145709; Wed,
	04 Jul 2012 00:32:25 -0700 (PDT)
Received: by 10.112.38.132 with HTTP; Wed, 4 Jul 2012 00:32:25 -0700 (PDT)
In-Reply-To: <1341387022-24986-1-git-send-email-alexandru.damian@intel.com>
References: <1341387022-24986-1-git-send-email-alexandru.damian@intel.com>
Date: Wed, 4 Jul 2012 10:32:25 +0300
Message-ID: <CAJ2CSBuGX=-vgA6zqQgPb-B2rqnrjrfy6yBg-0T22Pvko2E3Vw@mail.gmail.com>
From: "Damian, Alexandru" <alexandru.damian@intel.com>
To: poky@yoctoproject.org
X-Gm-Message-State: ALoCoQl1pnzkhKF6bC6YSwmL5yeT+mOYW9s83kB5YPiBlx6gBeEiMf2ZP5j8RSUOdFMmCfxhiiul
Subject: Re: [PATCH 1/2] liburcu: upgrade to 0.7.3
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
X-List-Received-Date: Wed, 04 Jul 2012 07:32:27 -0000
Content-Type: multipart/alternative; boundary=bcaec552428a5388fe04c3fc08da

--bcaec552428a5388fe04c3fc08da
Content-Type: text/plain; charset=ISO-8859-1

Disregard, wrong mail list.

Alex

On Wed, Jul 4, 2012 at 10:30 AM, <alexandru.damian@intel.com> wrote:

> From: Alexandru DAMIAN <alexandru.damian@intel.com>
>
> The license changed with the addition of GPLv3 for one file.
>
> * GPLv3 (or later)
>
> The following build-related macro is under GPLv3 (or later):
>
> m4/ax_tls.m4
>
> Signed-off-by: Alexandru DAMIAN <alexandru.damian@intel.com>
> ---
>  meta/recipes-support/liburcu/liburcu_0.6.7.bb |   24
> ------------------------
>  meta/recipes-support/liburcu/liburcu_0.7.3.bb |   24
> ++++++++++++++++++++++++
>  2 files changed, 24 insertions(+), 24 deletions(-)
>  delete mode 100644 meta/recipes-support/liburcu/liburcu_0.6.7.bb
>  create mode 100644 meta/recipes-support/liburcu/liburcu_0.7.3.bb
>
> diff --git a/meta/recipes-support/liburcu/liburcu_0.6.7.bbb/meta/recipes-support/liburcu/
> liburcu_0.6.7.bb
> deleted file mode 100644
> index be73856..0000000
> --- a/meta/recipes-support/liburcu/liburcu_0.6.7.bb
> +++ /dev/null
> @@ -1,24 +0,0 @@
> -DESCRIPTION = "The userspace read-copy update library by Mathieu
> Desnoyers"
> -HOMEPAGE = "http://lttng.org/urcu"
> -BUGTRACKER = "http://lttng.org/project/issues"
> -
> -LICENSE = "LGPLv2.1+ & MIT-style"
> -LIC_FILES_CHKSUM = "file://LICENSE;md5=b472dc110d38774921e1d5ccb0065fff \
> -
>  file://urcu.h;beginline=4;endline=32;md5=4de0d68d3a997643715036d2209ae1d9 \
> -
>  file://urcu/uatomic/x86.h;beginline=4;endline=21;md5=220552f72c55b102f2ee35929734ef42"
> -
> -PR = "r0"
> -
> -SRC_URI = "http://lttng.org/files/urcu/userspace-rcu-${PV}.tar.bz2"
> -
> -SRC_URI[md5sum] = "2705dadd65beda8e8960472c082e44b3"
> -SRC_URI[sha256sum] =
> "b0b09aead6fbcb4d5efb4270e12f84ffd115b99b55b2c745e052b2d87a47e75f"
> -
> -S = "${WORKDIR}/userspace-rcu-${PV}"
> -CFLAGS_append_libc-uclibc = " -D_GNU_SOURCE"
> -inherit autotools
> -
> -# liburcu, which is only used by lttng-ust, may not build on other
> -# platforms, like MIPS.
> -COMPATIBLE_HOST = '(x86_64.*|i.86.*|arm.*|powerpc.*)-linux'
> -
> diff --git a/meta/recipes-support/liburcu/liburcu_0.7.3.bbb/meta/recipes-support/liburcu/
> liburcu_0.7.3.bb
> new file mode 100644
> index 0000000..45c51bc
> --- /dev/null
> +++ b/meta/recipes-support/liburcu/liburcu_0.7.3.bb
> @@ -0,0 +1,24 @@
> +DESCRIPTION = "The userspace read-copy update library by Mathieu
> Desnoyers"
> +HOMEPAGE = "http://lttng.org/urcu"
> +BUGTRACKER = "http://lttng.org/project/issues"
> +
> +LICENSE = "LGPLv2.1+ & MIT-style & GPLv3"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=95dfea59eeaa41a4057faa07a58f5f89 \
> +
>  file://urcu.h;beginline=4;endline=32;md5=4de0d68d3a997643715036d2209ae1d9 \
> +
>  file://urcu/uatomic/x86.h;beginline=4;endline=21;md5=220552f72c55b102f2ee35929734ef42"
> +
> +PR = "r0"
> +
> +SRC_URI = "http://lttng.org/files/urcu/userspace-rcu-${PV}.tar.bz2"
> +
> +SRC_URI[md5sum] = "c40b726f13bff80982c1ffa1bc2db31d"
> +SRC_URI[sha256sum] =
> "63f540a5d3c947fa3739711099fb87a66036d3c9560f26da763e500da296a1af"
> +
> +S = "${WORKDIR}/userspace-rcu-${PV}"
> +CFLAGS_append_libc-uclibc = " -D_GNU_SOURCE"
> +inherit autotools
> +
> +# liburcu, which is only used by lttng-ust, may not build on other
> +# platforms, like MIPS.
> +COMPATIBLE_HOST = '(x86_64.*|i.86.*|arm.*|powerpc.*)-linux'
> +
> --
> 1.7.9.5
>
>

--bcaec552428a5388fe04c3fc08da
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
The license changed with the addition of GPLv3 for one file.<br>
<br>
* GPLv3 (or later)<br>
<br>
The following build-related macro is under GPLv3 (or later):<br>
<br>
m4/ax_tls.m4<br>
<br>
Signed-off-by: Alexandru DAMIAN &lt;<a href=3D"mailto:alexandru.damian@inte=
l.com">alexandru.damian@intel.com</a>&gt;<br>
---<br>
=A0meta/recipes-support/liburcu/<a href=3D"http://liburcu_0.6.7.bb" target=
=3D"_blank">liburcu_0.6.7.bb</a> | =A0 24 ------------------------<br>
=A0meta/recipes-support/liburcu/<a href=3D"http://liburcu_0.7.3.bb" target=
=3D"_blank">liburcu_0.7.3.bb</a> | =A0 24 ++++++++++++++++++++++++<br>
=A02 files changed, 24 insertions(+), 24 deletions(-)<br>
=A0delete mode 100644 meta/recipes-support/liburcu/<a href=3D"http://liburc=
u_0.6.7.bb" target=3D"_blank">liburcu_0.6.7.bb</a><br>
=A0create mode 100644 meta/recipes-support/liburcu/<a href=3D"http://liburc=
u_0.7.3.bb" target=3D"_blank">liburcu_0.7.3.bb</a><br>
<br>
diff --git a/meta/recipes-support/liburcu/<a href=3D"http://liburcu_0.6.7.b=
b" target=3D"_blank">liburcu_0.6.7.bb</a> b/meta/recipes-support/liburcu/<a=
 href=3D"http://liburcu_0.6.7.bb" target=3D"_blank">liburcu_0.6.7.bb</a><br=
>
deleted file mode 100644<br>
index be73856..0000000<br>
--- a/meta/recipes-support/liburcu/<a href=3D"http://liburcu_0.6.7.bb" targ=
et=3D"_blank">liburcu_0.6.7.bb</a><br>
+++ /dev/null<br>
@@ -1,24 +0,0 @@<br>
-DESCRIPTION =3D &quot;The userspace read-copy update library by Mathieu De=
snoyers&quot;<br>
-HOMEPAGE =3D &quot;<a href=3D"http://lttng.org/urcu" target=3D"_blank">htt=
p://lttng.org/urcu</a>&quot;<br>
-BUGTRACKER =3D &quot;<a href=3D"http://lttng.org/project/issues" target=3D=
"_blank">http://lttng.org/project/issues</a>&quot;<br>
-<br>
-LICENSE =3D &quot;LGPLv2.1+ &amp; MIT-style&quot;<br>
-LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3Db472dc110d38774921e1d5ccb0=
065fff \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0file://urcu.h;beginline=3D4;endlin=
e=3D32;md5=3D4de0d68d3a997643715036d2209ae1d9 \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0file://urcu/uatomic/x86.h;beginlin=
e=3D4;endline=3D21;md5=3D220552f72c55b102f2ee35929734ef42&quot;<br>
-<br>
-PR =3D &quot;r0&quot;<br>
-<br>
-SRC_URI =3D &quot;<a href=3D"http://lttng.org/files/urcu/userspace-rcu-$%7=
BPV%7D.tar.bz2" target=3D"_blank">http://lttng.org/files/urcu/userspace-rcu=
-${PV}.tar.bz2</a>&quot;<br>
-<br>
-SRC_URI[md5sum] =3D &quot;2705dadd65beda8e8960472c082e44b3&quot;<br>
-SRC_URI[sha256sum] =3D &quot;b0b09aead6fbcb4d5efb4270e12f84ffd115b99b55b2c=
745e052b2d87a47e75f&quot;<br>
-<br>
-S =3D &quot;${WORKDIR}/userspace-rcu-${PV}&quot;<br>
-CFLAGS_append_libc-uclibc =3D &quot; -D_GNU_SOURCE&quot;<br>
-inherit autotools<br>
-<br>
-# liburcu, which is only used by lttng-ust, may not build on other<br>
-# platforms, like MIPS.<br>
-COMPATIBLE_HOST =3D &#39;(x86_64.*|i.86.*|arm.*|powerpc.*)-linux&#39;<br>
-<br>
diff --git a/meta/recipes-support/liburcu/<a href=3D"http://liburcu_0.7.3.b=
b" target=3D"_blank">liburcu_0.7.3.bb</a> b/meta/recipes-support/liburcu/<a=
 href=3D"http://liburcu_0.7.3.bb" target=3D"_blank">liburcu_0.7.3.bb</a><br=
>
new file mode 100644<br>
index 0000000..45c51bc<br>
--- /dev/null<br>
+++ b/meta/recipes-support/liburcu/<a href=3D"http://liburcu_0.7.3.bb" targ=
et=3D"_blank">liburcu_0.7.3.bb</a><br>
@@ -0,0 +1,24 @@<br>
+DESCRIPTION =3D &quot;The userspace read-copy update library by Mathieu De=
snoyers&quot;<br>
+HOMEPAGE =3D &quot;<a href=3D"http://lttng.org/urcu" target=3D"_blank">htt=
p://lttng.org/urcu</a>&quot;<br>
+BUGTRACKER =3D &quot;<a href=3D"http://lttng.org/project/issues" target=3D=
"_blank">http://lttng.org/project/issues</a>&quot;<br>
+<br>
+LICENSE =3D &quot;LGPLv2.1+ &amp; MIT-style &amp; GPLv3&quot;<br>
+LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D95dfea59eeaa41a4057faa07a5=
8f5f89 \<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0file://urcu.h;beginline=3D4;endlin=
e=3D32;md5=3D4de0d68d3a997643715036d2209ae1d9 \<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0file://urcu/uatomic/x86.h;beginlin=
e=3D4;endline=3D21;md5=3D220552f72c55b102f2ee35929734ef42&quot;<br>
+<br>
+PR =3D &quot;r0&quot;<br>
+<br>
+SRC_URI =3D &quot;<a href=3D"http://lttng.org/files/urcu/userspace-rcu-$%7=
BPV%7D.tar.bz2" target=3D"_blank">http://lttng.org/files/urcu/userspace-rcu=
-${PV}.tar.bz2</a>&quot;<br>
+<br>
+SRC_URI[md5sum] =3D &quot;c40b726f13bff80982c1ffa1bc2db31d&quot;<br>
+SRC_URI[sha256sum] =3D &quot;63f540a5d3c947fa3739711099fb87a66036d3c9560f2=
6da763e500da296a1af&quot;<br>
+<br>
+S =3D &quot;${WORKDIR}/userspace-rcu-${PV}&quot;<br>
+CFLAGS_append_libc-uclibc =3D &quot; -D_GNU_SOURCE&quot;<br>
+inherit autotools<br>
+<br>
+# liburcu, which is only used by lttng-ust, may not build on other<br>
+# platforms, like MIPS.<br>
+COMPATIBLE_HOST =3D &#39;(x86_64.*|i.86.*|arm.*|powerpc.*)-linux&#39;<br>
+<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.7.9.5<br>
<br>
</font></span></blockquote></div><br>

--bcaec552428a5388fe04c3fc08da--
