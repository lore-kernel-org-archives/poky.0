Return-Path: <vishwasonu2000@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3ABD2E013B2
	for <poky@yoctoproject.org>; Fri, 14 Oct 2011 01:33:16 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwf5 with SMTP id 5so2714998wwf.11
	for <poky@yoctoproject.org>; Fri, 14 Oct 2011 01:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=R03zveJAopZBsg85HYzs01IIrJ7jKcHXd+Y1XkxOz54=;
	b=SWan7qs7hBMHyHrHryD9csFCRa9duVSuNVTUYAbu71Lzzae+aUp8ZmbPQaPBlyDdxM
	yE33Z6KcWIllrwhmvaGdZ98Ey5b4U0Eu611dX23Z1/nRm6Qu1eoRXHA0h4OXa+0tMhhi
	vi1FloI5GTg3r/SxYiaUum6gv80MqPfFzZAGI=
MIME-Version: 1.0
Received: by 10.216.50.143 with SMTP id z15mr1273299web.16.1318581194119; Fri,
	14 Oct 2011 01:33:14 -0700 (PDT)
Received: by 10.180.86.167 with HTTP; Fri, 14 Oct 2011 01:33:13 -0700 (PDT)
In-Reply-To: <CAMKF1sqe-Y2=cqg4wz=DZXys_XizyiWqd26W3AvEWkD=j=SUUQ@mail.gmail.com>
References: <CABRtByO8SsdAQm+0dH9N946MN8nMXnfGQAbMjAYV1hu4U9rBnQ@mail.gmail.com>
	<6423790F-59AC-4742-9951-6AE5E1570736@dominion.thruhere.net>
	<CABRtByMv-ZyuuO_+BA96w-ZM51ARynDjRom-N6Fmng7eQWEpJA@mail.gmail.com>
	<2B72F198-5F75-4D2C-82AE-B385274B4D35@dominion.thruhere.net>
	<CABRtByMau9WGzTwHuwk8MJr52MK2E+HqRMunpDB22S-6tf=Ztw@mail.gmail.com>
	<CABRtByNzfG_JRW8shYhH6bPqXv_GjwoG2FaBZxVT=ftrco_5xA@mail.gmail.com>
	<CAMKF1sqe-Y2=cqg4wz=DZXys_XizyiWqd26W3AvEWkD=j=SUUQ@mail.gmail.com>
Date: Fri, 14 Oct 2011 14:03:13 +0530
Message-ID: <CABRtByM3vbA_fAObyna8n8WrPz-pj24JHnrGGqxs0usebDXDnA@mail.gmail.com>
From: sonu vishwakarma <vishwasonu2000@gmail.com>
To: Khem Raj <raj.khem@gmail.com>, poky@yoctoproject.org
Subject: Re: : package libsdl-mixer-1.2.11-r5: task do_compile: Failed
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
X-List-Received-Date: Fri, 14 Oct 2011 08:33:17 -0000
Content-Type: multipart/alternative; boundary=0016e6db7bacaedb3004af3e1b7f

--0016e6db7bacaedb3004af3e1b7f
Content-Type: text/plain; charset=ISO-8859-1

Can i get some idea on how to do that ??

