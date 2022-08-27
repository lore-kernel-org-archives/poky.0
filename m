Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web11.51762.1661626299303120250
 for <poky@lists.yoctoproject.org>;
 Sat, 27 Aug 2022 11:51:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=B0EkVb2l;
 spf=pass (domain: gmail.com, ip: 209.85.128.52, mailfrom: usva.techdev@gmail.com)
Received: by mail-wm1-f52.google.com with SMTP id h1so2381617wmd.3
        for <poky@lists.yoctoproject.org>; Sat, 27 Aug 2022 11:51:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc;
        bh=tAs5KK6fTUfAo73Ik8/VQ9V5LHzxeVnpcqUDWYv+riY=;
        b=B0EkVb2lU36T1NJ442xR7UEdnFqDxTVmQevhGdflMwKKiOgOieaJWccWXxNvLEjrsq
         8qcexV+Epb9aBM+Pj9wr3UGKR90SdmkJkxI6LMOAAmGnXhq6g7o4zH0y2ZyUOsknm9e2
         vMX65/5BWKJnwrlrIdLKTwAYIvj2uLS0KhsgEiWYhba5286QMy1B2Utyqe+dn+FzozHl
         TF8xi3FOnVdauL3YPWkDInfHwR8QvSlgTO8sW/a0/22p3aJs20zUNejtEWVtNTqUPv6Y
         haLAiz3GpgN4ivsFpZXSRRFZbN78pGDnhVu+/EfoLj4IGyW+mXU/vE4F9wvArp7bLc9y
         grbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc;
        bh=tAs5KK6fTUfAo73Ik8/VQ9V5LHzxeVnpcqUDWYv+riY=;
        b=2lszjOCZ6OKiNYB8yGKrO2iOvhlvz9KF4Kksu0GukFzsfJvbxVhE7GR/7N1noSEOS7
         z8iW3POw3BT8xTgAShfUxiMekM50DKn+cAuOWIljlM8WnWNzt1CtLkYCaYPCU++Q94vt
         NJTKLsVmcLLBnLfKNPIlb6EM5oVYwXBqIDBMslATs/daKWZwgdMPeN1Lv8XLsnF/FgE5
         Yl6uj8ltdwiJM5a9Lx3PJwAmM47SqiW7iqc1QZTlgBxOaLb1o9C6auMr/2UhcKkOz5B+
         EmfSRPCCX0wOw4y0QWE69rklVC+AbCD/5iYxZenb3ZLIbNoUZf6Q5TByQpW93t8E1z2S
         m81g==
X-Gm-Message-State: ACgBeo3+1Xa5+m3Li2ZjfOeL11CUHknRdYjHFgtYPu/UO6tTa0E5C7lt
	JscxEQhv+TbA9GjXYDO8BaOKIg4MY7tM1xmJsFtoi5SX40qjNQ==
X-Google-Smtp-Source: AA6agR5Dh8+rGmfeLa8lXtXsCSpH3gaQv0qbMkQvn6zzXws4CiinPRq1Hpoq3SpjXVyaL8Pz3g0Hiklp3qaO2QtbE8I=
X-Received: by 2002:a05:600c:3d91:b0:3a5:4132:b6a0 with SMTP id
 bi17-20020a05600c3d9100b003a54132b6a0mr2707323wmb.126.1661626297122; Sat, 27
 Aug 2022 11:51:37 -0700 (PDT)
MIME-Version: 1.0
From: "Ulises Vega" <usva.techdev@gmail.com>
Date: Sat, 27 Aug 2022 13:51:25 -0500
Message-ID: <CAFUa6hOxXDqsu9y0qMMYCCnC+p7q1sZHNF2U2x26wwSNstEynQ@mail.gmail.com>
Subject: Yocto recipe for mozjs 68.2
To: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000030847505e73d8567"

--00000000000030847505e73d8567
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

I'm trying to create yocto recipe for mozjs 68.2 from this link:
https://ftp.mozilla.org/pub/firefox/releases/68.2.0esr/source/

it is marking me this error:

