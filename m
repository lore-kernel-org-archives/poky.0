Return-Path: <vsailub4u@gmail.com>
Received: from mail-pz0-f43.google.com (mail-pz0-f43.google.com
	[209.85.210.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4C8DE011ED
	for <poky@yoctoproject.org>; Thu, 11 Aug 2011 22:44:19 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk1 with SMTP id 1so671763pzk.16
	for <poky@yoctoproject.org>; Thu, 11 Aug 2011 22:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=C3nivBVbDIarPq0epZEoG5TWn3g5bz5cTrfd/TbFU50=;
	b=STG/Uw5nw8thWAjXLD+OFvWs94lFRGLTx20C+VBA3UWrUQuSwcQtn3Mwb+fMXOOlxg
	JCFC6cLZfui4ASMDh8ykKvP784b0gsyPQ695gGGSQBHtzFxhHKIJ8BmSB8tBI1ZnNjma
	sAgQpU9OeDhCQx4Y3We2B4ySoI4KUnWgVFWms=
MIME-Version: 1.0
Received: by 10.143.92.20 with SMTP id u20mr282703wfl.279.1313127869505; Thu,
	11 Aug 2011 22:44:29 -0700 (PDT)
Received: by 10.142.231.10 with HTTP; Thu, 11 Aug 2011 22:44:29 -0700 (PDT)
In-Reply-To: <CAFt-coztLFfvmbB0fAY4Pmtcy-8AOaOvhqMg=JoQ5VKPWz-GeQ@mail.gmail.com>
References: <CAFt-coyFKC+d0qYtyO7_NZ-SZU16bbv+6geeXD+d4YCdSc5N1A@mail.gmail.com>
	<CADkTA4MULaQ+cJS7K3eB1NhPiLo7s6Yb5_OO4a=tJTvxOy2=kg@mail.gmail.com>
	<CAFt-coztLFfvmbB0fAY4Pmtcy-8AOaOvhqMg=JoQ5VKPWz-GeQ@mail.gmail.com>
Date: Fri, 12 Aug 2011 11:14:29 +0530
Message-ID: <CAFt-cowDU2Jru9DZp5AmmSHjpi6gDSgVWzrt=6n5ch=NJJ3XaQ@mail.gmail.com>
From: v sailaja <vsailub4u@gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>, poky@yoctoproject.org
Subject: Error for upgrading linux-yocto version from 3.0 to 3.0.1 for fishriver machine.
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
X-List-Received-Date: Fri, 12 Aug 2011 05:44:20 -0000
Content-Type: multipart/alternative; boundary=00151758b26c34df4604aa486882

--00151758b26c34df4604aa486882
Content-Type: text/plain; charset=ISO-8859-1

Hi Bruce,

   I replaced the version number 3.0 in the "linux-yocto_3.0.bb"  file  as
you said. I just tried.
   But  still I am facing the same error.

   I Included the SRCREV s in the file
"meta-intel/meta-fishriver/conf/machine/fishriver.conf "

   SRCREV_machine_pn-linux-yocto_fishriver ?=
"c111526f70815ceff495bab07df64c0cee494d8a"
   SRCREV_meta_pn-linux-yocto_fishriver ?=
"55f9c40ff632d03c527d6a6ceddcda0a224587a6"


  Can you please tell me,  Are these SRCREV s for "fishriver" machine for
v3.0.1 kernel??


On Thu, Aug 11, 2011 at 9:58 PM, Bruce Ashfield <bruce.ashfield@gmail.com>wrote:

> On Thu, Aug 11, 2011 at 9:50 AM, v sailaja <vsailub4u@gmail.com> wrote:
> > Hi,
> > I am trying to build the poky with  linux-yocto kernel v3.0.1 for
> fishriver
> > machine.
> >
> > I modyfied the the linux-yocto_3.0.bb  as follows.
> >
> >
> > -----------ooooooooooooo----------------------------
> > inherit kernel
> > require linux-yocto.inc
> > KMACHINE = "yocto/standard/base"
> > KMACHINE_qemux86  = "yocto/standard/common-pc/base"
> > KMACHINE_qemux86-64  = "yocto/standard/common-pc-64/base"
> > KMACHINE_qemuppc  = "yocto/standard/qemu-ppc32"
> > KMACHINE_qemumips = "yocto/standard/mti-malta32-be"
> > KMACHINE_qemuarm  = "yocto/standard/arm-versatile-926ejs"
> > KMACHINE_atom-pc  = "yocto/standard/common-pc/atom-pc"
> > KMACHINE_routerstationpro = "yocto/standard/routerstationpro"
> > KMACHINE_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
> > KMACHINE_beagleboard = "yocto/standard/beagleboard"
> > KMACHINE_fishriver = "yocto/standard/fishriver"
> > KBRANCH = ${KMACHINE}
> > KMETA = meta
> > LINUX_VERSION ?= "3.0.1"
> > LINUX_VERSION_EXTENSION ?= "-yocto-${LINUX_KERNEL_TYPE}"
> > PR = "r0"
> > PV = "${LINUX_VERSION}+git${SRCPV}"
> > SRCREV_FORMAT = "meta_machine"
> > SRC_URI =
> > "git://
> git.pokylinux.org/linux-yocto-3.0;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta<http://git.pokylinux.org/linux-yocto-3.0;protocol=git;nocheckout=1;branch=$%7BKBRANCH%7D,meta;name=machine,meta>
> "
> >
> > COMPATIBLE_MACHINE =
> >
> "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|mpc8315e-rdb|routerstationpro|beagleboard)"
> > # Functionality flags
> > KERNEL_REVISION_CHECKING ?= "t"
> > KERNEL_FEATURES="features/netfilter"
> > KERNEL_FEATURES_append_qemux86=" cfg/sound"
> > KERNEL_FEATURES_append_qemux86-64=" cfg/sound"
> > YOCTO_KERNEL_META_DATA=t
> > # Temporary fix for oprofile and latencytop on qemux86-64
> > KERNEL_FEATURES_append_qemux86-64=" features/profiling"
> > KERNEL_FEATURES_append_qemux86-64=" features/latencytop"
> > # extra tasks
> > addtask kernel_link_vmlinux after do_compile before do_install
> > addtask validate_branches before do_patch after do_kernel_checkout
> > addtask kernel_configcheck after do_configure before do_compile
> > require linux-tools.inc
> >
> > -----------------------------end of the file-----------------------
> >
> >
> > Included the SRCREV s in the file
> > "meta-intel/meta-fishriver/conf/machine/fishriver.conf "
> > SRCREV_machine_pn-linux-yocto_fishriver ?=
> > "c111526f70815ceff495bab07df64c0cee494d8a"
> > SRCREV_meta_pn-linux-yocto_fishriver ?=
> > "55f9c40ff632d03c527d6a6ceddcda0a224587a6"
> >
> >
> > Source has downloaded properly. But I am getting an error in "do_patch".
> > If i do the "git status" in
> >
> "build/tmp/work/fishriver-poky-linux/linux-yocto-3.0.1+git2+55f9c40ff632d03c527d6a6ceddcda0a224587a6_2+c111526f70815ceff495bab07df64c0cee494d8a-r0/linux/
> > "
> > It is showing many files are modified and deleted.
> >
> > Please find the attached files for "run.do_patch", "log.do_patch" and
> "git
> > status "
> >
> > Please Can anyone tell me the steps to upgrade the linux-yocto kernel to
> > v3.0.1.
>
> The upgrade should already be in place. I pushed out that set of updates
> last week.
>
> Note: as part of that update, I explicitly mentioned that I wasn't changing
> the base version to 3.0.1 in the files, since we hand't been doing that
> for 2.6.34 or 2.6.37.
>
> I'm about to send another update that adds preempt-rt support on top of
> 3.0.1, so you might want to just wait and pickup those changes as well.


> The error that you are seeing is because the wrong branch was checked
> out, and hence you end up with conflicting files during the merge.
>
> Bruce
>
> >
> >
> >
> >
> > --
> > Thanks & Regards,
> > SAI
> >
> >
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
> >
> >
>
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end"
>



-- 
Thanks & Regards,
SAI




-- 
Thanks & Regards,
SAI

--00151758b26c34df4604aa486882
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote"><br><div>Hi Bruce,</div><div><br></div><div><div=
>=A0 =A0I replaced the version number 3.0 in the &quot;<a href=3D"http://li=
nux-yocto_3.0.bb" target=3D"_blank">linux-yocto_3.0.bb</a>&quot; =A0file =
=A0as you said. I just tried.</div>

<div>=A0 =A0But =A0still I am facing the same error.</div></div><div>=A0</d=
iv><div>=A0 =A0I=A0<span style=3D"border-collapse:collapse;font-family:aria=
l, sans-serif;font-size:14px">Included the SRCREV s in the file &quot;meta-=
intel/meta-fishriver/conf/machine/fishriver.conf &quot;</span></div>
<div class=3D"im">
<span style=3D"border-collapse:collapse;font-family:arial, sans-serif;font-=
size:13px"><div><br></div><div><div>=A0 =A0SRCREV_machine_pn-linux-yocto_fi=
shriver ?=3D &quot;c111526f70815ceff495bab07df64c0cee494d8a&quot;=A0</div>
<div>=A0 =A0SRCREV_meta_pn-linux-yocto_fishriver ?=3D &quot;55f9c40ff632d03=
c527d6a6ceddcda0a224587a6&quot;</div></div><div><br></div></span><font face=
=3D"arial, sans-serif"><span style=3D"border-collapse:collapse;font-size:15=
px"><br>

</span></font></div><span style=3D"border-collapse:collapse;font-family:ari=
al, sans-serif;font-size:13px"><div>=A0 Can you please tell me, =A0Are thes=
e SRCREV s for &quot;fishriver&quot; machine for v3.0.1 kernel??</div>
</span><div><br></div><div><br></div><div class=3D"gmail_quote"><div class=
=3D"im">On Thu, Aug 11, 2011 at 9:58 PM, Bruce Ashfield <span dir=3D"ltr">&=
lt;<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruce.ashf=
ield@gmail.com</a>&gt;</span> wrote:<br>

</div><div><div></div><div class=3D"h5"><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div=
><div></div><div>On Thu, Aug 11, 2011 at 9:50 AM, v sailaja &lt;<a href=3D"=
mailto:vsailub4u@gmail.com" target=3D"_blank">vsailub4u@gmail.com</a>&gt; w=
rote:<br>


&gt; Hi,<br>
&gt; I am trying to build the poky with =A0linux-yocto kernel v3.0.1 for fi=
shriver<br>
&gt; machine.<br>
&gt;<br>
&gt; I modyfied the the <a href=3D"http://linux-yocto_3.0.bb" target=3D"_bl=
ank">linux-yocto_3.0.bb</a> =A0as follows.<br>
&gt;<br>
&gt;<br>
&gt; -----------ooooooooooooo----------------------------<br>
&gt; inherit kernel<br>
&gt; require linux-yocto.inc<br>
&gt; KMACHINE =3D &quot;yocto/standard/base&quot;<br>
&gt; KMACHINE_qemux86 =A0=3D &quot;yocto/standard/common-pc/base&quot;<br>
&gt; KMACHINE_qemux86-64 =A0=3D &quot;yocto/standard/common-pc-64/base&quot=
;<br>
&gt; KMACHINE_qemuppc =A0=3D &quot;yocto/standard/qemu-ppc32&quot;<br>
&gt; KMACHINE_qemumips =3D &quot;yocto/standard/mti-malta32-be&quot;<br>
&gt; KMACHINE_qemuarm =A0=3D &quot;yocto/standard/arm-versatile-926ejs&quot=
;<br>
&gt; KMACHINE_atom-pc =A0=3D &quot;yocto/standard/common-pc/atom-pc&quot;<b=
r>
&gt; KMACHINE_routerstationpro =3D &quot;yocto/standard/routerstationpro&qu=
ot;<br>
&gt; KMACHINE_mpc8315e-rdb =3D &quot;yocto/standard/fsl-mpc8315e-rdb&quot;<=
br>
&gt; KMACHINE_beagleboard =3D &quot;yocto/standard/beagleboard&quot;<br>
&gt; KMACHINE_fishriver =3D &quot;yocto/standard/fishriver&quot;<br>
&gt; KBRANCH =3D ${KMACHINE}<br>
&gt; KMETA =3D meta<br>
&gt; LINUX_VERSION ?=3D &quot;3.0.1&quot;<br>
&gt; LINUX_VERSION_EXTENSION ?=3D &quot;-yocto-${LINUX_KERNEL_TYPE}&quot;<b=
r>
&gt; PR =3D &quot;r0&quot;<br>
&gt; PV =3D &quot;${LINUX_VERSION}+git${SRCPV}&quot;<br>
&gt; SRCREV_FORMAT =3D &quot;meta_machine&quot;<br>
&gt; SRC_URI =3D<br>
&gt; &quot;git://<a href=3D"http://git.pokylinux.org/linux-yocto-3.0;protoc=
ol=3Dgit;nocheckout=3D1;branch=3D$%7BKBRANCH%7D,meta;name=3Dmachine,meta" t=
arget=3D"_blank">git.pokylinux.org/linux-yocto-3.0;protocol=3Dgit;nocheckou=
t=3D1;branch=3D${KBRANCH},meta;name=3Dmachine,meta</a>&quot;<br>


&gt;<br>
&gt; COMPATIBLE_MACHINE =3D<br>
&gt; &quot;(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|mpc8315e-rdb|router=
stationpro|beagleboard)&quot;<br>
&gt; # Functionality flags<br>
&gt; KERNEL_REVISION_CHECKING ?=3D &quot;t&quot;<br>
&gt; KERNEL_FEATURES=3D&quot;features/netfilter&quot;<br>
&gt; KERNEL_FEATURES_append_qemux86=3D&quot; cfg/sound&quot;<br>
&gt; KERNEL_FEATURES_append_qemux86-64=3D&quot; cfg/sound&quot;<br>
&gt; YOCTO_KERNEL_META_DATA=3Dt<br>
&gt; # Temporary fix for oprofile and latencytop on qemux86-64<br>
&gt; KERNEL_FEATURES_append_qemux86-64=3D&quot; features/profiling&quot;<br=
>
&gt; KERNEL_FEATURES_append_qemux86-64=3D&quot; features/latencytop&quot;<b=
r>
&gt; # extra tasks<br>
&gt; addtask kernel_link_vmlinux after do_compile before do_install<br>
&gt; addtask validate_branches before do_patch after do_kernel_checkout<br>
&gt; addtask kernel_configcheck after do_configure before do_compile<br>
&gt; require linux-tools.inc<br>
&gt;<br>
&gt; -----------------------------end of the file-----------------------<br=
>
&gt;<br>
&gt;<br>
&gt; Included the SRCREV s in the file<br>
&gt; &quot;meta-intel/meta-fishriver/conf/machine/fishriver.conf &quot;<br>
&gt; SRCREV_machine_pn-linux-yocto_fishriver ?=3D<br>
&gt; &quot;c111526f70815ceff495bab07df64c0cee494d8a&quot;<br>
&gt; SRCREV_meta_pn-linux-yocto_fishriver ?=3D<br>
&gt; &quot;55f9c40ff632d03c527d6a6ceddcda0a224587a6&quot;<br>
&gt;<br>
&gt;<br>
&gt; Source has downloaded properly. But I am getting an error in &quot;do_=
patch&quot;.<br>
&gt; If i do the &quot;git status&quot; in<br>
&gt; &quot;build/tmp/work/fishriver-poky-linux/linux-yocto-3.0.1+git2+55f9c=
40ff632d03c527d6a6ceddcda0a224587a6_2+c111526f70815ceff495bab07df64c0cee494=
d8a-r0/linux/<br>
&gt; &quot;<br>
&gt; It is showing many files are modified and deleted.<br>
&gt;<br>
&gt; Please find the attached files for &quot;run.do_patch&quot;, &quot;log=
.do_patch&quot; and &quot;git<br>
&gt; status &quot;<br>
&gt;<br>
&gt; Please Can anyone tell me the steps to upgrade the linux-yocto kernel =
to<br>
&gt; v3.0.1.<br>
<br>
</div></div>The upgrade should already be in place. I pushed out that set o=
f updates<br>
last week.<br>
<br>
Note: as part of that update, I explicitly mentioned that I wasn&#39;t chan=
ging<br>
the base version to 3.0.1 in the files, since we hand&#39;t been doing that=
<br>
for 2.6.34 or 2.6.37.<br>
<br>
I&#39;m about to send another update that adds preempt-rt support on top of=
<br>
3.0.1, so you might want to just wait and pickup those changes as well.</bl=
ockquote></div></div><div class=3D"im"><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

<br>
The error that you are seeing is because the wrong branch was checked<br>
out, and hence you end up with conflicting files during the merge.<br>
<br>
Bruce<br>
<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; Thanks &amp; Regards,<br>
&gt; SAI<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; poky mailing list<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctop=
roject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_bl=
ank">https://lists.yoctoproject.org/listinfo/poky</a><br>
&gt;<br>
&gt;<br>
<font color=3D"#888888"><br>
<br>
<br>
--<br>
&quot;Thou shalt not follow the NULL pointer, for chaos and madness await<b=
r>
thee at its end&quot;<br>
</font></blockquote></div></div><font color=3D"#888888"><br><br clear=3D"al=
l"><br>-- <br>Thanks &amp; Regards,<br>SAI<br><br>
</font></div><br><br clear=3D"all"><br>-- <br>Thanks &amp; Regards,<br>SAI<=
br><br>

--00151758b26c34df4604aa486882--
