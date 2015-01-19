Return-Path: <matti.kaasinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1932E00546; Sun, 18 Jan 2015 23:54:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matti.kaasinen[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f41.google.com (mail-wg0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E8D2E002F9
	for <poky@yoctoproject.org>; Sun, 18 Jan 2015 23:54:24 -0800 (PST)
Received: by mail-wg0-f41.google.com with SMTP id a1so8157003wgh.0
	for <poky@yoctoproject.org>; Sun, 18 Jan 2015 23:54:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=w2h8XfRjPKxwS6si+WBEGimotTVPlIVe6w+JxV+/kmo=;
	b=d7eeAbVCXCIy+2coJflsCgZ6ZwJXeyKzpcUI7JW5KPy3D5xaFL9jX2KjwpKGQrepQT
	9+R0lyxSq4b+TfHFqA2gshn0IZ7Muz7hQLEBbCLFeiOxon2fcLdhVtB6x+YArKAfliVZ
	PduK7cbSg2h1FWAoi/GvjEfL5L99zIkb5TxR03ZFHCUxKTR42SFU3Y+N5gt6liemJg5A
	SpuFj7dEcfovexbdx6R3FIf+H7EshFgPSPWMOXIx3+Bwbo3t2SaNOvZI7gE/VDUpNiUs
	q5wxJD7rguxh/ERhZbPVjvz+9wXO0LuMQbpuuRRNb/jcqjzasc14prpGF7XplHt6koiB
	iksw==
MIME-Version: 1.0
X-Received: by 10.180.94.163 with SMTP id dd3mr33095558wib.82.1421654063206;
	Sun, 18 Jan 2015 23:54:23 -0800 (PST)
Received: by 10.27.86.161 with HTTP; Sun, 18 Jan 2015 23:54:23 -0800 (PST)
Date: Mon, 19 Jan 2015 09:54:23 +0200
Message-ID: <CADnUhn3xm92ocTKELRH6-WeYmm5eXPOz2Te+_r3Zz1FDGEGWrw@mail.gmail.com>
From: matti kaasinen <matti.kaasinen@gmail.com>
To: poky@yoctoproject.org
Subject: klibc_2.0.2.bb do_package crashes
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
X-List-Received-Date: Mon, 19 Jan 2015 07:54:28 -0000
Content-Type: multipart/alternative; boundary=f46d04462e5e6e5682050cfca109

--f46d04462e5e6e5682050cfca109
Content-Type: text/plain; charset=UTF-8

Hi!

I tried to build core-image-minimal with some packages added for poky/daisy.

I got following error log:
ERROR: QA Issue: File '/usr/lib/klibc-JmwOsNdzWCnU2MZ15xBYh4DCl3s.so' from
klibc was already stripped, this will prevent future debugging!
ERROR: QA Issue: File
'/usr/lib/klibc/lib/klibc-JmwOsNdzWCnU2MZ15xBYh4DCl3s.so' from klibc was
already stripped, this will prevent future debugging!
ERROR: QA run found fatal errors. Please consider fixing them.
ERROR: Function failed: do_package_qa
ERROR: Logfile of failure stored in:
/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/klibc/2.0.2-r1.0/temp/log.do_package.15991
ERROR: Task 1786
(/yocto/meta-openembedded/meta-initramfs/recipes-devtools/klibc/
klibc_2.0.2.bb, do_package) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1418 tasks of which 16 didn't need to be
rerun and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
  /yocto/meta-openembedded/meta-initramfs/recipes-devtools/klibc/
klibc_2.0.2.bb, do_package
Summary: There were 29 WARNING messages shown.
Summary: There were 4 ERROR messages shown, returning a non-zero exit code.


Any suggestions to work this around?

-Matti

--f46d04462e5e6e5682050cfca109
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi!<br><br></div>I tried to build core-image-min=
imal with some packages added for poky/daisy.<br><br></div>I got following =
error log:<br><div>ERROR: QA Issue: File &#39;/usr/lib/klibc-JmwOsNdzWCnU2M=
Z15xBYh4DCl3s.so&#39; from klibc was already stripped, this will prevent fu=
ture debugging!<br>ERROR: QA Issue: File &#39;/usr/lib/klibc/lib/klibc-JmwO=
sNdzWCnU2MZ15xBYh4DCl3s.so&#39; from klibc was already stripped, this will =
prevent future debugging!<br>ERROR: QA run found fatal errors. Please consi=
der fixing them.<br>ERROR: Function failed: do_package_qa<br>ERROR: Logfile=
 of failure stored in: /TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/klib=
c/2.0.2-r1.0/temp/log.do_package.15991<br>ERROR: Task 1786 (/yocto/meta-ope=
nembedded/meta-initramfs/recipes-devtools/klibc/<a href=3D"http://klibc_2.0=
.2.bb">klibc_2.0.2.bb</a>, do_package) failed with exit code &#39;1&#39;<br=
>NOTE: Tasks Summary: Attempted 1418 tasks of which 16 didn&#39;t need to b=
e rerun and 1 failed.<br>Waiting for 0 running tasks to finish:<br><br>Summ=
ary: 1 task failed:<br>=C2=A0 /yocto/meta-openembedded/meta-initramfs/recip=
es-devtools/klibc/<a href=3D"http://klibc_2.0.2.bb">klibc_2.0.2.bb</a>, do_=
package<br>Summary: There were 29 WARNING messages shown.<br>Summary: There=
 were 4 ERROR messages shown, returning a non-zero exit code.<br><br><br></=
div><div>Any suggestions to work this around?<br><br></div><div>-Matti<br><=
/div></div>

--f46d04462e5e6e5682050cfca109--