On Fri, Oct 14, 2011 at 5:18 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On Wed, Oct 12, 2011 at 10:46 PM, sonu vishwakarma
> <vishwasonu2000@gmail.com> wrote:
> >
> >
> > On Thu, Oct 13, 2011 at 11:13 AM, sonu vishwakarma
> > <vishwasonu2000@gmail.com> wrote:
> >>
> >> Hi,
> >> I tried the build using the recipe from meta-oe but still the error
> >> remains the same .
>
> It might need to regenerate libtool macros to support sysroot
>
> >> ./libtool: line 6399: cd: =/usr/lib: No such file or directory
> >> I think the problem is with the path '=/usr/lib'
> >> I found a patch to libtool
> >> 'libtool-2.4-r2/libtool-2.4/libltdl/config/ltmain.m4sh'
> >> that describes a function " if PATH begins with the sysroot replace it
> >> with = ",
> >> this may be creating the problem , the function is as below:
> >>  #func_replace_sysroot PATH
> >>  #If PATH begins with the sysroot, replace it with = and
> >>  #store the result into func_replace_sysroot_result.
> >> func_replace_sysroot ()
> >> {
> >>   case "$lt_sysroot:$1" in
> >>   ?*:"$lt_sysroot"*)
> >>     func_stripname "$lt_sysroot" '' "$1"
> >>     func_replace_sysroot_result="=$func_stripname_result"
> >>     ;;
> >>   *)
> >>     # Including no sysroot.
> >>     func_replace_sysroot_result=$1
> >>     ;;
> >>   esac
> >> }
> >> Also in the libSDL.la i could see the definition of dependency_libs that
> >> include "=/usr/lib.
> >> What to do now ? i couldn't find a solution to this .
> >> Thanks & Regards,
> >> Sonu
> >>
> >> On Wed, Oct 12, 2011 at 3:59 PM, Koen Kooi <koen@dominion.thruhere.net>
> >> wrote:
> >>>
> >>> Op 12 okt. 2011, om 12:18 heeft sonu vishwakarma het volgende
> geschreven:
> >>>
> >>> >
> >>> > But i'm using the recipe libsdl-mixer_1.2.11.bb taken from
> >>> > open-embedded only . I Couldn't get meta-oe , where could i find
> it????
> >>>
> >>> Try http://tinyurl.com/5wpezm3
> >>>
> >>>
> >>>
> >>> >
> >>> > Thanks & Regards,
> >>> > Sonu.
> >>> >
> >>> > On Wed, Oct 12, 2011 at 3:16 PM, Koen Kooi <
> koen@dominion.thruhere.net>
> >>> > wrote:
> >>> >
> >>> > Op 12 okt. 2011, om 07:11 heeft sonu vishwakarma het volgende
> >>> > geschreven:
> >>> >
> >>> > > Hi,
> >>> > >
> >>> > > I'm trying the build for XBMC 10.05 which depends on libsdl-mixer.
> I
> >>> > > pulled the recipe from open embedded which i'm
> >>> > > sharing here along with the log file.
> >>> > > I'm getting the error as below :
> >>> > >
> >>> > > | ./libtool: line 6399: cd: =/usr/lib: No such file or directory
> >>> > > | libtool: link: warning: cannot determine absolute directory name
> of
> >>> > > `=/usr/lib'
> >>> > > | /bin/grep: =/usr/lib/libdirectfb.la: No such file or directory
> >>> > > | /bin/sed: can't read =/usr/lib/libdirectfb.la: No such file or
> >>> > > directory
> >>> > > | libtool: link: `=/usr/lib/libdirectfb.la' is not a valid libtool
> >>> > > archive
> >>> > > | make: *** [build/libSDL_mixer.la] Error 1
> >>> > > | make: *** Waiting for unfinished jobs....
> >>> > > | FATAL: oe_runmake failed
> >>> > > | ERROR: Function 'do_compile' failed (see
> >>> > >
> /home/sct/logi/test-gigabyte/poky_gigabyte_16Sep2011/build/tmp/work/atom-poky-linux/libsdl-mixer-1.2.11-r5/temp/log.do_compile.23677
> >>> > > for further information)
> >>> > > NOTE: package libsdl-mixer-1.2.11-r5: task do_compile: Failed
> >>> > >
> >>> > > I'm pulling for the Fishriver machine . My host machine is Ubuntu
> >>> > > 10.10 ,64 bit .
> >>> > > Can someone help me out of this problem ?
> >>> >
> >>> >
> >>> > The libsdl-mixer recipe in meta-oe works just fine, why not use that?
> >>> >
> >>> >
> >>> > _______________________________________________
> >>> > poky mailing list
> >>> > poky@yoctoproject.org
> >>> > https://lists.yoctoproject.org/listinfo/poky
> >>> >
> >>>
> >>> _______________________________________________
> >>> poky mailing list
> >>> poky@yoctoproject.org
> >>> https://lists.yoctoproject.org/listinfo/poky
> >>
> >
> >
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
> >
> >
>

