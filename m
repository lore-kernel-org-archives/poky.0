Return-Path: <praveen.vatt@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0F09E0092D; Thu, 19 Mar 2015 02:22:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (praveen.vatt[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f178.google.com (mail-pd0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DD82E00832
	for <poky@yoctoproject.org>; Thu, 19 Mar 2015 02:21:59 -0700 (PDT)
Received: by pdbop1 with SMTP id op1so70783929pdb.2
	for <poky@yoctoproject.org>; Thu, 19 Mar 2015 02:21:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=c28HjQb9Sm0ngEw4UO1CeGrdHeLXSccI10MoNxsmFow=;
	b=X75g2XHseqxQTvRkQnq661nMpd3lJsT5PyHR/GDRtTPbaNC6QdW/bqn1PhXFWiIMtn
	0wXjzMcvSbSwrTJcwiPO1ky4RssfqM3qv7beyUhi68usvZBcbYdu76m86keHkG2RYe0R
	QSVoxN3dpmiQeDEWOJ9weh1tu2bxaIDl3a+aJix+HQ+U0oPeUyhLHp5HaomZyRIXDVL1
	eJei/tTSd48r3zEYUnj3Fp/c3rYk0zzRPdt540VDAs68xX6QT8rr71pUgYsZ0qwl+e/I
	zBKR79zqJ0bznlmy9Z3r2L7fmixxzxIsBfYyaMYNgaJLFyt8OEOf3IEfAwlvuRwpJeIx
	v3cA==
MIME-Version: 1.0
X-Received: by 10.66.235.169 with SMTP id un9mr168811437pac.45.1426756919726; 
	Thu, 19 Mar 2015 02:21:59 -0700 (PDT)
Received: by 10.70.135.134 with HTTP; Thu, 19 Mar 2015 02:21:59 -0700 (PDT)
Date: Thu, 19 Mar 2015 14:51:59 +0530
Message-ID: <CA+pXca0dVU9T=4EPJamKWmopsExG=u-7V+XaRbXYumqAQUwK2A@mail.gmail.com>
From: praveen vattipalli <praveen.vatt@gmail.com>
To: poky@yoctoproject.org
Subject: error compiling beaglebone using meta-lianro
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 19 Mar 2015 09:22:02 -0000
Content-Type: multipart/alternative; boundary=001a1136c43e61966e0511a0bbee

--001a1136c43e61966e0511a0bbee
Content-Type: text/plain; charset=UTF-8

to poky-request
Hi all
I am trying to compile poky-dizzy-12.0.1(MACHINE ?= "beaglebone") using
meta-toolchain.
so i downloaded dizzy from
http://downloads.yoctoproject.org/releases/yocto/yocto-1.7.
1/poky-dizzy-12.0.1.tar.bz2
meta-linaro from
https://git.linaro.org/openembedded/meta-linaro.git
I have changed bblayers.conf as below
 # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
# changes incompatibly
LCONF_VERSION = "6"
BBPATH = "${TOPDIR}"
BBFILES ?= ""
BBLAYERS ?= " \
/home/praveenk/work/poky-dizzy-12.0.1/meta \
/home/praveenk/work/poky-dizzy-12.0.1/meta-yocto \
/home/praveenk/work/poky-dizzy-12.0.1/meta-yocto-bsp \
/home/praveenk/work/poky-dizzy-12.0.1/meta-linaro/meta-linaro-toolchain \
"
BBLAYERS_NON_REMOVABLE ?= " \
/home/praveenk/work/poky-dizzy-12.0.1/meta \
/home/praveenk/work/poky-dizzy-12.0.1/meta-yocto \
I added required changes in local.conf
 MACHINE ?= "beaglebone"
DEFAULTTUNE = "cortexa8hf-neon"

PREFERRED_PROVIDER_glibc ?= "glibc"

PREFERRED_VERSION_gcc ?= "linaro-4.9%"
PREFERRED_VERSION_gcc-cross ?= "linaro-4.9%"
PREFERRED_VERSION_gcc-cross-initial ?= "linaro-4.9%"
PREFERRED_VERSION_gcc-cross-intermediate ?= "linaro-4.9%"
PREFERRED_VERSION_gcc-cross-canadian ?= "linaro-4.9%"
PREFERRED_VERSION_gcc-crosssdk ?= "linaro-4.9%"
PREFERRED_VERSION_gcc-crosssdk-initial ?= "linaro-4.9%"
PREFERRED_VERSION_gcc-crosssdk-intermediate ?= "linaro-4.9%"
PREFERRED_VERSION_gcc-runtime ?= "linaro-4.9%"
PREFERRED_VERSION_nativesdk-gcc-runtime ?= "linaro-4.9%"
PREFERRED_VERSION_libgcc ?= "linaro-4.9%"
PREFERRED_VERSION_nativesdk-libgcc ?= "linaro-4.9%"
PREFERRED_VERSION_gcc-cross-canadian-${TRANSLATED_TARGET_ARCH} ?=
"linaro-4.9%"
but still it is building gcc-4.9 instead of gcc-linaro-4.9
below is the log
WARNING: Could not copy license file COPYING: [Errno 2] No such file or
directory:
'/home/praveenk/work/poky-dizzy-12.0.1/build/tmp/work-shared/gcc-linaro-4.9-r2014.11/gcc-linaro-4.9-2014.11/COPYING'
WARNING: Could not copy license file COPYING: [Errno 2] No such file or
directory:
'/home/praveenk/work/poky-dizzy-12.0.1/build/tmp/work-shared/gcc-linaro-4.9-r2014.11/gcc-linaro-4.9-2014.11/COPYING'
WARNING: Could not copy license file COPYING3: [Errno 2] No such file or
directory:
'/home/praveenk/work/poky-dizzy-12.0.1/build/tmp/work-shared/gcc-linaro-4.9-r2014.11/gcc-linaro-4.9-2014.11/COPYING3'
WARNING: Could not copy license file COPYING3: [Errno 2] No such file or
directory:
'/home/praveenk/work/poky-dizzy-12.0.1/build/tmp/work-shared/gcc-linaro-4.9-r2014.11/gcc-linaro-4.9-2014.11/COPYING3'
WARNING: Could not copy license file COPYING3.LIB: [Errno 2] No such file
or directory:
'/home/praveenk/work/poky-dizzy-12.0.1/build/tmp/work-shared/gcc-linaro-4.9-r2014.11/gcc-linaro-4.9-2014.11/COPYING3.LIB'
WARNING: Could not copy license file COPYING3.LIB: [Errno 2] No such file
or directory:
'/home/praveenk/work/poky-dizzy-12.0.1/build/tmp/work-shared/gcc-linaro-4.9-r2014.11/gcc-linaro-4.9-2014.11/COPYING3.LIB'
WARNING: Could not copy license file COPYING.LIB: [Errno 2] No such file or
directory:
'/home/praveenk/work/poky-dizzy-12.0.1/build/tmp/work-shared/gcc-linaro-4.9-r2014.11/gcc-linaro-4.9-2014.11/COPYING.LIB'
WARNING: Could not copy license file COPYING.LIB: [Errno 2] No such file or
directory:
'/home/praveenk/work/poky-dizzy-12.0.1/build/tmp/work-shared/gcc-linaro-4.9-r2014.11/gcc-linaro-4.9-2014.11/COPYING.LIB'
WARNING: Could not copy license file COPYING.RUNTIME: [Errno 2] No such
file or directory:
'/home/praveenk/work/poky-dizzy-12.0.1/build/tmp/work-shared/gcc-linaro-4.9-r2014.11/gcc-linaro-4.9-2014.11/COPYING.RUNTIME'
WARNING: Could not copy license file COPYING.RUNTIME: [Errno 2] No such
file or directory:
'/home/praveenk/work/poky-dizzy-12.0.1/build/tmp/work-shared/gcc-linaro-4.9-r2014.11/gcc-linaro-4.9-2014.11/COPYING.RUNTIME'
ERROR: Function failed: do_configure (log file is located at
/home/praveenk/work/poky-dizzy-12.0.1/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/libgcc/linaro-4.9-r2014.11/temp/log.do_configure.26074)
ERROR: Logfile of failure stored in:
/home/praveenk/work/poky-dizzy-12.0.1/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/libgcc/linaro-4.9-r2014.11/temp/log.do_configure.26074
Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| DEBUG: Executing shell function autotools_preconfigure
| DEBUG: Shell function autotools_preconfigure finished
| DEBUG: Executing python function autotools_copy_aclocals
| DEBUG: Python function autotools_copy_aclocals finished
| DEBUG: Executing shell function do_configure
| 0 blocks
| chmod: cannot access
'/home/praveenk/work/poky-dizzy-12.0.1/build/tmp/work-shared/gcc-linaro-4.9-r2014.11/gcc-linaro-4.9-2014.11/libgcc/configure':
No such file or directory
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at
/home/praveenk/work/poky-dizzy-12.0.1/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/libgcc/linaro-4.9-r2014.11/temp/log.do_configure.26074)
ERROR: Task 692
(/home/praveenk/work/poky-dizzy-12.0.1/meta-linaro/meta-linaro-toolchain/recipes-devtools/gcc/
libgcc_linaro-4.9.bb, do_configure) failed with exit code '1'

--001a1136c43e61966e0511a0bbee
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><table cellpadding=3D"0"><tbody><tr><td><div><span>to <spa=
n dir=3D"ltr" name=3D"poky-request">poky-request</span> </span></div><div><=
img id=3D":24x" alt=3D"" src=3D"https://mail.google.com/mail/u/1/images/cle=
ardot.gif"></div></td></tr></tbody></table><div></div><div></div><div></div=
><div id=3D":24y" tabindex=3D"-1"></div><div id=3D":26k"><div style=3D"over=
flow:hidden" id=3D":26g"><div dir=3D"ltr"><div>Hi all</div><div>I am trying=
 to compile poky-dizzy-12.0.1(MACHINE ?=3D &quot;beaglebone&quot;) using me=
ta-toolchain.</div><div> </div><div>so i downloaded dizzy from</div><div><a=
 href=3D"http://downloads.yoctoproject.org/releases/yocto/yocto-1.7.1/poky-=
dizzy-12.0.1.tar.bz2" target=3D"_blank"><font color=3D"#0066cc">http://down=
loads.yoctoproject.</font><font color=3D"#0066cc">org/releases/yocto/yocto-=
1.7.</font><font color=3D"#0066cc">1/poky-dizzy-12.0.1.tar.bz2</font></a></=
div><div>meta-linaro  from </div><div><a href=3D"https://git.linaro.org/ope=
nembedded/meta-linaro.git" target=3D"_blank"><font color=3D"#0066cc">https:=
//git.linaro.org/</font><font color=3D"#0066cc">openembedded/meta-linaro.gi=
t</font></a></div><div> I have changed bblayers.conf as below </div><div> <=
/div><div> </div><div> # LAYER_CONF_VERSION is increased each time build/co=
nf/bblayers.conf<br># changes incompatibly<br>LCONF_VERSION =3D &quot;6&quo=
t;</div><div>BBPATH =3D &quot;${TOPDIR}&quot;<br>BBFILES ?=3D &quot;&quot;<=
/div><div>BBLAYERS ?=3D &quot; \<br>  /home/praveenk/work/poky-dizzy-12.0.1=
/meta \<br>  /home/praveenk/work/poky-dizzy-12.0.1/meta-yocto \<br>  /home/=
praveenk/work/poky-dizzy-12.0.1/meta-yocto-bsp \<br>   /home/praveenk/work/=
poky-dizzy-12.0.1/meta-linaro/meta-linaro-toolchain \<br>  &quot;<br>BBLAYE=
RS_NON_REMOVABLE ?=3D &quot; \<br>  /home/praveenk/work/poky-dizzy-12.0.1/m=
eta \<br>  /home/praveenk/work/poky-dizzy-12.0.1/meta-yocto \<br></div><div=
>I added required changes in local.conf </div><div> </div><div> </div><div>=
MACHINE ?=3D &quot;beaglebone&quot;<br>DEFAULTTUNE =3D &quot;cortexa8hf-neo=
n&quot;</div><div><br>PREFERRED_PROVIDER_glibc                             =
           ?=3D &quot;glibc&quot;</div><div><br>PREFERRED_VERSION_gcc      =
                                     ?=3D &quot;linaro-4.9%&quot;<br>PREFER=
RED_VERSION_gcc-cross                                     ?=3D &quot;linaro=
-4.9%&quot;<br>PREFERRED_VERSION_gcc-cross-initial                         =
    ?=3D &quot;linaro-4.9%&quot;<br>PREFERRED_VERSION_gcc-cross-intermediat=
e                        ?=3D &quot;linaro-4.9%&quot;<br>PREFERRED_VERSION_=
gcc-cross-canadian                            ?=3D &quot;linaro-4.9%&quot;<=
br>PREFERRED_VERSION_gcc-crosssdk                                  ?=3D &qu=
ot;linaro-4.9%&quot;<br>PREFERRED_VERSION_gcc-crosssdk-initial             =
             ?=3D &quot;linaro-4.9%&quot;<br>PREFERRED_VERSION_gcc-crosssdk=
-intermediate                     ?=3D &quot;linaro-4.9%&quot;<br>PREFERRED=
_VERSION_gcc-runtime                                   ?=3D &quot;linaro-4.=
9%&quot;<br>PREFERRED_VERSION_nativesdk-gcc-runtime                        =
 ?=3D &quot;linaro-4.9%&quot;<br>PREFERRED_VERSION_libgcc                  =
                      ?=3D &quot;linaro-4.9%&quot;<br>PREFERRED_VERSION_nat=
ivesdk-libgcc                              ?=3D &quot;linaro-4.9%&quot;<br>=
PREFERRED_VERSION_gcc-cross-canadian-${TRANSLATED_TARGET_ARCH}  ?=3D &quot;=
linaro-4.9%&quot;</div><div> </div><div>but still it is building gcc-4.9 in=
stead of gcc-linaro-4.9</div><div> </div><div>below is the log</div><div> <=
/div><div>WARNING: Could not copy license file COPYING: [Errno 2] No such f=
ile or directory: &#39;/home/praveenk/work/poky-dizzy-12.0.1/build/tmp/work=
-shared/gcc-linaro-4.9-r2014.11/gcc-linaro-4.9-2014.11/COPYING&#39;<br>WARN=
ING: Could not copy license file COPYING: [Errno 2] No such file or directo=
ry: &#39;/home/praveenk/work/poky-dizzy-12.0.1/build/tmp/work-shared/gcc-li=
naro-4.9-r2014.11/gcc-linaro-4.9-2014.11/COPYING&#39;<br>WARNING: Could not=
 copy license file COPYING3: [Errno 2] No such file or directory: &#39;/hom=
e/praveenk/work/poky-dizzy-12.0.1/build/tmp/work-shared/gcc-linaro-4.9-r201=
4.11/gcc-linaro-4.9-2014.11/COPYING3&#39;<br>WARNING: Could not copy licens=
e file COPYING3: [Errno 2] No such file or directory: &#39;/home/praveenk/w=
ork/poky-dizzy-12.0.1/build/tmp/work-shared/gcc-linaro-4.9-r2014.11/gcc-lin=
aro-4.9-2014.11/COPYING3&#39;<br>WARNING: Could not copy license file COPYI=
NG3.LIB: [Errno 2] No such file or directory: &#39;/home/praveenk/work/poky=
-dizzy-12.0.1/build/tmp/work-shared/gcc-linaro-4.9-r2014.11/gcc-linaro-4.9-=
2014.11/COPYING3.LIB&#39;<br>WARNING: Could not copy license file COPYING3.=
LIB: [Errno 2] No such file or directory: &#39;/home/praveenk/work/poky-diz=
zy-12.0.1/build/tmp/work-shared/gcc-linaro-4.9-r2014.11/gcc-linaro-4.9-2014=
.11/COPYING3.LIB&#39;<br>WARNING: Could not copy license file COPYING.LIB: =
[Errno 2] No such file or directory: &#39;/home/praveenk/work/poky-dizzy-12=
.0.1/build/tmp/work-shared/gcc-linaro-4.9-r2014.11/gcc-linaro-4.9-2014.11/C=
OPYING.LIB&#39;<br>WARNING: Could not copy license file COPYING.LIB: [Errno=
 2] No such file or directory: &#39;/home/praveenk/work/poky-dizzy-12.0.1/b=
uild/tmp/work-shared/gcc-linaro-4.9-r2014.11/gcc-linaro-4.9-2014.11/COPYING=
.LIB&#39;<br>WARNING: Could not copy license file COPYING.RUNTIME: [Errno 2=
] No such file or directory: &#39;/home/praveenk/work/poky-dizzy-12.0.1/bui=
ld/tmp/work-shared/gcc-linaro-4.9-r2014.11/gcc-linaro-4.9-2014.11/COPYING.R=
UNTIME&#39;<br>WARNING: Could not copy license file COPYING.RUNTIME: [Errno=
 2] No such file or directory: &#39;/home/praveenk/work/poky-dizzy-12.0.1/b=
