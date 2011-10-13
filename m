Return-Path: <vishwasonu2000@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 449A2E0124A
	for <poky@yoctoproject.org>; Wed, 12 Oct 2011 22:46:25 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwf5 with SMTP id 5so1040738wwf.11
	for <poky@yoctoproject.org>; Wed, 12 Oct 2011 22:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=KXqpUQBHVWWppx5flmMj6I4YQlYqqgmpT0+1QqL7dok=;
	b=bEBySNraXcZxGPWRqaxK0s5qL1NlHEAX82s1BzMKptyZOFCC8ud5LtlFoOxnuMRSqq
	UVNrKvndiDgQ5c4AOYX1ifAkVfPN43M1ZkWIFjEdLXCHUgfO8fGg7PpxvuF+KULJtI7C
	yuDdTDZ6dygEMQvUe2LXAK/vtoi6hwwr+mOe4=
MIME-Version: 1.0
Received: by 10.227.173.3 with SMTP id n3mr756984wbz.1.1318484783501; Wed, 12
	Oct 2011 22:46:23 -0700 (PDT)
Received: by 10.180.86.167 with HTTP; Wed, 12 Oct 2011 22:46:23 -0700 (PDT)
In-Reply-To: <CABRtByMau9WGzTwHuwk8MJr52MK2E+HqRMunpDB22S-6tf=Ztw@mail.gmail.com>
References: <CABRtByO8SsdAQm+0dH9N946MN8nMXnfGQAbMjAYV1hu4U9rBnQ@mail.gmail.com>
	<6423790F-59AC-4742-9951-6AE5E1570736@dominion.thruhere.net>
	<CABRtByMv-ZyuuO_+BA96w-ZM51ARynDjRom-N6Fmng7eQWEpJA@mail.gmail.com>
	<2B72F198-5F75-4D2C-82AE-B385274B4D35@dominion.thruhere.net>
	<CABRtByMau9WGzTwHuwk8MJr52MK2E+HqRMunpDB22S-6tf=Ztw@mail.gmail.com>
Date: Thu, 13 Oct 2011 11:16:23 +0530
Message-ID: <CABRtByNzfG_JRW8shYhH6bPqXv_GjwoG2FaBZxVT=ftrco_5xA@mail.gmail.com>
From: sonu vishwakarma <vishwasonu2000@gmail.com>
To: poky@yoctoproject.org
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
X-List-Received-Date: Thu, 13 Oct 2011 05:46:26 -0000
Content-Type: multipart/alternative; boundary=20cf30025a3e2992c304af27a903

--20cf30025a3e2992c304af27a903
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Oct 13, 2011 at 11:13 AM, sonu vishwakarma <vishwasonu2000@gmail.com
> wrote:

> Hi,
> I tried the build using the recipe from meta-oe but still the error remains
> the same .
> ./libtool: line 6399: cd: =/usr/lib: No such file or directory
> I think the problem is with the path '=/usr/lib'
> I found a patch to libtool
> 'libtool-2.4-r2/libtool-2.4/libltdl/config/ltmain.m4sh'
>  that describes a function " if PATH begins with the sysroot replace it
> with = ",
> this may be creating the problem , the function is as below:
>  #func_replace_sysroot PATH
>  #If PATH begins with the sysroot, replace it with = and
>  #store the result into func_replace_sysroot_result.
> func_replace_sysroot ()
> {
>
>   case "$lt_sysroot:$1" in
>   ?*:"$lt_sysroot"*)
>     func_stripname "$lt_sysroot" '' "$1"
>     func_replace_sysroot_result="=$func_stripname_result"
>     ;;
>   *)
>     # Including no sysroot.
>     func_replace_sysroot_result=$1
>     ;;
>   esac
> }
>
> Also in the libSDL.la i could see the definition of dependency_libs that
> include "=/usr/lib.
> What to do now ? i couldn't find a solution to this .
>
> Thanks & Regards,
> Sonu
>
>
> On Wed, Oct 12, 2011 at 3:59 PM, Koen Kooi <koen@dominion.thruhere.net>wrote:
>
>>
>> Op 12 okt. 2011, om 12:18 heeft sonu vishwakarma het volgende geschreven:
>>
>> >
>> > But i'm using the recipe libsdl-mixer_1.2.11.bb taken from
>> open-embedded only . I Couldn't get meta-oe , where could i find it????
>>
>> Try http://tinyurl.com/5wpezm3
>>
>>
>>
>> >
>> > Thanks & Regards,
>> > Sonu.
>> >
>> > On Wed, Oct 12, 2011 at 3:16 PM, Koen Kooi <koen@dominion.thruhere.net>
>> wrote:
>> >
>> > Op 12 okt. 2011, om 07:11 heeft sonu vishwakarma het volgende
>> geschreven:
>> >
>> > > Hi,
>> > >
>> > > I'm trying the build for XBMC 10.05 which depends on libsdl-mixer. I
>> pulled the recipe from open embedded which i'm
>> > > sharing here along with the log file.
>> > > I'm getting the error as below :
>> > >
>> > > | ./libtool: line 6399: cd: =/usr/lib: No such file or directory
>> > > | libtool: link: warning: cannot determine absolute directory name of
>> `=/usr/lib'
>> > > | /bin/grep: =/usr/lib/libdirectfb.la: No such file or directory
>> > > | /bin/sed: can't read =/usr/lib/libdirectfb.la: No such file or
>> directory
>> > > | libtool: link: `=/usr/lib/libdirectfb.la' is not a valid libtool
>> archive
>> > > | make: *** [build/libSDL_mixer.la] Error 1
>> > > | make: *** Waiting for unfinished jobs....
>> > > | FATAL: oe_runmake failed
>> > > | ERROR: Function 'do_compile' failed (see
>> /home/sct/logi/test-gigabyte/poky_gigabyte_16Sep2011/build/tmp/work/atom-poky-linux/libsdl-mixer-1.2.11-r5/temp/log.do_compile.23677
>> for further information)
>> > > NOTE: package libsdl-mixer-1.2.11-r5: task do_compile: Failed
>> > >
>> > > I'm pulling for the Fishriver machine . My host machine is Ubuntu
>> 10.10 ,64 bit .
>> > > Can someone help me out of this problem ?
>> >
>> >
>> > The libsdl-mixer recipe in meta-oe works just fine, why not use that?
>> >
>> >
>> > _______________________________________________
>> > poky mailing list
>> > poky@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/poky
>> >
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
>
>

