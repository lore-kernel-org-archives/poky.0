Return-Path: <darthhunterix@wp.pl>
Received: from mx4.wp.pl (mx4.wp.pl [212.77.101.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F01FCE011CA
	for <poky@yoctoproject.org>; Sun, 21 Aug 2011 11:56:20 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@wp.pl;
	x-dkim-adsp=none (insecure policy)
Received: (wp-smtpd smtp.wp.pl 8581 invoked from network);
	21 Aug 2011 20:56:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
	t=1313952980; bh=0wSfxX4BuhGoajhB6SUaGf/WL8Yh8OWJ7GxAwy3hRB4=;
	h=From:To:Subject;
	b=p37seMwSIVS1Hz+8lQ3veQ3Pl+rSTvOKZw3Trf5YDFYuyxQ4MZdHJ5W6tObDBcBYo
	LGHhe1svMK/Xf3N9nMniUEoGGLcPAv0yWLru40DU6rwVtNugASW/PUQJxv1K/YzsN6
	mqOxWla1+n7iM3Rsnh3K5R5ELEMeH94YTLlmJx6c=
Received: from out.poczta.wp.pl (HELO localhost) ([212.77.101.240])
	(envelope-sender <darthhunterix@wp.pl>)
	by smtp.wp.pl (WP-SMTPD) with SMTP
	for <poky@yoctoproject.org>; 21 Aug 2011 20:56:20 +0200
Date: Sun, 21 Aug 2011 20:56:19 +0200
From: =?ISO-8859-2?Q?Przemek_Ogorza=B3ek?= <darthhunterix@wp.pl>
To: poky <poky@yoctoproject.org>
Message-ID: <4e5154d3de9562.62574778@wp.pl>
MIME-Version: 1.0
X-Mailer: Interfejs WWW nowej poczty Wirtualnej Polski
X-User-Agent: Mozilla/5.0 (X11; Linux i686; rv:6.0) Gecko/20100101 Firefox/6.0
Organization: Poznaj Poczte WP http://poczta.wp.pl/info-start.html
X-WP-IP: 83.24.49.235
X-WP-AV: skaner antywirusowy poczty Wirtualnej Polski S. A.
X-WP-SPAM: NO 0000000 [IaNk]                               
Subject: glibc building problem
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
X-List-Received-Date: Sun, 21 Aug 2011 18:56:21 -0000
Content-Type: text/html; charset=iso-8859-2
Content-Transfer-Encoding: 8bit
Content-Disposition: inline

<style>blockquote {padding-left: 1ex; margin: 0px 0px 0px 0.8ex; border-left: #cccccc 1px solid;} p {margin: 0px;padding: 0px;} </style>
<p>Hello!</p>
<p>I have a problem with running any build with bitbake.</p>
<p>No matter what target I choose (poky-image or toolchain) I get the same error over and over again, here is what log says:</p>
<p>&nbsp;</p>
<blockquote>
<p>NOTE: Running task 734 of 1823 (ID: 963, virtual:native:/home/developer/poky/poky-bernard-5.0.1/meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb, do_compile)<br />NOTE: package glib-2.0-native-1_2.26.1-r0: task do_compile: Started<br />ERROR: 'virtual:native:/home/developer/poky/poky-bernard-5.0.1/meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb' failed<br />ERROR: Function 'do_compile' failed (see 
/home/developer/poky/poky-bernard-5.0.1/build/tmp/work/i686-linux/glib-2.0-native-1_2.26.1-r0/temp/log.do_compile.3602 for further information)<br />ERROR: Logfile of failure stored in: /home/developer/poky/poky-bernard-5.0.1/build/tmp/work/i686-linux/glib-2.0-native-1_2.26.1-r0/temp/log.do_compile.3602<br />Log data follows:<br />| NOTE: make<br />| make&nbsp; all-recursive<br />| make[1]: Entering directory 
`/home/developer/poky/poky-bernard-5.0.1/build/tmp/work/i686-linux/glib-2.0-native-1_2.26.1-r0/glib-2.26.1'<br />| Making all in .<br />| make[2]: Entering directory `/home/developer/poky/poky-bernard-5.0.1/build/tmp/work/i686-linux/glib-2.0-native-1_2.26.1-r0/glib-2.26.1'<br />| make[2]: Leaving directory `/home/developer/poky/poky-bernard-5.0.1/build/tmp/work/i686-linux/glib-2.0-native-1_2.26.1-r0/glib-2.26.1'<br />| Making all in m4macros<br />| make[2]: Entering directory 
`/home/developer/poky/poky-bernard-5.0.1/build/tmp/work/i686-linux/glib-2.0-native-1_2.26.1-r0/glib-2.26.1/m4macros'<br />| make[2]: Nothing to be done for `all'.<br />| make[2]: Leaving directory `/home/developer/poky/poky-bernard-5.0.1/build/tmp/work/i686-linux/glib-2.0-native-1_2.26.1-r0/glib-2.26.1/m4macros'<br />| Making all in glib<br />| make[2]: Entering directory `/home/developer/poky/poky-bernard-5.0.1/build/tmp/work/i686-linux/glib-2.0-native-1_2.26.1-r0/glib-2.26.1/glib'<br />| 
make&nbsp; all-recursive<br />| make[3]: Entering directory `/home/developer/poky/poky-bernard-5.0.1/build/tmp/work/i686-linux/glib-2.0-native-1_2.26.1-r0/glib-2.26.1/glib'<br />| Making all in libcharset<br />| make[4]: Entering directory `/home/developer/poky/poky-bernard-5.0.1/build/tmp/work/i686-linux/glib-2.0-native-1_2.26.1-r0/glib-2.26.1/glib/libcharset'<br />| make[4]: Nothing to be done for `all'.<br />| make[4]: Leaving directory 
`/home/developer/poky/poky-bernard-5.0.1/build/tmp/work/i686-linux/glib-2.0-native-1_2.26.1-r0/glib-2.26.1/glib/libcharset'<br />| Making all in pcre<br />| make[4]: Entering directory `/home/developer/poky/poky-bernard-5.0.1/build/tmp/work/i686-linux/glib-2.0-native-1_2.26.1-r0/glib-2.26.1/glib/pcre'<br />| make[4]: Nothing to be done for `all'.<br />| make[4]: Leaving directory 
`/home/developer/poky/poky-bernard-5.0.1/build/tmp/work/i686-linux/glib-2.0-native-1_2.26.1-r0/glib-2.26.1/glib/pcre'<br />| Making all in update-pcre<br />| make[4]: Entering directory `/home/developer/poky/poky-bernard-5.0.1/build/tmp/work/i686-linux/glib-2.0-native-1_2.26.1-r0/glib-2.26.1/glib/update-pcre'<br />| make[4]: Nothing to be done for `all'.<br />| make[4]: Leaving directory 
`/home/developer/poky/poky-bernard-5.0.1/build/tmp/work/i686-linux/glib-2.0-native-1_2.26.1-r0/glib-2.26.1/glib/update-pcre'<br />| Making all in .<br />| make[4]: Entering directory `/home/developer/poky/poky-bernard-5.0.1/build/tmp/work/i686-linux/glib-2.0-native-1_2.26.1-r0/glib-2.26.1/glib'<br />| /bin/sh ../i686-linux-libtool&nbsp; --tag=CC&nbsp;&nbsp; --mode=link ccache gcc&nbsp; -isystem/home/developer/poky/poky-bernard-5.0.1/build/tmp/sysroots/i686-linux/usr/include -O2 -Wall&nbsp; 
-L/home/developer/poky/poky-bernard-5.0.1/build/tmp/sysroots/i686-linux/usr/lib -Wl,-rpath-link,/home/developer/poky/poky-bernard-5.0.1/build/tmp/sysroots/i686-linux/usr/lib -Wl,-rpath,/home/developer/poky/poky-bernard-5.0.1/build/tmp/sysroots/i686-linux/usr/lib -Wl,-O1 -o gtester gtester.o libglib-2.0.la<br />| i686-linux-libtool: link: ccache gcc -isystem/home/developer/poky/poky-bernard-5.0.1/build/tmp/sysroots/i686-linux/usr/include -O2 -Wall -Wl,-rpath-link 
-Wl,/home/developer/poky/poky-bernard-5.0.1/build/tmp/sysroots/i686-linux/usr/lib -Wl,-rpath -Wl,/home/developer/poky/poky-bernard-5.0.1/build/tmp/sysroots/i686-linux/usr/lib -Wl,-O1 -o .libs/gtester gtester.o&nbsp; -L/home/developer/poky/poky-bernard-5.0.1/build/tmp/sysroots/i686-linux/usr/lib ./.libs/libglib-2.0.so -Wl,-rpath -Wl,/home/developer/poky/poky-bernard-5.0.1/build/tmp/sysroots/i686-linux/usr/lib<br />| ./.libs/libglib-2.0.so: undefined reference to `GLIB_SLICE_ALLOC'<br />| 
./.libs/libglib-2.0.so: undefined reference to `GLIB_MEM_REALLOC'<br />| ./.libs/libglib-2.0.so: undefined reference to `GLIB_SLICE_FREE'<br />| ./.libs/libglib-2.0.so: undefined reference to `GLIB_MEM_ALLOC'<br />| ./.libs/libglib-2.0.so: undefined reference to `GLIB_MEM_FREE'<br />| ./.libs/libglib-2.0.so: undefined reference to `GLIB_QUARK_NEW'<br />| collect2: ld returned 1 exit status<br />| make[4]: *** [gtester] Error 1<br />| make[4]: Leaving directory 
`/home/developer/poky/poky-bernard-5.0.1/build/tmp/work/i686-linux/glib-2.0-native-1_2.26.1-r0/glib-2.26.1/glib'<br />| make[3]: *** [all-recursive] Error 1<br />| make[3]: Leaving directory `/home/developer/poky/poky-bernard-5.0.1/build/tmp/work/i686-linux/glib-2.0-native-1_2.26.1-r0/glib-2.26.1/glib'<br />| make[2]: *** [all] Error 2<br />| make[2]: Leaving directory `/home/developer/poky/poky-bernard-5.0.1/build/tmp/work/i686-linux/glib-2.0-native-1_2.26.1-r0/glib-2.26.1/glib'<br />| 
make[1]: *** [all-recursive] Error 1<br />| make[1]: Leaving directory `/home/developer/poky/poky-bernard-5.0.1/build/tmp/work/i686-linux/glib-2.0-native-1_2.26.1-r0/glib-2.26.1'<br />| make: *** [all] Error 2<br />| FATAL: oe_runmake failed<br />| ERROR: Function 'do_compile' failed (see /home/developer/poky/poky-bernard-5.0.1/build/tmp/work/i686-linux/glib-2.0-native-1_2.26.1-r0/temp/log.do_compile.3602 for further information)<br />NOTE: package glib-2.0-native-1_2.26.1-r0: task do_compile: 
Failed<br />ERROR: Task 963 (virtual:native:/home/developer/poky/poky-bernard-5.0.1/meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb, do_compile) failed with exit code '1'</p>
<p>&nbsp;</p>
</blockquote>
<p>I tried to examine all the files mentioned above, but I have no clue what causes the problem.</p>
<p>Does anyone have any idea what can I do to fix it?</p>
<p>&nbsp;</p>
<p>I use Poky 5.0.1 on 32-bit host with Fedora 15, and my target is PowerPC.</p>
<p>&nbsp;</p>
<p>Thanks in advance</p>
<p>Best regards</p>
<p>Przemek "Darth Hunterix"</p><br />



