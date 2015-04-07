Return-Path: <praveen.vatt@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B033BE007A0; Mon,  6 Apr 2015 23:43:47 -0700 (PDT)
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
	*      [209.85.220.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8AF6E006E5
	for <poky@yoctoproject.org>; Mon,  6 Apr 2015 23:43:44 -0700 (PDT)
Received: by paboj16 with SMTP id oj16so68931626pab.0
	for <poky@yoctoproject.org>; Mon, 06 Apr 2015 23:43:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=AYC/xHiE/C8lQKrPFWvWKtRxMqGw+CQ9afLdGgMZPPM=;
	b=l4nlnW7/7TKlo6haLfUUVOH4O6ijiOUeie0xD9Lu+4FDQk6S6uQ5s2AButh23ItycW
	4RBStP2W+KCHYkILvaRZakuiOChhsED3TJ/b08NtPpZENXLfz+zW9dzJDnjILY9dvbHa
	tOcm5ZgziN9eaUxwsfZDrkSRYSiqO29e3jC/VEjGYkYpQG0rm6ssjwlEmCA0Pw9MKJz/
	8CYRIEC0121vVqdOL2W9NrhnFwhmEtHpWSGXvPhSqP6vMbDZX3OoDUZ8KT/lKe/R0vAT
	rvPWMr42qIEUbouL7hEcj0LrjziQnXXDnc9zeCOY2B6Yk9BGYh0jJLv9Q9NNdvWq/frJ
	BmQQ==
MIME-Version: 1.0
X-Received: by 10.66.193.72 with SMTP id hm8mr33497478pac.24.1428389023819;
	Mon, 06 Apr 2015 23:43:43 -0700 (PDT)
Received: by 10.70.135.134 with HTTP; Mon, 6 Apr 2015 23:43:43 -0700 (PDT)
Date: Tue, 7 Apr 2015 12:13:43 +0530
Message-ID: <CA+pXca2451pmub6K3mm-q20b0D-OUQ1beBk=ovA8sn57n7t5nA@mail.gmail.com>
From: praveen vattipalli <praveen.vatt@gmail.com>
To: poky@yoctoproject.org
Subject: do_compile_ptest_base error (valgrind) in dizzy
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
X-List-Received-Date: Tue, 07 Apr 2015 06:43:47 -0000
Content-Type: multipart/alternative; boundary=047d7bdca6a45dac3705131cbc8b

--047d7bdca6a45dac3705131cbc8b
Content-Type: text/plain; charset=UTF-8

hi
I am using 64 bit ubuntu12.04 and compiling coertexa9 arch arm  board. I
could able to build core-image-minimal successfully. But when I am trying
to build valgrind. I am getting do_compile_ptest_base error. If i remove
ptest in valgrind_3.9.0.bb it is building without errors.

I am using poky-dizzy.

ERROR LOG:

/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/valgrind/3.9.0-r8/valgrind-3.9.0/none/tests/arm/vcvt_fixed_float_VFP.c:
In function 's32_to_f32_imm1':
|
/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/valgrind/3.9.0-r8/valgrind-3.9.0/none/tests/arm/vcvt_fixed_float_VFP.c:12:1:
internal compiler error: Max. number of generated reload insns per insn is
achieved (90)
|
|  }
|  ^
| Please submit a full bug report,
| with preprocessed source if appropriate.
| See <http://gcc.gnu.org/bugs.html> for instructions.
| make[5]: *** [vcvt_fixed_float_VFP.o] Error 1
| make[5]: Leaving directory
`/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/valgrind/3.9.0-r8/build/none/tests/arm'
| make[4]: *** [check-am] Error 2
| make[4]: Leaving directory
`/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/valgrind/3.9.0-r8/build/none/tests/arm'
| make[3]: *** [check-recursive] Error 1
| make[3]: Leaving directory
`/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/valgrind/3.9.0-r8/build/none/tests'
| make[2]: *** [check-recursive] Error 1
| make[2]: Leaving directory
`/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/valgrind/3.9.0-r8/build/none'
| make[1]: *** [check-recursive] Error 1
| make[1]: Leaving directory
`/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/valgrind/3.9.0-r8/build'
| make: *** [check] Error 2
| make: Leaving directory
`/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/valgrind/3.9.0-r8/build'
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile_ptest_base (log file is located at
/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/valgrind/3.9.0-r8/temp/log.do_compile_ptest_base.11152)
ERROR: Task 9 (/home/praveenk/work/platform/meta/recipes-devtools/valgrind/
valgrind_3.9.0.bb, do_compile_ptest_base) failed with exit code '1'
NOTE: Tasks Summary: Attempted 776 tasks of which 769 didn't need to be
rerun and 1 failed.
No currently running tasks (776 of 784)