| Exception: Failed to create virtualenv:
/mypath/qemu-x86/build/tmp/work/core2-64-poky-linux/mozjs/68.2-r0/firefox-68.2.0/js/src/_build/_virtualenvs/init
| WARNING:
/mypath/qemu-x86/build/tmp/work/core2-64-poky-linux/mozjs/68.2-r0/temp/run.do_configure.5061:1
exit 1 from '../configure --disable-jemalloc --enable-posix-nspr-emulation
--enable-unaligned-private-values --with-system-zlib --with-intl-api
--enable-debug --enable-optimize --x-includes=no --x-libraries=no'
| ERROR: Function failed: do_configure (log file is located at
/mypath/qemu-x86/build/tmp/work/core2-64-poky-linux/mozjs/68.2-r0/temp/log.do_configure.5061)
ERROR: Task (/mypath/meta-mylayer/recipes-myrecipes/mozjs/mozjs_68.2.bb:do_configure)
failed with exit code '1'

I base my recipe on:
http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-extended/mozjs/mozjs_52.9.1.bb?h=thud

here is what I have so far:

SUMMARY = "SpiderMonkey is Mozilla's JavaScript engine written in C/C++"
HOMEPAGE = "
https://developer.mozilla.org/en-US/docs/Mozilla/Projects/SpiderMonkey"
LICENSE = "CLOSED"
#LIC_FILES_CHKSUM = "file://LICENSE;md5=815ca599c9df247a0c7f619bab123dad"

SRC_URI = "
https://ftp.mozilla.org/pub/firefox/releases/68.2.0esr/source/firefox-68.2.0esr.source.tar.xz
"

SRC_URI[md5sum] = "ff667d8504e9f6ab215e73ba66d11722"
SRC_URI[sha256sum] =
"85f1c2eaf68ebedcbc0b78a342f6d16ef0865dedd426a1bba94b75c85f716f38"

inherit autotools pkgconfig perlnative pythonnative

inherit distro_features_check
CONFLICT_DISTRO_FEATURES_mipsarchn32 = "ld-is-gold"

DEPENDS += "nspr zlib"

# Disable null pointer optimization in gcc >= 6
# https://bugzilla.redhat.com/show_bug.cgi?id=1328045
CFLAGS += "-fno-tree-vrp -fno-strict-aliasing
-fno-delete-null-pointer-checks"
CXXFLAGS += "-fno-tree-vrp -fno-strict-aliasing
-fno-delete-null-pointer-checks"

# nspr's package-config is ignored so set libs manually
EXTRA_OECONF = " --disable-jemalloc --enable-posix-nspr-emulation
--enable-unaligned-private-values --with-system-zlib     --with-intl-api
--enable-debug --enable-optimize"

PACKAGECONFIG ??= "${@bb.utils.filter('DISTRO_FEATURES', 'x11', d)}"
PACKAGECONFIG[x11] = "--x-includes=${STAGING_INCDIR}
--x-libraries=${STAGING_LIBDIR},--x-includes=no
--x-libraries=no,virtual/libx11"

EXTRA_OEMAKE_task-compile += "BUILD_OPT=1 OS_LDFLAGS='-Wl,-latomic
${LDFLAGS}'"
EXTRA_OEMAKE_task-install += "STATIC_LIBRARY_NAME=js_static"

export HOST_CC = "${BUILD_CC}"
export HOST_CXX = "${BUILD_CXX}"
export HOST_CFLAGS = "${BUILD_CFLAGS}"
export HOST_CPPFLAGS = "${BUILD_CPPFLAGS}"
export HOST_CXXFLAGS = "${BUILD_CXXFLAGS}"

do_configure() {
    export SHELL="/bin/sh"
    export TMP="${B}"
    echo ${WORKDIR}
    mkdir -p ${WORKDIR}/firefox-68.2.0/js/src/_build
    cd ${WORKDIR}/firefox-68.2.0/js/src/_build
    pwd
    ../configure ${EXTRA_OECONF}
}

