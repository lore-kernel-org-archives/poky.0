Return-Path: <vsailub4u@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id CC69A4C80546
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 04:33:45 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk28 with SMTP id 28so986408pzk.35
	for <poky@yoctoproject.org>; Tue, 01 Mar 2011 02:33:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=jdW3zmyO9dXPpaKjflAVsRBsO1VtHOXnlkW0UJkOudg=;
	b=ai0iwOQF2/bjpAwaqexjFIpB63LJa1Z81khVuuzzTkTeoWTYviquYi27rtCkmrjBC/
	7xQoyoN/+I6w2UNb24/WnWKPGA+xAHtTzNYfOkgJhzPJs9lpSRVHip3UYuHWNhkW7Rmy
	FGW0v9r3Kbybb0UTwOA+e+7WLoz6d1pFldQiQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type;
	b=RBKb2HHoPkKlR1Bfcywv0NH8TMpZCd+lhe+kpSJDWItAY4bdU8o2wM4iJk0vDeEpeQ
	VAp3ak0iP8l85tYR+U9/ivGf7KnuJMorMJsM21uKnPUQDlhr/xgDuj7E/PFVDzLZ4U2R
	a9tcr3jRBkknPRdtMs5KGKaKzp7LQX5TfQszs=
MIME-Version: 1.0
Received: by 10.142.242.9 with SMTP id p9mr5269926wfh.291.1298975625400; Tue,
	01 Mar 2011 02:33:45 -0800 (PST)
Received: by 10.142.127.4 with HTTP; Tue, 1 Mar 2011 02:33:45 -0800 (PST)
In-Reply-To: <4D6BECBD.8060501@linux.intel.com>
References: <AANLkTin34iXW7Zy7Z4NJfa3Fmv3LSt8y1eYH4UoNWcac@mail.gmail.com>
	<4D6BECBD.8060501@linux.intel.com>
Date: Tue, 1 Mar 2011 16:03:45 +0530
Message-ID: <AANLkTikYLw+bcsV=RWCqg5ufz1rKZbUxKS0wGuNwruXT@mail.gmail.com>
From: v sailaja <vsailub4u@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>, "Tian, Kevin" <kevin.tian@intel.com>,
	poky@yoctoproject.org
Subject: Re: errors while building the poky
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
X-List-Received-Date: Tue, 01 Mar 2011 10:33:46 -0000
Content-Type: multipart/alternative; boundary=000e0cd2e5aab96edb049d69549b

--000e0cd2e5aab96edb049d69549b
Content-Type: text/plain; charset=ISO-8859-1

Hi Darren,


I  am using the Linux OS and  I installed all the pre-requisites. Still  I
am facing the same problem.

           * OS               ---   LINUX
            MACHINE  ---  atom-pc*

*error:*
*
I added the following packages to poky-image-minimal.bb


     *alsa-lib* *
      alsa-tools
      alsa-utils*

But i am getting the error like* *

*./configure: line 4246:syntax error near unexpected token `1.0.0'* *
./configure: line 4246: `AM_PATH_ALSA(1.0.0)'*

please help me  in finding the solution.* *
Any help would be greatly appreciated.*



Thanks & Regards,
SAI







>
>>
> Hi Sai,
>
> I just noticed there hasn't been a reply to your message. Are you still
> experiencing problems? If so, can you let us know which OS you are building
> on and which MACHINE target you are building for?
>
> Also, did you ensure you have installed the pre-requisites on your host per
> the instructions in the Yocto Quick Start guide? See
> http://www.yoctoproject.org -> Documentation -> Quick Start Guide.
>
> --
> Darren
>
>
>
>  *I am trying to build the poky image    -- *poky-image-minimal-live.*
>> I added the packages  to poky-image-minimal.bb
>> *
>> * <http://poky-image-minimal.bb>*
>> *
>>
>> *alsa-lib* *
>>      alsa-tools
>>      alsa-utils*
>>
>> But i am getting the error like* *
>>
>> *./configure: line 4246:syntax error near unexpected token `1.0.0'* *
>> ./configure: line 4246: `AM_PATH_ALSA(1.0.0)'*
>>
>> please help me someone in finding the solution.* *
>> appeciated if anyone helps me.
>> *
>>
>
> Hi Sai
>
>
>> Thanks,
>> sai
>>
>>
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
>
>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
>