--20cf30025a3e2992c304af27a903
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Thu, Oct 13, 2011 at 11:13 AM, sonu v=
ishwakarma <span dir=3D"ltr">&lt;<a href=3D"mailto:vishwasonu2000@gmail.com=
">vishwasonu2000@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex;">
<div style=3D"text-align:left">Hi,</div><div style=3D"text-align:left">I tr=
ied the build using the recipe from meta-oe but still the error remains the=
 same .=A0</div><div class=3D"im"><div style=3D"text-align:left">./libtool:=
 line 6399: cd: =3D/usr/lib: No such file or directory</div>

</div><div style=3D"text-align:left">I think the problem is with the path &=
#39;=3D/usr/lib&#39;</div><div style=3D"text-align:left">I found a patch to=
 libtool=20
&#39;libtool-2.4-r2/libtool-2.4/libltdl/config/ltmain.m4sh&#39;</div><div>
<div style=3D"text-align:left"><span> that describes a function</span><span=
> &quot; if PATH begins with the sysroot replace it with =3D &quot;,</span>=
</div>
<div style=3D"text-align:left">this=A0may be creating the problem , the fun=
ction is as below:</div><div><span><div style=3D"text-align:left">
=A0#func_replace_sysroot PATH</div><div style=3D"text-align:left">=A0#If PA=
TH begins with the sysroot, replace it with =3D and</div><div style=3D"text=
-align:left">
=A0#store the result into func_replace_sysroot_result.</div><div style=3D"t=
ext-align:left">func_replace_sysroot ()</div><div style=3D"text-align:left"=
>{</div>
<div style=3D"text-align:left"><br></div><div style=3D"text-align:left">=A0=
 case &quot;$lt_sysroot:$1&quot; in</div><div style=3D"text-align:left">
=A0 ?*:&quot;$lt_sysroot&quot;*)</div><div style=3D"text-align:left">=A0 =
=A0 func_stripname &quot;$lt_sysroot&quot; &#39;&#39; &quot;$1&quot;</div><=
div style=3D"text-align:left">
=A0 =A0 func_replace_sysroot_result=3D&quot;=3D$func_stripname_result&quot;=
</div><div style=3D"text-align:left">=A0 =A0 ;;</div><div style=3D"text-ali=
gn:left">=A0 *)</div>
<div style=3D"text-align:left">=A0 =A0 # Including no sysroot.</div><div st=
yle=3D"text-align:left">=A0 =A0 func_replace_sysroot_result=3D$1</div><div =
style=3D"text-align:left">
=A0 =A0 ;;</div><div style=3D"text-align:left">=A0 esac</div><div style=3D"=
text-align:left">}</div><div style=3D"text-align:left"><span><br></span></d=
iv><div style=3D"text-align:left">
<span>Also in the=A0</span><span>libSDL.la i could see </span><span>the def=
inition of dependency_libs that include &quot;=3D/usr/lib.</span></div></sp=
an></div><div style=3D"text-align:left"><span>What to do now ? i couldn&#39=
;t find a solution to this .</span></div>