do_compile_prepend() {
    export SHELL="/bin/sh"
    export S
    export PYTHONPATH
    cd ${S}

    for sub_dir in python testing/mozbase; do
        for module_dir in `ls $sub_dir -1`;do
            [ $module_dir = "virtualenv" ] && continue
            if [ -d "${S}/$sub_dir/$module_dir" ];then
                PYTHONPATH="$PYTHONPATH:${S}/$sub_dir/$module_dir"
            fi
        done
    done
    PYTHONPATH="$PYTHONPATH:${S}/config:${S}/build"
    cd -
}

do_install_prepend() {
    export SHELL="/bin/sh"
    export S
    export PYTHONPATH
    cd ${S}
    for sub_dir in python testing/mozbase; do
        for module_dir in `ls $sub_dir -1`;do
            [ $module_dir = "virtualenv" ] && continue
            if [ -d "${S}/$sub_dir/$module_dir" ];then
                PYTHONPATH="$PYTHONPATH:${S}/$sub_dir/$module_dir"
            fi
        done
    done
    PYTHONPATH="$PYTHONPATH:${S}/config:${S}/build"
    cd -
}

PACKAGES =+ "lib${BPN}"
FILES_lib${BPN} += "${libdir}/lib*.so"
FILES_${PN}-dev += "${bindir}/js68-config"

# Fails to build with thumb-1 (qemuarm)
#| {standard input}: Assembler messages:
#| {standard input}:2172: Error: shifts in CMP/MOV instructions are only
supported in unified syntax -- `mov r2,r1,LSR#20'
#| {standard input}:2173: Error: unshifted register required -- `bic
r2,r2,#(1<<11)'
#| {standard input}:2174: Error: unshifted register required -- `orr
r1,r1,#(1<<20)'
#| {standard input}:2176: Error: instruction not supported in Thumb16 mode
-- `subs r2,r2,#0x300'
#| {standard input}:2178: Error: instruction not supported in Thumb16 mode
-- `subs r5,r2,#52'
#ARM_INSTRUCTION_SET_armv5 = "arm"
#ARM_INSTRUCTION_SET_armv4 = "arm"

DISABLE_STATIC = ""

Thanks


-- 
Ulises S. Vega A.

--00000000000030847505e73d8567
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello everyone,<div><br></div><div>I&#39;m trying to creat=
e yocto recipe for mozjs 68.2 from this link:=C2=A0<a href=3D"https://ftp.m=
ozilla.org/pub/firefox/releases/68.2.0esr/source/">https://ftp.mozilla.org/=
pub/firefox/releases/68.2.0esr/source/</a></div><div><br></div><div>it is m=
arking me this error:</div><div><br></div><div>| Exception: Failed to creat=
e virtualenv: /mypath/qemu-x86/build/tmp/work/core2-64-poky-linux/mozjs/68.=
2-r0/firefox-68.2.0/js/src/_build/_virtualenvs/init<br>| WARNING: /mypath/q=
emu-x86/build/tmp/work/core2-64-poky-linux/mozjs/68.2-r0/temp/run.do_config=
ure.5061:1 exit 1 from &#39;../configure --disable-jemalloc --enable-posix-=
nspr-emulation --enable-unaligned-private-values --with-system-zlib --with-=
intl-api --enable-debug --enable-optimize --x-includes=3Dno --x-libraries=
=3Dno&#39;<br>| ERROR: Function failed: do_configure (log file is located a=
t /mypath/qemu-x86/build/tmp/work/core2-64-poky-linux/mozjs/68.2-r0/temp/lo=
g.do_configure.5061)<br>ERROR: Task (/mypath/meta-mylayer/recipes-myrecipes=
/mozjs/mozjs_68.2.bb:do_configure) failed with exit code &#39;1&#39;<br></d=
iv><div><br></div><div>I base my recipe on:=C2=A0</div><div><a href=3D"http=
://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-extended/mo=
zjs/mozjs_52.9.1.bb?h=3Dthud">http://cgit.openembedded.org/meta-openembedde=
d/tree/meta-oe/recipes-extended/mozjs/mozjs_52.9.1.bb?h=3Dthud</a><br></div=
><div><br></div><div>here is what I have so far:</div><div><br></div><div>S=
UMMARY =3D &quot;SpiderMonkey is Mozilla&#39;s JavaScript engine written in=
 C/C++&quot;<br>HOMEPAGE =3D &quot;<a href=3D"https://developer.mozilla.org=