--0016e6db7bacaedb3004af3e1b7f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Can i get some idea on how to do that ??=A0<br><br><div class=3D"gmail_quot=
e">On Fri, Oct 14, 2011 at 5:18 AM, Khem Raj <span dir=3D"ltr">&lt;<a href=
=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt;</span> wrote:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;">
<div class=3D"im">On Wed, Oct 12, 2011 at 10:46 PM, sonu vishwakarma<br>
&lt;<a href=3D"mailto:vishwasonu2000@gmail.com">vishwasonu2000@gmail.com</a=
>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt; On Thu, Oct 13, 2011 at 11:13 AM, sonu vishwakarma<br>
&gt; &lt;<a href=3D"mailto:vishwasonu2000@gmail.com">vishwasonu2000@gmail.c=
om</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hi,<br>
&gt;&gt; I tried the build using the recipe from meta-oe but still the erro=
r<br>
&gt;&gt; remains the same .<br>
<br>
</div>It might need to regenerate libtool macros to support sysroot<br>
<div><div></div><div class=3D"h5"><br>
&gt;&gt; ./libtool: line 6399: cd: =3D/usr/lib: No such file or directory<b=
r>
&gt;&gt; I think the problem is with the path &#39;=3D/usr/lib&#39;<br>
&gt;&gt; I found a patch to libtool<br>
&gt;&gt; &#39;libtool-2.4-r2/libtool-2.4/libltdl/config/ltmain.m4sh&#39;<br=
>
&gt;&gt; that describes a function &quot; if PATH begins with the sysroot r=
eplace it<br>
&gt;&gt; with =3D &quot;,<br>
&gt;&gt; this=A0may be creating the problem , the function is as below:<br>
&gt;&gt; =A0#func_replace_sysroot PATH<br>
&gt;&gt; =A0#If PATH begins with the sysroot, replace it with =3D and<br>
&gt;&gt; =A0#store the result into func_replace_sysroot_result.<br>
&gt;&gt; func_replace_sysroot ()<br>
&gt;&gt; {<br>
&gt;&gt; =A0 case &quot;$lt_sysroot:$1&quot; in<br>
&gt;&gt; =A0 ?*:&quot;$lt_sysroot&quot;*)<br>
&gt;&gt; =A0 =A0 func_stripname &quot;$lt_sysroot&quot; &#39;&#39; &quot;$1=
&quot;<br>
&gt;&gt; =A0 =A0 func_replace_sysroot_result=3D&quot;=3D$func_stripname_res=
ult&quot;<br>
&gt;&gt; =A0 =A0 ;;<br>
&gt;&gt; =A0 *)<br>
&gt;&gt; =A0 =A0 # Including no sysroot.<br>
&gt;&gt; =A0 =A0 func_replace_sysroot_result=3D$1<br>
&gt;&gt; =A0 =A0 ;;<br>
&gt;&gt; =A0 esac<br>
&gt;&gt; }<br>
&gt;&gt; Also in the=A0libSDL.la i could see the definition of dependency_l=
ibs that<br>
&gt;&gt; include &quot;=3D/usr/lib.<br>
&gt;&gt; What to do now ? i couldn&#39;t find a solution to this .<br>
&gt;&gt; Thanks &amp; Regards,<br>
&gt;&gt; Sonu<br>
&gt;&gt;<br>
&gt;&gt; On Wed, Oct 12, 2011 at 3:59 PM, Koen Kooi &lt;<a href=3D"mailto:k=
oen@dominion.thruhere.net">koen@dominion.thruhere.net</a>&gt;<br>
&gt;&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Op 12 okt. 2011, om 12:18 heeft sonu vishwakarma het volgende =
geschreven:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; But i&#39;m using the recipe <a href=3D"http://libsdl-mix=
er_1.2.11.bb" target=3D"_blank">libsdl-mixer_1.2.11.bb</a> taken from<br>
&gt;&gt;&gt; &gt; open-embedded only . I Couldn&#39;t get meta-oe , where c=
ould i find it????<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Try <a href=3D"http://tinyurl.com/5wpezm3" target=3D"_blank">h=
ttp://tinyurl.com/5wpezm3</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Thanks &amp; Regards,<br>
&gt;&gt;&gt; &gt; Sonu.<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; On Wed, Oct 12, 2011 at 3:16 PM, Koen Kooi &lt;<a href=3D=
"mailto:koen@dominion.thruhere.net">koen@dominion.thruhere.net</a>&gt;<br>
&gt;&gt;&gt; &gt; wrote:<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Op 12 okt. 2011, om 07:11 heeft sonu vishwakarma het volg=
ende<br>
&gt;&gt;&gt; &gt; geschreven:<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; &gt; Hi,<br>
&gt;&gt;&gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt; &gt; I&#39;m trying the build for XBMC 10.05 which depend=
s on libsdl-mixer. I<br>
&gt;&gt;&gt; &gt; &gt; pulled the recipe from open embedded which i&#39;m<b=
r>
&gt;&gt;&gt; &gt; &gt; sharing here along with the log file.<br>
&gt;&gt;&gt; &gt; &gt; I&#39;m getting the error as below :<br>
&gt;&gt;&gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt; &gt; | ./libtool: line 6399: cd: =3D/usr/lib: No such fil=
e or directory<br>
&gt;&gt;&gt; &gt; &gt; | libtool: link: warning: cannot determine absolute =
directory name of<br>
&gt;&gt;&gt; &gt; &gt; `=3D/usr/lib&#39;<br>
&gt;&gt;&gt; &gt; &gt; | /bin/grep: =3D/usr/lib/<a href=3D"http://libdirect=
fb.la" target=3D"_blank">libdirectfb.la</a>: No such file or directory<br>
&gt;&gt;&gt; &gt; &gt; | /bin/sed: can&#39;t read =3D/usr/lib/<a href=3D"ht=
tp://libdirectfb.la" target=3D"_blank">libdirectfb.la</a>: No such file or<=
br>
&gt;&gt;&gt; &gt; &gt; directory<br>
&gt;&gt;&gt; &gt; &gt; | libtool: link: `=3D/usr/lib/<a href=3D"http://libd=
irectfb.la" target=3D"_blank">libdirectfb.la</a>&#39; is not a valid libtoo=
l<br>
&gt;&gt;&gt; &gt; &gt; archive<br>
&gt;&gt;&gt; &gt; &gt; | make: *** [build/libSDL_mixer.la] Error 1<br>
&gt;&gt;&gt; &gt; &gt; | make: *** Waiting for unfinished jobs....<br>
&gt;&gt;&gt; &gt; &gt; | FATAL: oe_runmake failed<br>
&gt;&gt;&gt; &gt; &gt; | ERROR: Function &#39;do_compile&#39; failed (see<b=
r>
&gt;&gt;&gt; &gt; &gt; /home/sct/logi/test-gigabyte/poky_gigabyte_16Sep2011=
/build/tmp/work/atom-poky-linux/libsdl-mixer-1.2.11-r5/temp/log.do_compile.=
23677<br>
&gt;&gt;&gt; &gt; &gt; for further information)<br>
&gt;&gt;&gt; &gt; &gt; NOTE: package libsdl-mixer-1.2.11-r5: task do_compil=
e: Failed<br>
&gt;&gt;&gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt; &gt; I&#39;m pulling for the Fishriver machine . My host =
machine is Ubuntu<br>
&gt;&gt;&gt; &gt; &gt; 10.10 ,64 bit .<br>
&gt;&gt;&gt; &gt; &gt; Can someone help me out of this problem ?<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; The libsdl-mixer recipe in meta-oe works just fine, why n=
ot use that?<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt;&gt; &gt; poky mailing list<br>
&gt;&gt;&gt; &gt; <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoprojec=
t.org</a><br>
&gt;&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" =
target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt; poky mailing list<br>
&gt;&gt;&gt; <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org=
</a><br>
&gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" targe=
t=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; poky mailing list<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_bl=
ank">https://lists.yoctoproject.org/listinfo/poky</a><br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br>

--0016e6db7bacaedb3004af3e1b7f--