</div><div style=3D"text-align:left"><span><br></span></div><div><div style=
=3D"text-align:left">Thanks &amp; Regards,</div><span><div style=3D"text-al=
ign:left">Sonu</div></span></div><div><div></div><div class=3D"h5"><div><sp=
an><br>
</span></div><div><span><br>
</span></div><div><div class=3D"gmail_quote">On Wed, Oct 12, 2011 at 3:59 P=
M, Koen Kooi <span dir=3D"ltr">&lt;<a href=3D"mailto:koen@dominion.thruhere=
.net" target=3D"_blank">koen@dominion.thruhere.net</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">


<br>
Op 12 okt. 2011, om 12:18 heeft sonu vishwakarma het volgende geschreven:<b=
r>
<div><br>
&gt;<br>
&gt; But i&#39;m using the recipe <a href=3D"http://libsdl-mixer_1.2.11.bb"=
 target=3D"_blank">libsdl-mixer_1.2.11.bb</a> taken from open-embedded only=
 . I Couldn&#39;t get meta-oe , where could i find it????<br>
<br>
</div>Try <a href=3D"http://tinyurl.com/5wpezm3" target=3D"_blank">http://t=
inyurl.com/5wpezm3</a><br>
<div><div></div><div><br>
<br>
<br>
&gt;<br>
&gt; Thanks &amp; Regards,<br>
&gt; Sonu.<br>
&gt;<br>
&gt; On Wed, Oct 12, 2011 at 3:16 PM, Koen Kooi &lt;<a href=3D"mailto:koen@=
dominion.thruhere.net" target=3D"_blank">koen@dominion.thruhere.net</a>&gt;=
 wrote:<br>
&gt;<br>
&gt; Op 12 okt. 2011, om 07:11 heeft sonu vishwakarma het volgende geschrev=
en:<br>
&gt;<br>
&gt; &gt; Hi,<br>
&gt; &gt;<br>
&gt; &gt; I&#39;m trying the build for XBMC 10.05 which depends on libsdl-m=
ixer. I pulled the recipe from open embedded which i&#39;m<br>
&gt; &gt; sharing here along with the log file.<br>
&gt; &gt; I&#39;m getting the error as below :<br>
&gt; &gt;<br>
&gt; &gt; | ./libtool: line 6399: cd: =3D/usr/lib: No such file or director=
y<br>
&gt; &gt; | libtool: link: warning: cannot determine absolute directory nam=
e of `=3D/usr/lib&#39;<br>
&gt; &gt; | /bin/grep: =3D/usr/lib/<a href=3D"http://libdirectfb.la" target=
=3D"_blank">libdirectfb.la</a>: No such file or directory<br>
&gt; &gt; | /bin/sed: can&#39;t read =3D/usr/lib/<a href=3D"http://libdirec=
tfb.la" target=3D"_blank">libdirectfb.la</a>: No such file or directory<br>
&gt; &gt; | libtool: link: `=3D/usr/lib/<a href=3D"http://libdirectfb.la" t=
arget=3D"_blank">libdirectfb.la</a>&#39; is not a valid libtool archive<br>
&gt; &gt; | make: *** [build/libSDL_mixer.la] Error 1<br>
&gt; &gt; | make: *** Waiting for unfinished jobs....<br>
&gt; &gt; | FATAL: oe_runmake failed<br>
&gt; &gt; | ERROR: Function &#39;do_compile&#39; failed (see /home/sct/logi=
/test-gigabyte/poky_gigabyte_16Sep2011/build/tmp/work/atom-poky-linux/libsd=
l-mixer-1.2.11-r5/temp/log.do_compile.23677 for further information)<br>



&gt; &gt; NOTE: package libsdl-mixer-1.2.11-r5: task do_compile: Failed<br>
&gt; &gt;<br>
&gt; &gt; I&#39;m pulling for the Fishriver machine . My host machine is Ub=
untu 10.10 ,64 bit .<br>
&gt; &gt; Can someone help me out of this problem ?<br>
&gt;<br>
&gt;<br>
&gt; The libsdl-mixer recipe in meta-oe works just fine, why not use that?<=
br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; poky mailing list<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctop=
roject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_bl=
ank">https://lists.yoctoproject.org/listinfo/poky</a><br>
&gt;<br>
<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br>

--20cf30025a3e2992c304af27a903--
