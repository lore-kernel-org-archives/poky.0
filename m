Return-Path: <andrea.adami@gmail.com>
Received: from mail-lb0-f182.google.com (mail-lb0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B17AE013A7
	for <poky@yoctoproject.org>; Mon,  1 Apr 2013 14:38:35 -0700 (PDT)
Received: by mail-lb0-f182.google.com with SMTP id z13so2363504lbh.13
	for <poky@yoctoproject.org>; Mon, 01 Apr 2013 14:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:cc:content-type;
	bh=3V963+MB2yS1Fw2ggm972UskZtcW1jQmxHQh/pekizo=;
	b=o75yosdYefrHu16yVM5d9TTQwYyPZZhsM9/2W9de9GxqThjCe4xMg9kQV2Oelvxig1
	uCoQjEPgaENLkUXZdVRZdIXl4oTuVteUWb05JlNhfah4fnAiAcuUDvwD2Po30xoiYG4n
	zSqZPyMwafxHrqgvTbTfC8HShNQWr9GBHmWJlmQSUSn9gUfd1jv5ce1hHOMj7LZSIUlh
	EAhAx0JGHcf0cNWty0E+ZqjCF4XBCjtoM/9MQDOA/mfj2q4eyGSdNj53BlvgwEsjq4Hp
	A8fJuLQ25OZwYLh9/QIDYP+NSpqfLox1LjVHuP82BP897THsa4knfodomrFkOdoz7owS
	0jUA==
MIME-Version: 1.0
X-Received: by 10.112.156.42 with SMTP id wb10mr2917613lbb.32.1364852313735;
	Mon, 01 Apr 2013 14:38:33 -0700 (PDT)
Received: by 10.112.22.9 with HTTP; Mon, 1 Apr 2013 14:38:33 -0700 (PDT)
In-Reply-To: <1364499172-28976-3-git-send-email-michel.thebeau@windriver.com>
References: <1364499172-28976-1-git-send-email-michel.thebeau@windriver.com>
	<1364499172-28976-3-git-send-email-michel.thebeau@windriver.com>
Date: Mon, 1 Apr 2013 23:38:33 +0200
Message-ID: <CAAQYJAs3DfFf-TyNwXHx1ChDoqQNeTWVDyP5O2_oaH2XNGU_Bg@mail.gmail.com>
From: Andrea Adami <andrea.adami@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [OE-core] [PATCH 2/2] kernel.bbclass: do_sizecheck: update path to build image and do not delete
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
X-List-Received-Date: Mon, 01 Apr 2013 21:38:35 -0000
Content-Type: multipart/alternative; boundary=089e012296f254c66e04d9537153

--089e012296f254c66e04d9537153
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Mar 28, 2013 at 8:32 PM, <michel.thebeau@windriver.com> wrote:

> From: Michel Thebeau <michel.thebeau@windriver.com>
>
> do_sizecheck has been around for a while but looks to have been unused.
>


FYI in meta-handheld [1] we are building for challenged devices allowing
max 1,2 or even 1,0 MB kernel size and the check has always be done
properly.
So any improvement is allowed but please don't break the things ;)

Cheers

Andrea

[1]
http://cgit.openembedded.org/meta-handheld/tree/recipes-kernel/linux/linux-yocto-tiny-kexecboot_3.2.bbappend



There are a few issues.
>
> It breaks because KERNEL_OUTPUT is a path relative to ${B}, and
> resolves to a soft link to ${B}/${KERNEL_IMAGETYPE}.  When
> do_sizecheck runs it does not find the file (because the working
> directory is elsewhere) and does not fail.
>
> Also, when do_sizecheck deletes the oversized kernel image it leaves
> the previously run do_compile task with inaccurate status.
>
> So, do the following:
>  - keep the oversized image file so the status of do_compile is valid
>  - specify the full path with ${B} to break the dependency on working
>    directory
>  - test for the image file in two typical locations and print a
>    "not supported" warning when it is not found
>  - finally, print a note that the size check was run successfully
>
> [YOCTO #3514]
>
> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> Signed-off-by: Michel Thebeau <michel.thebeau@windriver.com>
> ---
>  meta/classes/kernel.bbclass |   25 +++++++++++++++++++++----
>  1 file changed, 21 insertions(+), 4 deletions(-)
>
> diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
> index 6f988e7..d25d98a 100644
> --- a/meta/classes/kernel.bbclass
> +++ b/meta/classes/kernel.bbclass
> @@ -300,10 +300,27 @@ python split_kernel_packages () {
>  # with a fixed length or there is a limit in transferring the kernel to
> memory
>  do_sizecheck() {
>         if [ ! -z "${KERNEL_IMAGE_MAXSIZE}" ]; then
> -               size=`ls -l ${KERNEL_OUTPUT} | awk '{ print $5}'`
> -               if [ $size -ge ${KERNEL_IMAGE_MAXSIZE} ]; then
> -                       rm ${KERNEL_OUTPUT}
> -                       die "This kernel (size=$size >
> ${KERNEL_IMAGE_MAXSIZE}) is too big for your device. Please reduce the size
> of the kernel by making more of it modular."
> +               if [ -f ${B}/${KERNEL_OUTPUT} ]; then
> +                       # vmlinux.bin is usually found here
> +                       koutf="${B}/${KERNEL_OUTPUT}"
> +               elif [ -f ${B}/${KERNEL_IMAGETYPE} ]; then
> +                       # vmlinux is usually found here
> +                       koutf="${B}/${KERNEL_IMAGETYPE}"
> +               else
> +                       # if we're lucky we'll catch some other image
> +                       # types in the previous conditions; otherwise:
> +                       koutf=""
> +               fi
> +
> +               if [ -z "$koutf" ]; then
> +                       bbwarn "KERNEL_IMAGE_MAXSIZE enabled but" \
> +                              "${KERNEL_IMAGETYPE} not supported (or not
> found)"
> +               else
> +                       size=`ls -l $koutf | awk '{ print $5}'`
> +                       if [ $size -ge ${KERNEL_IMAGE_MAXSIZE} ]; then
> +                               die "This kernel (size=$size >
> ${KERNEL_IMAGE_MAXSIZE}) is too big for your device. Please reduce the size
> of the kernel by making more of it modular."
> +                       fi
> +                       bbnote "kernel image size check... done"
>                 fi
>         fi
>  }
> --
> 1.7.9.7
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--089e012296f254c66e04d9537153
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Thu, Mar 28, 2013 at 8:32 PM,  <span dir=3D"ltr">&lt;<a href=3D"=
mailto:michel.thebeau@windriver.com" target=3D"_blank">michel.thebeau@windr=
iver.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px;=
margin-bottom:0px;margin-left:0.8ex;border-left-width:1px;border-left-color=
:rgb(204,204,204);border-left-style:solid;padding-left:1ex">From: Michel Th=
ebeau &lt;<a href=3D"mailto:michel.thebeau@windriver.com">michel.thebeau@wi=
ndriver.com</a>&gt;<br>