uild/tmp/work-shared/gcc-linaro-4.9-r2014.11/gcc-linaro-4.9-2014.11/COPYING=
.RUNTIME&#39;<br>ERROR: Function failed: do_configure (log file is located =
at /home/praveenk/work/poky-dizzy-12.0.1/build/tmp/work/cortexa9hf-vfp-neon=
-poky-linux-gnueabi/libgcc/linaro-4.9-r2014.11/temp/log.do_configure.26074)=
<br>ERROR: Logfile of failure stored in: /home/praveenk/work/poky-dizzy-12.=
0.1/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/libgcc/linaro-4.9=
-r2014.11/temp/log.do_configure.26074<br>Log data follows:<br>| DEBUG: Exec=
uting python function sysroot_cleansstate<br>| DEBUG: Python function sysro=
ot_cleansstate finished<br>| DEBUG: SITE files [&#39;endian-little&#39;, &#=
39;bit-32&#39;, &#39;arm-common&#39;, &#39;common-linux&#39;, &#39;common-g=
libc&#39;, &#39;arm-linux&#39;, &#39;arm-linux-gnueabi&#39;, &#39;common&#3=
9;]<br>| DEBUG: Executing shell function autotools_preconfigure<br>| DEBUG:=
 Shell function autotools_preconfigure finished<br>| DEBUG: Executing pytho=
