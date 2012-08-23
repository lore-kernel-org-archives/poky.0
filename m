Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44188E0027E
	for <poky@yoctoproject.org>; Thu, 23 Aug 2012 08:35:48 -0700 (PDT)
Received: by eekd41 with SMTP id d41so376568eek.35
	for <poky@yoctoproject.org>; Thu, 23 Aug 2012 08:35:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=otANCJOf0LFdDdWz149UEvTJDPCmU5i/Cs+eT40zuWw=;
	b=WBDIpjZ7foPMZL/2IyPvuFkbQ4zB5yLvs7mSKATUYKYkbbuOuAn5VJUcYP/0D8OSgB
	gXxjaIccdv9JvNcGxfIOCdUXyp7mxVnpUQCTYRxOM5AoD2J0tJswYzsGapzQJFepbdpq
	1ddds0O6r2gQr+PLo55qRU0XL4sywrQJEj9GkeoaE5WiGwUk1KLGQkx3tDrhRElCPDci
	/BtnLDAKaZUHWrGi886dsqzZW5IWWvu03FZfVSCr+8yi3tnYm4eJ/3SpwXdqvO7sCsL7
	7CJzVad1KNFomO00eA8d+pOafF4B129+XVz3eVUrR5q2xJWzoV9Ch4BKbiqkIrAgdSfF
	LHlA==
MIME-Version: 1.0
Received: by 10.14.204.72 with SMTP id g48mr2516400eeo.45.1345736142893; Thu,
	23 Aug 2012 08:35:42 -0700 (PDT)
Received: by 10.14.2.5 with HTTP; Thu, 23 Aug 2012 08:35:42 -0700 (PDT)
In-Reply-To: <503639B2.4000605@gmail.com>
References: <503550B4.6060708@gmail.com> <5035DBF4.2020201@r-finger.com>
	<503639B2.4000605@gmail.com>
Date: Thu, 23 Aug 2012 08:35:42 -0700
Message-ID: <CAMKF1sqhPaHkiOn5uTiF6mQixoatRL8queN6XX5AvQaxL1nvzg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Florin <flocirel@gmail.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: do_fetch error with gcc-cross-initial_4.7
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
X-List-Received-Date: Thu, 23 Aug 2012 15:35:48 -0000
Content-Type: multipart/alternative; boundary=047d7b343cccc2307904c7f09c44

--047d7b343cccc2307904c7f09c44
Content-Type: text/plain; charset=UTF-8

On Thursday, August 23, 2012, Florin <flocirel@gmail.com> wrote:
> On 08/23/2012 10:29 AM, Tomas Frydrych wrote:
>>
>> Hi,
>>
>> On 22/08/12 22:35, Florin wrote:
>>>
>>> ERROR: Function failed: Fetcher failure for URL:
>>> 'git://github.com/mirrors/gcc.git;branch=gcc-4_7-branch;protocol=git'.
>>> Unable to fetch URL from any source.
>>>
>>>
>>> After the build stops with this error, retrying the bitbake command to
>>> produce the rootfs fetches gcc successfully and gcc (and the rest of the
>>> packages) is compiled just fine.
>>> Is there anybody else seeing this behavior?
>>
>> FWIW, over the last few days I have seen intermittent fetch failures
>> from various packages that pull source from github; they pretty much
>> always go away on the next attempt; I assume it's github's fault.
>
> Hi Tomas,
> thanks for your answer. The problem I am seeing is that it always behaves
like this: in the stages of creating the rootfs it gets to the fetching of
gcc cross initial, this stalls a while (tens of minutes) in which time
bitbake fetches (all kind of native and target packages) and compiles
native packages and it throws an error at the point where the dependency
chain would have had gcc cross initial compiled and ready to be used by
other packages. After that, rerunning the bitbake command to create the
rootfs fetches successfully gcc and the build finishes. So I am always
seeing this behavior: first fetch fails, second fetch works. Always like
this, never had to try a third time to fetch gcc. That is why I am not
suspecting especially a problem with github but rather the way bitbake
tries the mirrors for gcc.
>

