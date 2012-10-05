Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F080BE0049D
	for <poky@yoctoproject.org>; Thu,  4 Oct 2012 17:31:44 -0700 (PDT)
Received: by mail-ee0-f48.google.com with SMTP id b45so1022351eek.35
	for <poky@yoctoproject.org>; Thu, 04 Oct 2012 17:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=B4mmUOmZMeZJCcZ9eiErzztcaVQGrtOHeO7IfghYTSM=;
	b=VWUA0hIqR1cwFEfRWjT7fS2DWHurSnDaOlRKC42gA5SYl6HoEwGLmFyEVTHVYdrec1
	JpF9fNfszMPgnR+9V5zB6H3CeK5s2rJF/TG8Kz3eAo9xirlp8gNba8gTdSCHSekVOr0K
	ycJzJHy1EXLbwkuuc+Q1T5zNX/GOj9xthVFK8tvjMDnkoQjhrsAtCqelCpPoytTjPVz6
	vvV4ExDxQZHNR4ycHcU9/mspx3q2xC9NKCxOr8uPoaFlqWMzoBjnrlmW8yiUfrQJDQ/3
	G1ZYnDn8nm3LUTYrv1OQ15N0rqIBWdShMH8ZG5DsgxK9ZtO7rzkDa0aNNZ2x3VED6HQO
	0dAg==
MIME-Version: 1.0
Received: by 10.14.211.3 with SMTP id v3mr10665899eeo.43.1349397103744; Thu,
	04 Oct 2012 17:31:43 -0700 (PDT)
Received: by 10.14.173.69 with HTTP; Thu, 4 Oct 2012 17:31:43 -0700 (PDT)
In-Reply-To: <1472694.z6zoviGNz8@helios>
References: <1349394751-28272-1-git-send-email-sgw@linux.intel.com>
	<1472694.z6zoviGNz8@helios>
Date: Thu, 4 Oct 2012 17:31:43 -0700
Message-ID: <CAMKF1so_3v3+qQAcsDa2jJbRL+Ot2H-xozCGZW+FkrACmZ+UCg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] poky.conf: fix Poky release info to include release number
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
X-List-Received-Date: Fri, 05 Oct 2012 00:31:45 -0000
Content-Type: multipart/alternative; boundary=047d7b621e9207968704cb44ff84

--047d7b621e9207968704cb44ff84
Content-Type: text/plain; charset=UTF-8

On Thursday, October 4, 2012, Paul Eggleton <paul.eggleton@linux.intel.com>
wrote:
> On Thursday 04 October 2012 16:52:31 Saul Wold wrote:
>> Signed-off-by: Saul Wold <sgw@linux.intel.com>
>> ---
>>  meta-yocto/conf/distro/poky.conf |    4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/meta-yocto/conf/distro/poky.conf
>> b/meta-yocto/conf/distro/poky.conf index ad45f25..8e82496 100644
>> --- a/meta-yocto/conf/distro/poky.conf
>> +++ b/meta-yocto/conf/distro/poky.conf
>> @@ -71,8 +71,8 @@ CONNECTIVITY_CHECK_URIS ?= " \
>>  SANITY_TESTED_DISTROS ?= " \
>>              Yocto (Built by Poky 7.0) 1.2 \n \
>>              Yocto (Built by Poky 8.0) 1.3 \n \
>> -            Poky 7.0 (Yocto Project 1.2 Reference Distro) \n \
>> -            Poky 8.0 (Yocto Project 1.3 Reference Distro) \n \
>> +            Poky 7.0 (Yocto Project 1.2 Reference Distro) 1.2 \n \
>> +            Poky 8.0 (Yocto Project 1.3 Reference Distro) 1.3 \n \
>
> Hmm, in prompting Richard to change DISTRO_NAME in the manner we have, I
> hadn't realised we would still end up with the version at the end as well
:(

Yeah that looks a bit odd
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--047d7b621e9207968704cb44ff84
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br><br>On Thursday, October 4, 2012, Paul Eggleton &lt;<a href=3D"mailto:p=
aul.eggleton@linux.intel.com">paul.eggleton@linux.intel.com</a>&gt; wrote:<=
br>&gt; On Thursday 04 October 2012 16:52:31 Saul Wold wrote:<br>&gt;&gt; S=
igned-off-by: Saul Wold &lt;<a href=3D"mailto:sgw@linux.intel.com">sgw@linu=
x.intel.com</a>&gt;<br>
&gt;&gt; ---<br>&gt;&gt; =C2=A0meta-yocto/conf/distro/poky.conf | =C2=A0 =
=C2=A04 ++--<br>&gt;&gt; =C2=A01 file changed, 2 insertions(+), 2 deletions=
(-)<br>&gt;&gt;<br>&gt;&gt; diff --git a/meta-yocto/conf/distro/poky.conf<b=
r>&gt;&gt; b/meta-yocto/conf/distro/poky.conf index ad45f25..8e82496 100644=
<br>
&gt;&gt; --- a/meta-yocto/conf/distro/poky.conf<br>&gt;&gt; +++ b/meta-yoct=
o/conf/distro/poky.conf<br>&gt;&gt; @@ -71,8 +71,8 @@ CONNECTIVITY_CHECK_UR=
IS ?=3D &quot; \<br>&gt;&gt; =C2=A0SANITY_TESTED_DISTROS ?=3D &quot; \<br>&=
gt;&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Yocto (Built by Pok=
y 7.0) 1.2 \n \<br>
&gt;&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Yocto (Built by Po=
ky 8.0) 1.3 \n \<br>&gt;&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Pok=
y 7.0 (Yocto Project 1.2 Reference Distro) \n \<br>&gt;&gt; - =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0Poky 8.0 (Yocto Project 1.3 Reference Distro) \=
n \<br>&gt;&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Poky 7.0 (Yocto =
Project 1.2 Reference Distro) 1.2 \n \<br>
&gt;&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Poky 8.0 (Yocto Project=
 1.3 Reference Distro) 1.3 \n \<br>&gt;<br>&gt; Hmm, in prompting Richard t=
o change DISTRO_NAME in the manner we have, I<br>&gt; hadn&#39;t realised w=
e would still end up with the version at the end as well :(<br>
<br>Yeah that looks a bit odd<br>&gt;<br>&gt; Cheers,<br>&gt; Paul<br>&gt;<=
br>&gt; --<br>&gt;<br>&gt; Paul Eggleton<br>&gt; Intel Open Source Technolo=
gy Centre<br>&gt; _______________________________________________<br>&gt; p=
oky mailing list<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>=
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky">https://lists=
.yoctoproject.org/listinfo/poky</a><br>&gt;

--047d7b621e9207968704cb44ff84--
