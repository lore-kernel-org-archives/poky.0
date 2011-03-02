Return-Path: <vsailub4u@gmail.com>
Received: from mail-pv0-f176.google.com (mail-pv0-f176.google.com
	[74.125.83.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 042224C800A4
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 23:50:27 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pvg6 with SMTP id 6so1174002pvg.35
	for <poky@yoctoproject.org>; Tue, 01 Mar 2011 21:50:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=4I1Ne6rmypqTuo5UdiwUOqrFb3A7jYHQqrv/k23MOkI=;
	b=n8fGDZBc6siZtPO1VadV3OWLGfPaqFJUsPnBAC7QPD1ghINRFBVOnMq7az6o+NyEve
	oBb0R43M8i+G8ltF2feTPHcgd+3xfDhHRj3G04B1wfNfCeWf+7RKNNE2DeYIaSe6Pjyq
	kD3vjv3Lwh/HC2LCJcXDYWMWdXm5SswEPKWhk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type;
	b=NS1pYZ32RM54tpFODL2bZeKyDyWgX3N9VcMKEf9bDEJUIwvLUZ3hqeI1eW0CHM/WFp
	O3Y+Qzltqfjyj7ONFdDWYMfKlTrAtIDDkITySturUe9RT6/ZapLbydTsd5tvb6UksoPe
	gHzbVfho6eqJqgQNhj+XeMPGHEr99+JEY6dno=
MIME-Version: 1.0
Received: by 10.142.242.9 with SMTP id p9mr6117606wfh.291.1299045026876; Tue,
	01 Mar 2011 21:50:26 -0800 (PST)
Received: by 10.142.127.4 with HTTP; Tue, 1 Mar 2011 21:50:26 -0800 (PST)
In-Reply-To: <4D6D1D97.1050205@linux.intel.com>
References: <AANLkTin34iXW7Zy7Z4NJfa3Fmv3LSt8y1eYH4UoNWcac@mail.gmail.com>
	<4D6BECBD.8060501@linux.intel.com>
	<AANLkTikYLw+bcsV=RWCqg5ufz1rKZbUxKS0wGuNwruXT@mail.gmail.com>
	<4D6D1D97.1050205@linux.intel.com>
Date: Wed, 2 Mar 2011 11:20:26 +0530
Message-ID: <AANLkTin5=+yWjmxfjWsCpKg5r+NExtSwtRLoYaRGpVyw@mail.gmail.com>
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
X-List-Received-Date: Wed, 02 Mar 2011 05:50:28 -0000
Content-Type: multipart/alternative; boundary=000e0cd2e5aa5fcfe5049d797dd3

--000e0cd2e5aa5fcfe5049d797dd3
Content-Type: text/plain; charset=ISO-8859-1

 Hi Darren,

 I am using  *Ubuntu 10.04*  on  *64 bit* arch.

please help me  in finding the solution.*


Thanks & Regards,
SAI



Hi Darren,
>>
>>
>> I  am using the Linux OS and  I installed all the pre-requisites. Still
>> I am facing the same problem.
>>
>> *OS               ---   LINUX
>>
>
>
> The specific version is what I was after. Ubutnu 9.04, 9.10, 10.04, 10.10 ?
> Fedora 13, 14?
>
> 32 bit or 64 bit?
>
> Thanks,
>
> Darren
>
>              MACHINE  ---  atom-pc*
>>
>> _*error:*_
>> *
>> I added the following packages to poky-image-minimal.bb
>> <http://poky-image-minimal.bb>
>>
>>
>>      *alsa-lib* *
>>       alsa-tools
>>       alsa-utils*
>>
>> But i am getting the error like* *
>>
>> *./configure: line 4246:syntax error near unexpected token `1.0.0'* *
>> ./configure: line 4246: `AM_PATH_ALSA(1.0.0)'*
>>
>> please help me  in finding the solution.* *
>>
>> Any help would be greatly appreciated.*
>>
>>
>>
>> Thanks & Regards,
>> SAI
>>
>>
>>
>>
>>
>>

--000e0cd2e5aa5fcfe5049d797dd3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br>=A0Hi Darren,<br>=A0<br>=A0I am using=A0 <b>Ubuntu 10.04</b>=A0 on=A0 <=
b>64 bit</b> arch.<br><br>please help me =A0in finding the solution.*<br>=
=A0<br><br>Thanks &amp; Regards,<br>
SAI<br><br><br><br><div class=3D"gmail_quote"><blockquote class=3D"gmail_qu=
ote" style=3D"margin: 0pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(204, 20=
4, 204); padding-left: 1ex;"><div class=3D"im"><blockquote class=3D"gmail_q=
uote" style=3D"margin: 0pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(204, 2=
04, 204); padding-left: 1ex;">

Hi Darren,<br>
<br>
<br>
I =A0am using the Linux OS and =A0I installed all the pre-requisites. Still=
<br>
I am facing the same problem.<br>
<br>
*OS =A0 =A0 =A0 =A0 =A0 =A0 =A0 --- =A0 LINUX<br>
</blockquote>
<br>
<br></div>
The specific version is what I was after. Ubutnu 9.04, 9.10, 10.04, 10.10 ?=
 Fedora 13, 14?<br>
<br>
32 bit or 64 bit?<br>
<br>
Thanks,<br>
<br>
Darren<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; borde=
r-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;"><div class=3D"im"=
>
 =A0 =A0 =A0 =A0 =A0 =A0 MACHINE =A0--- =A0atom-pc*<br>
<br>
_*error:*_<br>
*<br>
I added the following packages to <a href=3D"http://poky-image-minimal.bb" =
target=3D"_blank">poky-image-minimal.bb</a><br></div><div class=3D"im">
&lt;<a href=3D"http://poky-image-minimal.bb" target=3D"_blank">http://poky-=
image-minimal.bb</a>&gt;<br>
<br>
<br>
 =A0 =A0 =A0*alsa-lib* *<br>
 =A0 =A0 =A0 alsa-tools<br>
 =A0 =A0 =A0 alsa-utils*<br>
<br>
But i am getting the error like* *<br>
<br>
*./configure: line 4246:syntax error near unexpected token `1.0.0&#39;* *<b=
r>
./configure: line 4246: `AM_PATH_ALSA(1.0.0)&#39;*<br>
<br></div>
please help me =A0in finding the solution.* *<div class=3D"im"><br>
Any help would be greatly appreciated.*<br>
<br>
<br>
<br>
Thanks &amp; Regards,<br>
SAI<br>
<br>
<br>
<br>
<br>
<br></div></blockquote></blockquote></div><br>

--000e0cd2e5aa5fcfe5049d797dd3--