--000e0cd2e5aab96edb049d69549b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><span style=3D"color: rgb(51, 153, 153);">Hi Darren,</span><br style=3D=
"color: rgb(51, 153, 153);"><br style=3D"color: rgb(51, 153, 153);"><br sty=
le=3D"color: rgb(51, 153, 153);"><span style=3D"color: rgb(51, 153, 153);">=
I=A0 am using the Linux OS and=A0 I installed all the pre-requisites. Still=
=A0 I am facing the same problem.</span><br style=3D"color: rgb(51, 153, 15=
3);">
<br style=3D"color: rgb(51, 153, 153);"><span style=3D"color: rgb(51, 153, =
153);">=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0</span><b style=3D"color: rgb(51, 1=
53, 153);"> OS=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ---=A0=A0 LINUX<br=
>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 MACHINE=A0 ---=A0 atom-pc</b><br style=
=3D"color: rgb(51, 153, 153);">

<br style=3D"color: rgb(51, 153, 153);"><u style=3D"color: rgb(51, 153, 153=
);"><b>error:</b></u><br style=3D"color: rgb(51, 153, 153);"><b style=3D"co=
lor: rgb(51, 153, 153);"><br>I added the following packages to <a href=3D"h=
ttp://poky-image-minimal.bb" target=3D"_blank">poky-image-minimal.bb</a><br=
>
<br><br>=A0=A0=A0=A0

*alsa-lib</b>
<b style=3D"color: rgb(51, 153, 153);"><br>

 =A0 =A0 =A0 alsa-tools<br>

 =A0 =A0 =A0 alsa-utils*<br>
  <br>

But i am getting the error like</b>
<b style=3D"color: rgb(51, 153, 153);"><br>
  <br>

*./configure: line 4246:syntax error near unexpected token `1.0.0&#39;</b>
<b style=3D"color: rgb(51, 153, 153);"><br>

./configure: line 4246: `AM_PATH_ALSA(1.0.0)&#39;*<br>
  <br>

please help me=A0 in finding the solution.</b>
<b style=3D"color: rgb(51, 153, 153);"><br>

Any help would be greatly appreciated.</b><br style=3D"color: rgb(51, 153, =
153);"><br style=3D"color: rgb(51, 153, 153);"><br style=3D"color: rgb(51, =
153, 153);"><br style=3D"color: rgb(51, 153, 153);"><span style=3D"color: r=
gb(51, 153, 153);">Thanks &amp; Regards,</span><br style=3D"color: rgb(51, =
153, 153);">
<span style=3D"color: rgb(51, 153, 153);">SAI</span><br style=3D"color: rgb=
(51, 153, 153);"><br style=3D"color: rgb(51, 153, 153);"><br style=3D"color=
: rgb(51, 153, 153);"><br><br><div class=3D"gmail_quote"><div><br>=A0</div>=
<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; borde=
r-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; borde=
r-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">

<br>
</blockquote>
<br>
Hi Sai,<br>
<br>
I just noticed there hasn&#39;t been a reply to your message. Are you still=
 experiencing problems? If so, can you let us know which OS you are buildin=
g on and which MACHINE target you are building for?<br>
<br>
Also, did you ensure you have installed the pre-requisites on your host per=
 the instructions in the Yocto Quick Start guide? See <a href=3D"http://www=
.yoctoproject.org" target=3D"_blank">http://www.yoctoproject.org</a> -&gt; =
Documentation -&gt; Quick Start Guide.<br>


<br>
--<br>
Darren<br>
<br>
<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; borde=
r-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;"><div>
<b>I am trying to build the poky image =A0 =A0-- *poky-image-minimal-live.*=
<br>
I added the packages =A0to <a href=3D"http://poky-image-minimal.bb" target=
=3D"_blank">poky-image-minimal.bb</a><br></b></div><b>
&lt;<a href=3D"http://poky-image-minimal.bb" target=3D"_blank">http://poky-=
image-minimal.bb</a>&gt;</b><div><b><br><br>
*alsa-lib</b>
<b><br>
 =A0 =A0 =A0alsa-tools<br>
 =A0 =A0 =A0alsa-utils*<br><br>
But i am getting the error like</b>
<b><br><br>
*./configure: line 4246:syntax error near unexpected token `1.0.0&#39;</b>
<b><br>
./configure: line 4246: `AM_PATH_ALSA(1.0.0)&#39;*<br><br>
please help me someone in finding the solution.</b>
<b><br>
appeciated if anyone helps me.<br></b>
</div></blockquote>
<br>
Hi Sai<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; borde=
r-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
<br>
Thanks,<br>
sai<br>
<br>
<br>
<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</blockquote>
<br>
<br>
-- <br>
Darren Hart<br>
Intel Open Source Technology Center<br>
Yocto Project - Linux Kernel<br>
</blockquote><br></div><br>

--000e0cd2e5aab96edb049d69549b--
