Return-Path: <aalonso00@gmail.com>
Received: from mail-ey0-f171.google.com (mail-ey0-f171.google.com
	[209.85.215.171])
	by mx1.pokylinux.org (Postfix) with ESMTP id C1D2C4C80039
	for <poky@pokylinux.org>; Thu, 20 Jan 2011 12:02:35 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eyg5 with SMTP id 5so497037eyg.2
	for <poky@pokylinux.org>; Thu, 20 Jan 2011 10:02:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=czIFjrOvkjW35seObc2qoW8sNU6Op/fdF/PewQquB6M=;
	b=xBNsbBh0pWY4/BYJXbZr0JRrUWEkYOdtzbGlulF9yOwIoFIAHDQJl5Oxn/mxlKXahz
	MKAx+RSsfHp6C9LPFzfynoQF8kzj/S1KSin1gUfL5LBk9KEH4ntROYJ3+FINqQd8wPrf
	/Mhm4d+0//AfcHop5Z+/kw7zrfnwWwtcCnpOI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=xRlPm+HUawCj1yJKVBlRgRgochYG1xV37TX+vkHT4ugrmdgVmuWQ3egwyk8duKej6K
	O1RlOq0FMTffOchHC/w18wuOzjNglgDhRhwyfC4NlkWN6X0j8MmijjtL9qU8WRv9bb7P
	HjyhxS5SKoVTJpKPtAK9A/oMUkuI98j+9T9A4=
MIME-Version: 1.0
Received: by 10.204.102.6 with SMTP id e6mr2246440bko.56.1295545982029; Thu,
	20 Jan 2011 09:53:02 -0800 (PST)
Received: by 10.204.14.199 with HTTP; Thu, 20 Jan 2011 09:53:01 -0800 (PST)
In-Reply-To: <4D38725A.9050300@intel.com>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
	<1295296178-18590-3-git-send-email-aalonso@secretlab.ca>
	<loom.20110118T004536-689@post.gmane.org>
	<AANLkTimNTDXpOG74pw6SotCqmB=N4nxwLZ+2Y+hjbsCX@mail.gmail.com>
	<4D3799C1.7000108@emcraft.com> <4D38725A.9050300@intel.com>
Date: Thu, 20 Jan 2011 11:53:01 -0600
Message-ID: <AANLkTi=YtROKq-JQ9MWQDAeAzt_E7tu3XLfi41MBBKm_@mail.gmail.com>
From: Adrian Alonso <aalonso00@gmail.com>
To: Saul Wold <saul.wold@intel.com>
Cc: poky@pokylinux.org, Ilya Yanok <yanok@emcraft.com>
Subject: Re: [PATCH 03/25] gcc: crosssdk unset TARGET_FPU
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
X-List-Received-Date: Thu, 20 Jan 2011 18:02:36 -0000
Content-Type: multipart/alternative; boundary=0016368e326b0c91e9049a4ace8b

--0016368e326b0c91e9049a4ace8b
Content-Type: text/plain; charset=ISO-8859-1

I will redo the patch based on Ilya suggestion,

But I'm not sure if un-setting TARGET_FPU on crosssdk.bbclass would affect
other targets.

Can some one with more background provide me more details if this could
affect other targets.

Regards

On Thu, Jan 20, 2011 at 11:35 AM, Saul Wold <saul.wold@intel.com> wrote:

> On 01/19/2011 06:11 PM, Ilya Yanok wrote:
>
>> Hi Adrian,
>>
>> I'm sorry, I was wrong in my previous postings.
>> I was confused by the gcc-crosssdk recipe name.
>> Now I think your solution is perfectly legal, but I still think that
>> comment is misleading:
>> it's not powerpc arch that does not sipport --with-float=soft, it's
>> x86_64 (in my case)!
>>
>> I think we should just reset TARGET_FPU from crosssdk.bbclass, what do
>> you think about it?
>>
>>  Adrian,
>
> Will you please re-publish the patch based on Ilya's feedback or let me
> know if you want to go with your orignal patch.
>
> Thanks
>   Sau!
>
>  Regards, Ilya.
>>
>> On 18.01.2011 03:59, Adrian Alonso wrote:
>>
>>> Hi Ilya,
>>>
>>> I will also look for the proper solution,
>>> However un-setting TARGET_FPU only affects the target machines
>>> in meta-xilinx layer bsp, so other Powerpc targets are not been affected
>>> with this patch.
>>>
>>> Regards
>>>
>>> On Mon, Jan 17, 2011 at 5:55 PM, Ilya Yanok <yanok@emcraft.com
>>> <mailto:yanok@emcraft.com>> wrote:
>>>
>>>    Hi Adrian,
>>>
>>>    Adrian Alonso <aalonso@...> writes:
>>>
>>>    >
>>>    > * Configure fails due that --with-float=soft
>>>    > flag isn't supportted by powerpc arch
>>>
>>>    That's not true. PowerPC support soft-float (and we actually need
>>>    this for
>>>    MPC8308 which has e300c3 core without FPU).
>>>
>>>    For me, configure fails with the same message but that's not
>>>    because PowerPC
>>>    lacks support for soft-float but cause gcc-crosssdk recipe passes
>>>    wrong
>>>    --target= option to the configure script (for me it's
>>>    x86_86-pokysdk-linux, I'm
>>>    building on the x86_64 host).
>>>
>>>    > * Unsetting TARGET_FPU this flag to not try to use
>>>    > this flag
>>>
>>>    So please do NOT unset TARGET_FPU, some targets really need it.
>>>    I'm looking
>>>    forward to see a correct solution for this issue.
>>>
>>>    Regards, Ilya.
>>>
>>>
>>>    _______________________________________________
>>>    poky mailing list
>>>    poky@yoctoproject.org <mailto:poky@yoctoproject.org>
>>>
>>>    https://lists.yoctoproject.org/listinfo/poky
>>>
>>>
>>>
>>>
>>> --
>>> Saludos
>>> Adrian Alonso
>>> http://aalonso.wordpress.com
>>>
>>>
>>
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
>
>