Git archive for gcc is in terabytes so it will take long time to fetch it.
I have sent a patch to switch back to Svn in src_URI
That should avoid long delays in fetching gcc srcs
> Thanks,
> Florin
>>
>> Tomas
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--047d7b343cccc2307904c7f09c44
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br><br>On Thursday, August 23, 2012, Florin &lt;<a href=3D"mailto:flocirel=
@gmail.com">flocirel@gmail.com</a>&gt; wrote:<br>&gt; On 08/23/2012 10:29 A=
M, Tomas Frydrych wrote:<br>&gt;&gt;<br>&gt;&gt; Hi,<br>&gt;&gt;<br>&gt;&gt=
; On 22/08/12 22:35, Florin wrote:<br>
&gt;&gt;&gt;<br>&gt;&gt;&gt; ERROR: Function failed: Fetcher failure for UR=
L:<br>&gt;&gt;&gt; &#39;git://<a href=3D"http://github.com/mirrors/gcc.git;=
branch=3Dgcc-4_7-branch;protocol=3Dgit">github.com/mirrors/gcc.git;branch=
=3Dgcc-4_7-branch;protocol=3Dgit</a>&#39;.<br>
&gt;&gt;&gt; Unable to fetch URL from any source.<br>&gt;&gt;&gt;<br>&gt;&g=
t;&gt;<br>&gt;&gt;&gt; After the build stops with this error, retrying the =
bitbake command to<br>&gt;&gt;&gt; produce the rootfs fetches gcc successfu=
lly and gcc (and the rest of the<br>
&gt;&gt;&gt; packages) is compiled just fine.<br>&gt;&gt;&gt; Is there anyb=
ody else seeing this behavior?<br>&gt;&gt;<br>&gt;&gt; FWIW, over the last =
few days I have seen intermittent fetch failures<br>&gt;&gt; from various p=
ackages that pull source from github; they pretty much<br>
&gt;&gt; always go away on the next attempt; I assume it&#39;s github&#39;s=
 fault.<br>&gt;<br>&gt; Hi Tomas,<br>&gt; thanks for your answer. The probl=
em I am seeing is that it always behaves like this: in the stages of creati=
ng the rootfs it gets to the fetching of gcc cross initial, this stalls a w=
hile (tens of minutes) in which time bitbake fetches (all kind of native an=
d target packages) and compiles native packages and it throws an error at t=
he point where the dependency chain would have had gcc cross initial compil=
ed and ready to be used by other packages. After that, rerunning the bitbak=
e command to create the rootfs fetches successfully gcc and the build finis=
hes. So I am always seeing this behavior: first fetch fails, second fetch w=
orks. Always like this, never had to try a third time to fetch gcc. That is=
 why I am not suspecting especially a problem with github but rather the wa=
y bitbake tries the mirrors for gcc.<br>
&gt;<br><br>Git archive for gcc is in terabytes so it will take long time t=
o fetch it. I have sent a patch to switch back to Svn in src_URI<br>That sh=
ould avoid long delays in fetching gcc srcs<br>&gt; Thanks,<br>&gt; Florin<=
br>
&gt;&gt;<br>&gt;&gt; Tomas<br>&gt;&gt; ____________________________________=
___________<br>&gt;&gt; poky mailing list<br>&gt;&gt; <a href=3D"mailto:pok=
y@yoctoproject.org">poky@yoctoproject.org</a><br>&gt;&gt; <a href=3D"https:=
//lists.yoctoproject.org/listinfo/poky">https://lists.yoctoproject.org/list=
info/poky</a><br>
&gt;<br>&gt; _______________________________________________<br>&gt; poky m=
ailing list<br>&gt; <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproj=
ect.org</a><br>&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky=
">https://lists.yoctoproject.org/listinfo/poky</a><br>
&gt;

--047d7b343cccc2307904c7f09c44--