/en-US/docs/Mozilla/Projects/SpiderMonkey">https://developer.mozilla.org/en=
-US/docs/Mozilla/Projects/SpiderMonkey</a>&quot;<br>LICENSE =3D &quot;CLOSE=
D&quot;<br>#LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D815ca599c9df247=
a0c7f619bab123dad&quot;<br><br>SRC_URI =3D &quot;<a href=3D"https://ftp.moz=
illa.org/pub/firefox/releases/68.2.0esr/source/firefox-68.2.0esr.source.tar=
.xz">https://ftp.mozilla.org/pub/firefox/releases/68.2.0esr/source/firefox-=
68.2.0esr.source.tar.xz</a>&quot;<br><br>SRC_URI[md5sum] =3D &quot;ff667d85=
04e9f6ab215e73ba66d11722&quot;<br>SRC_URI[sha256sum] =3D &quot;85f1c2eaf68e=
bedcbc0b78a342f6d16ef0865dedd426a1bba94b75c85f716f38&quot;<br><br>inherit a=
utotools pkgconfig perlnative pythonnative<br><br>inherit distro_features_c=
heck<br>CONFLICT_DISTRO_FEATURES_mipsarchn32 =3D &quot;ld-is-gold&quot;<br>=
<br>DEPENDS +=3D &quot;nspr zlib&quot;<br><br># Disable null pointer optimi=
zation in gcc &gt;=3D 6<br># <a href=3D"https://bugzilla.redhat.com/show_bu=
g.cgi?id=3D1328045">https://bugzilla.redhat.com/show_bug.cgi?id=3D1328045</=
a><br>CFLAGS +=3D &quot;-fno-tree-vrp -fno-strict-aliasing -fno-delete-null=
-pointer-checks&quot;<br>CXXFLAGS +=3D &quot;-fno-tree-vrp -fno-strict-alia=
sing -fno-delete-null-pointer-checks&quot;<br><br># nspr&#39;s package-conf=
ig is ignored so set libs manually<br>EXTRA_OECONF =3D &quot; --disable-jem=
alloc --enable-posix-nspr-emulation =C2=A0 =C2=A0 --enable-unaligned-privat=
e-values --with-system-zlib =C2=A0 =C2=A0 --with-intl-api --enable-debug --=
enable-optimize&quot;<br><br>PACKAGECONFIG ??=3D &quot;${@bb.utils.filter(&=
#39;DISTRO_FEATURES&#39;, &#39;x11&#39;, d)}&quot;<br>PACKAGECONFIG[x11] =
=3D &quot;--x-includes=3D${STAGING_INCDIR} --x-libraries=3D${STAGING_LIBDIR=
},--x-includes=3Dno --x-libraries=3Dno,virtual/libx11&quot;<br><br>EXTRA_OE=
MAKE_task-compile +=3D &quot;BUILD_OPT=3D1 OS_LDFLAGS=3D&#39;-Wl,-latomic $=
{LDFLAGS}&#39;&quot;<br>EXTRA_OEMAKE_task-install +=3D &quot;STATIC_LIBRARY=
_NAME=3Djs_static&quot;<br><br>export HOST_CC =3D &quot;${BUILD_CC}&quot;<b=
r>export HOST_CXX =3D &quot;${BUILD_CXX}&quot;<br>export HOST_CFLAGS =3D &q=
uot;${BUILD_CFLAGS}&quot;<br>export HOST_CPPFLAGS =3D &quot;${BUILD_CPPFLAG=
S}&quot;<br>export HOST_CXXFLAGS =3D &quot;${BUILD_CXXFLAGS}&quot;<br><br>d=
o_configure() {<br>=C2=A0 =C2=A0 export SHELL=3D&quot;/bin/sh&quot;<br>=C2=
=A0 =C2=A0 export TMP=3D&quot;${B}&quot;<br>=C2=A0 =C2=A0 echo ${WORKDIR} =
=C2=A0 <br>=C2=A0 =C2=A0 mkdir -p ${WORKDIR}/firefox-68.2.0/js/src/_build<b=
r>=C2=A0 =C2=A0 cd ${WORKDIR}/firefox-68.2.0/js/src/_build<br>=C2=A0 =C2=A0=
 pwd<br>=C2=A0 =C2=A0 ../configure ${EXTRA_OECONF}<br>}<br><br>do_compile_p=
repend() {<br>=C2=A0 =C2=A0 export SHELL=3D&quot;/bin/sh&quot;<br>=C2=A0 =
=C2=A0 export S<br>=C2=A0 =C2=A0 export PYTHONPATH<br>=C2=A0 =C2=A0 cd ${S}=
<br>=C2=A0 =C2=A0 <br>=C2=A0 =C2=A0 for sub_dir in python testing/mozbase; =
do<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 for module_dir in `ls $sub_dir -1`;do<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ $module_dir =3D &quot;virtualen=
v&quot; ] &amp;&amp; continue<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
if [ -d &quot;${S}/$sub_dir/$module_dir&quot; ];then<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PYTHONPATH=3D&quot;$PYTHONPATH:${S}/=
$sub_dir/$module_dir&quot;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fi<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 done<br>=C2=A0 =C2=A0 done<br>=C2=A0 =C2=A0 =
PYTHONPATH=3D&quot;$PYTHONPATH:${S}/config:${S}/build&quot;<br>=C2=A0 =C2=
=A0 cd -<br>}<br><br>do_install_prepend() {<br>=C2=A0 =C2=A0 export SHELL=
=3D&quot;/bin/sh&quot;<br>=C2=A0 =C2=A0 export S<br>=C2=A0 =C2=A0 export PY=
THONPATH<br>=C2=A0 =C2=A0 cd ${S}<br>=C2=A0 =C2=A0 for sub_dir in python te=
sting/mozbase; do<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 for module_dir in `ls $sub=
_dir -1`;do<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [ $module_dir =3D =
&quot;virtualenv&quot; ] &amp;&amp; continue<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 if [ -d &quot;${S}/$sub_dir/$module_dir&quot; ];then<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PYTHONPATH=3D&quot;$PY=
THONPATH:${S}/$sub_dir/$module_dir&quot;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 fi<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 done<br>=C2=A0 =C2=A0 done<br>=
=C2=A0 =C2=A0 PYTHONPATH=3D&quot;$PYTHONPATH:${S}/config:${S}/build&quot;<b=
r>=C2=A0 =C2=A0 cd -<br>}<br><br>PACKAGES =3D+ &quot;lib${BPN}&quot;<br>FIL=
ES_lib${BPN} +=3D &quot;${libdir}/lib*.so&quot;<br>FILES_${PN}-dev +=3D &qu=
ot;${bindir}/js68-config&quot;<br><br># Fails to build with thumb-1 (qemuar=
m)<br>#| {standard input}: Assembler messages:<br>#| {standard input}:2172:=
 Error: shifts in CMP/MOV instructions are only supported in unified syntax=
 -- `mov r2,r1,LSR#20&#39;<br>#| {standard input}:2173: Error: unshifted re=
gister required -- `bic r2,r2,#(1&lt;&lt;11)&#39;<br>#| {standard input}:21=
74: Error: unshifted register required -- `orr r1,r1,#(1&lt;&lt;20)&#39;<br=
>#| {standard input}:2176: Error: instruction not supported in Thumb16 mode=
 -- `subs r2,r2,#0x300&#39;<br>#| {standard input}:2178: Error: instruction=
 not supported in Thumb16 mode -- `subs r5,r2,#52&#39;<br>#ARM_INSTRUCTION_=
SET_armv5 =3D &quot;arm&quot;<br>#ARM_INSTRUCTION_SET_armv4 =3D &quot;arm&q=
uot;<br><br>DISABLE_STATIC =3D &quot;&quot;<br></div><div><br></div><div>Th=
anks</div><div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr" cla=
ss=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">=
Ulises S. Vega A.</div></div></div></div>

--00000000000030847505e73d8567--