-- 
Saludos
Adrian Alonso
http://aalonso.wordpress.com

--0016368e326b0c91e9049a4ace8b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I will redo the patch based on Ilya suggestion,<div><br></div><div>But I&#3=
9;m not sure if un-setting TARGET_FPU on=A0crosssdk.bbclass=A0would affect<=
/div><div>other targets.</div><div><br></div><meta http-equiv=3D"content-ty=
pe" content=3D"text/html; charset=3Dutf-8"><div>
Can some one with more background provide me more details if this could</di=
v><div>affect other targets.</div><div><br></div><div>Regards<br><br><div c=
lass=3D"gmail_quote">On Thu, Jan 20, 2011 at 11:35 AM, Saul Wold <span dir=
=3D"ltr">&lt;<a href=3D"mailto:saul.wold@intel.com">saul.wold@intel.com</a>=
&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;"><div class=3D"im">On 01/19/2011 06:11 PM, I=
lya Yanok wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi Adrian,<br>
<br>
I&#39;m sorry, I was wrong in my previous postings.<br>
I was confused by the gcc-crosssdk recipe name.<br>
Now I think your solution is perfectly legal, but I still think that<br>
comment is misleading:<br>
it&#39;s not powerpc arch that does not sipport --with-float=3Dsoft, it&#39=
;s<br>
x86_64 (in my case)!<br>
<br>
I think we should just reset TARGET_FPU from crosssdk.bbclass, what do<br>
you think about it?<br>
<br>
</blockquote></div>
Adrian,<br>
<br>
Will you please re-publish the patch based on Ilya&#39;s feedback or let me=
 know if you want to go with your orignal patch.<br>
<br>
Thanks<br>
 =A0 Sau!<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">
Regards, Ilya.<br>
<br>
On 18.01.2011 03:59, Adrian Alonso wrote:<br>
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div class=3D"im">
Hi Ilya,<br>
<br>
I will also look for the proper solution,<br>
However un-setting TARGET_FPU only affects the target machines<br>
in meta-xilinx layer bsp, so other Powerpc targets are not been affected<br=
>
with this patch.<br>
<br>
Regards<br>
<br>
On Mon, Jan 17, 2011 at 5:55 PM, Ilya Yanok &lt;<a href=3D"mailto:yanok@emc=
raft.com" target=3D"_blank">yanok@emcraft.com</a><br></div><div class=3D"im=
">
&lt;mailto:<a href=3D"mailto:yanok@emcraft.com" target=3D"_blank">yanok@emc=
raft.com</a>&gt;&gt; wrote:<br>
<br>
 =A0 =A0Hi Adrian,<br>
<br>
 =A0 =A0Adrian Alonso &lt;aalonso@...&gt; writes:<br>
<br>
 =A0 =A0&gt;<br>
 =A0 =A0&gt; * Configure fails due that --with-float=3Dsoft<br>
 =A0 =A0&gt; flag isn&#39;t supportted by powerpc arch<br>
<br>
 =A0 =A0That&#39;s not true. PowerPC support soft-float (and we actually ne=
ed<br>
 =A0 =A0this for<br>
 =A0 =A0MPC8308 which has e300c3 core without FPU).<br>
<br>
 =A0 =A0For me, configure fails with the same message but that&#39;s not<br=
>
 =A0 =A0because PowerPC<br>
 =A0 =A0lacks support for soft-float but cause gcc-crosssdk recipe passes<b=
r>
 =A0 =A0wrong<br>
 =A0 =A0--target=3D option to the configure script (for me it&#39;s<br>
 =A0 =A0x86_86-pokysdk-linux, I&#39;m<br>
 =A0 =A0building on the x86_64 host).<br>
<br>
 =A0 =A0&gt; * Unsetting TARGET_FPU this flag to not try to use<br>
 =A0 =A0&gt; this flag<br>
<br>
 =A0 =A0So please do NOT unset TARGET_FPU, some targets really need it.<br>
 =A0 =A0I&#39;m looking<br>
 =A0 =A0forward to see a correct solution for this issue.<br>
<br>
 =A0 =A0Regards, Ilya.<br>
<br>
<br>
 =A0 =A0_______________________________________________<br>
 =A0 =A0poky mailing list<br></div>
 =A0 =A0<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoc=
toproject.org</a> &lt;mailto:<a href=3D"mailto:poky@yoctoproject.org" targe=
t=3D"_blank">poky@yoctoproject.org</a>&gt;<div class=3D"im"><br>
 =A0 =A0<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"=
_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
<br>
<br>
<br>
<br>
--<br>
Saludos<br>
Adrian Alonso<br>
<a href=3D"http://aalonso.wordpress.com" target=3D"_blank">http://aalonso.w=
ordpress.com</a><br>
<br>
</div></blockquote><div class=3D"im">
<br>
<br>
<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</div></blockquote>
<br>
</blockquote></div><br><br clear=3D"all"><br>-- <br>Saludos<br>Adrian Alons=
o<br><a href=3D"http://aalonso.wordpress.com">http://aalonso.wordpress.com<=
/a><br><br>
</div>

--0016368e326b0c91e9049a4ace8b--