<br>
do_sizecheck has been around for a while but looks to have been unused.<br>=
</blockquote><div><br></div><div><br></div><div style>FYI in meta-handheld =
[1] we are building for challenged devices allowing max 1,2 or even 1,0 MB =
kernel size and the check has always be done properly.</div>
<div style>So any improvement is allowed but please don&#39;t break the thi=
ngs ;)</div><div style><br></div><div style>Cheers</div><div style><br></di=
v><div style>Andrea</div><div><br></div><div>[1] <a href=3D"http://cgit.ope=
nembedded.org/meta-handheld/tree/recipes-kernel/linux/linux-yocto-tiny-kexe=
cboot_3.2.bbappend">http://cgit.openembedded.org/meta-handheld/tree/recipes=
-kernel/linux/linux-yocto-tiny-kexecboot_3.2.bbappend</a>=A0</div>
<div><br></div><div><br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;border-le=
ft-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;pad=
ding-left:1ex">

There are a few issues.<br>
<br>
It breaks because KERNEL_OUTPUT is a path relative to ${B}, and<br>
resolves to a soft link to ${B}/${KERNEL_IMAGETYPE}. =A0When<br>
do_sizecheck runs it does not find the file (because the working<br>
directory is elsewhere) and does not fail.<br>
<br>
Also, when do_sizecheck deletes the oversized kernel image it leaves<br>
the previously run do_compile task with inaccurate status.<br>
<br>
So, do the following:<br>
=A0- keep the oversized image file so the status of do_compile is valid<br>
=A0- specify the full path with ${B} to break the dependency on working<br>
=A0 =A0directory<br>
=A0- test for the image file in two typical locations and print a<br>
=A0 =A0&quot;not supported&quot; warning when it is not found<br>
=A0- finally, print a note that the size check was run successfully<br>
<br>
[YOCTO #3514]<br>
<br>
Signed-off-by: Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfield@windrive=
r.com">bruce.ashfield@windriver.com</a>&gt;<br>
Signed-off-by: Michel Thebeau &lt;<a href=3D"mailto:michel.thebeau@windrive=
r.com">michel.thebeau@windriver.com</a>&gt;<br>
---<br>
=A0meta/classes/kernel.bbclass | =A0 25 +++++++++++++++++++++----<br>
=A01 file changed, 21 insertions(+), 4 deletions(-)<br>
<br>
diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass<br>
index 6f988e7..d25d98a 100644<br>
--- a/meta/classes/kernel.bbclass<br>
+++ b/meta/classes/kernel.bbclass<br>
@@ -300,10 +300,27 @@ python split_kernel_packages () {<br>
=A0# with a fixed length or there is a limit in transferring the kernel to =
memory<br>
=A0do_sizecheck() {<br>
=A0 =A0 =A0 =A0 if [ ! -z &quot;${KERNEL_IMAGE_MAXSIZE}&quot; ]; then<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 size=3D`ls -l ${KERNEL_OUTPUT} | awk &#39;{ p=
rint $5}&#39;`<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 if [ $size -ge ${KERNEL_IMAGE_MAXSIZE} ]; the=
n<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 rm ${KERNEL_OUTPUT}<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 die &quot;This kernel (size=
=3D$size &gt; ${KERNEL_IMAGE_MAXSIZE}) is too big for your device. Please r=
educe the size of the kernel by making more of it modular.&quot;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 if [ -f ${B}/${KERNEL_OUTPUT} ]; then<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 # vmlinux.bin is usually foun=
d here<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 koutf=3D&quot;${B}/${KERNEL_O=
UTPUT}&quot;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 elif [ -f ${B}/${KERNEL_IMAGETYPE} ]; then<br=
>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 # vmlinux is usually found he=
re<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 koutf=3D&quot;${B}/${KERNEL_I=
MAGETYPE}&quot;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 else<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 # if we&#39;re lucky we&#39;l=
l catch some other image<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 # types in the previous condi=
tions; otherwise:<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 koutf=3D&quot;&quot;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 fi<br>
+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 if [ -z &quot;$koutf&quot; ]; then<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 bbwarn &quot;KERNEL_IMAGE_MAX=
SIZE enabled but&quot; \<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&quot;${KERNEL=
_IMAGETYPE} not supported (or not found)&quot;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 else<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 size=3D`ls -l $koutf | awk &#=
39;{ print $5}&#39;`<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if [ $size -ge ${KERNEL_IMAGE=
_MAXSIZE} ]; then<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 die &quot;Thi=
s kernel (size=3D$size &gt; ${KERNEL_IMAGE_MAXSIZE}) is too big for your de=
vice. Please reduce the size of the kernel by making more of it modular.&qu=
ot;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 fi<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 bbnote &quot;kernel image siz=
e check... done&quot;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 fi<br>
=A0 =A0 =A0 =A0 fi<br>
=A0}<br>
<span class=3D""><font color=3D"#888888">--<br>
1.7.9.7<br>
<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</font></span></blockquote></div><br></div></div>

--089e012296f254c66e04d9537153--