n function autotools_copy_aclocals<br>| DEBUG: Python function autotools_co=
py_aclocals finished<br>| DEBUG: Executing shell function do_configure<br>|=
 0 blocks<br>| chmod: cannot access &#39;/home/praveenk/work/poky-dizzy-12.=
0.1/build/tmp/work-shared/gcc-linaro-4.9-r2014.11/gcc-linaro-4.9-2014.11/li=
bgcc/configure&#39;: No such file or directory<br>| WARNING: exit code 1 fr=
om a shell command.<br>| ERROR: Function failed: do_configure (log file is =
located at /home/praveenk/work/poky-dizzy-12.0.1/build/tmp/work/cortexa9hf-=
vfp-neon-poky-linux-gnueabi/libgcc/linaro-4.9-r2014.11/temp/log.do_configur=
e.26074)<br>ERROR: Task 692 (/home/praveenk/work/poky-dizzy-12.0.1/meta-lin=
aro/meta-linaro-toolchain/recipes-devtools/gcc/<a href=3D"http://libgcc_lin=
aro-4.9.bb/" target=3D"_blank"><font color=3D"#0066cc">libgcc_linaro-4.</fo=
nt><font color=3D"#0066cc">9.bb</font></a>, do_configure) failed with exit =
code &#39;1&#39;</div></div></div></div></div>

--001a1136c43e61966e0511a0bbee--