Summary: 1 task failed:
  /home/praveenk/work/platform/meta/recipes-devtools/valgrind/
valgrind_3.9.0.bb, do_compile_ptest_base
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

how can i solve this.

Thanks
Praveen

--047d7bdca6a45dac3705131cbc8b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>hi <br></div>I am using 64 bit ubuntu12.04 and c=
ompiling coertexa9 arch arm=C2=A0 board. I could able to build core-image-m=
inimal successfully. But when I am trying to build valgrind. I am getting d=
o_compile_ptest_base error. If i remove ptest in <a href=3D"http://valgrind=
_3.9.0.bb">valgrind_3.9.0.bb</a> it is building without errors. <br><br></d=
iv><div>I am using poky-dizzy. <br></div><div><br></div><div>ERROR LOG:<br>=
<br>/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-li=
nux-gnueabi/valgrind/3.9.0-r8/valgrind-3.9.0/none/tests/arm/vcvt_fixed_floa=
t_VFP.c: In function &#39;s32_to_f32_imm1&#39;:<br>| /home/praveenk/work/pl=
atform/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/valgrind/3.9.0=
-r8/valgrind-3.9.0/none/tests/arm/vcvt_fixed_float_VFP.c:12:1: internal com=
piler error: Max. number of generated reload insns per insn is achieved (90=
)<br>| <br>|=C2=A0 }<br>|=C2=A0 ^<br>| Please submit a full bug report,<br>=
| with preprocessed source if appropriate.<br>| See &lt;<a href=3D"http://g=
cc.gnu.org/bugs.html">http://gcc.gnu.org/bugs.html</a>&gt; for instructions=
.<br>| make[5]: *** [vcvt_fixed_float_VFP.o] Error 1<br>| make[5]: Leaving =
directory `/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.9.0-r8/build/none/tests/arm&#39;<br>| make[4]=
: *** [check-am] Error 2<br>| make[4]: Leaving directory `/home/praveenk/wo=
rk/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.9.0-r8/build/none/tests/arm&#39;<br>| make[3]: *** [check-recursive] Erro=
r 1<br>| make[3]: Leaving directory `/home/praveenk/work/platform/build/tmp=
/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/valgrind/3.9.0-r8/build/none/t=
ests&#39;<br>| make[2]: *** [check-recursive] Error 1<br>| make[2]: Leaving=
 directory `/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon=
-poky-linux-gnueabi/valgrind/3.9.0-r8/build/none&#39;<br>| make[1]: *** [ch=
eck-recursive] Error 1<br>| make[1]: Leaving directory `/home/praveenk/work=
/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/valgrind/3.=
9.0-r8/build&#39;<br>| make: *** [check] Error 2<br>| make: Leaving directo=
ry `/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-li=
nux-gnueabi/valgrind/3.9.0-r8/build&#39;<br>| ERROR: oe_runmake failed<br>|=
 WARNING: exit code 1 from a shell command.<br>| ERROR: Function failed: do=
_compile_ptest_base (log file is located at /home/praveenk/work/platform/bu=
ild/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/valgrind/3.9.0-r8/temp/=
log.do_compile_ptest_base.11152)<br>ERROR: Task 9 (/home/praveenk/work/plat=
form/meta/recipes-devtools/valgrind/<a href=3D"http://valgrind_3.9.0.bb">va=
lgrind_3.9.0.bb</a>, do_compile_ptest_base) failed with exit code &#39;1&#3=
9;<br>NOTE: Tasks Summary: Attempted 776 tasks of which 769 didn&#39;t need=
 to be rerun and 1 failed.<br>No currently running tasks (776 of 784)<br><b=
r>Summary: 1 task failed:<br>=C2=A0 /home/praveenk/work/platform/meta/recip=
es-devtools/valgrind/<a href=3D"http://valgrind_3.9.0.bb">valgrind_3.9.0.bb=
</a>, do_compile_ptest_base<br>Summary: There was 1 ERROR message shown, re=
turning a non-zero exit code.<br><br></div><div>how can i solve this.<br><b=
r></div><div>Thanks <br></div><div>Praveen<br></div><div><br></div></div>

--047d7bdca6a45dac3705131cbc8b--
