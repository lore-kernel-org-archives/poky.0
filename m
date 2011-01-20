Return-Path: <aalonso00@gmail.com>
Received: from mail-bw0-f48.google.com (mail-bw0-f48.google.com
	[209.85.214.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id E35BD4C80BD4
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 15:41:46 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by bwz8 with SMTP id 8so993907bwz.35
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 13:41:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=Pp/98s+ttyVKp5sY8NR7iWB2mzEadZNeJ8SvxLstH/U=;
	b=JuMYwfkqKH+duJNRxYMNQQjie/bgJhXcrPnY+F53Fp0LVdLUoFRzqAmpeR/H6MtQoL
	He3d7FzUryMfcSC+I3IS7QQ9OtycQgXytl3hvMWeijP//ljBhvTo0Ef1B1fef17/h6O9
	JD8JCZhVZW2SNI1DWfAk4i/eC567bGPTOjiOs=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	b=VM1HLUkw8oHeaUMoC602SCBm6dV/iyXM5R30Q12Ey4I7DeJpnzjefj9vbTDaOKRbnx
	wHVlGxyC52/ocPPtbgvafYEaoMJdtDELYJ/Ivj7koY7dvH7Yfo+8wARH9N9Il6fYCdpm
	FIJ//oIv85yyEgF+ai4lw3kwNZFKwMC0mQBSc=
MIME-Version: 1.0
Received: by 10.204.72.137 with SMTP id m9mr1130305bkj.191.1295559682870; Thu,
	20 Jan 2011 13:41:22 -0800 (PST)
Sender: aalonso00@gmail.com
Received: by 10.204.14.199 with HTTP; Thu, 20 Jan 2011 13:41:22 -0800 (PST)
In-Reply-To: <4D388511.4070500@linux.intel.com>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
	<1295296178-18590-5-git-send-email-aalonso@secretlab.ca>
	<4D3884A0.8030602@linux.intel.com>
	<4D388511.4070500@linux.intel.com>
Date: Thu, 20 Jan 2011 15:41:22 -0600
X-Google-Sender-Auth: schbnc_UzfyyxNG7HVxAn5-uQRQ
Message-ID: <AANLkTikGe04xMe=AmdVJQ2C_ap_uYKupCBmDatY=r_bD@mail.gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: Darren Hart <dvhart@linux.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 05/25] u-boot: disable -Os option not supported by gcc
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
X-List-Received-Date: Thu, 20 Jan 2011 21:41:47 -0000
Content-Type: multipart/alternative; boundary=001636c5abd7aecd4a049a4dfed4

--001636c5abd7aecd4a049a4dfed4
Content-Type: text/plain; charset=ISO-8859-1

Ok, going to rework patch but keep the optimization level to -O2

Thanks for the suggestion.

On Thu, Jan 20, 2011 at 12:55 PM, Darren Hart <dvhart@linux.intel.com>wrote:

> On 01/20/2011 10:53 AM, Darren Hart wrote:
>
>> On 01/17/2011 12:29 PM, Adrian Alonso wrote:
>>
>>> * Disable -Os optspace option not supported by gcc use insted
>>> -O2
>>> * Bump PR
>>>
>>>
>>
>> I ran into this in the recent u-boot_git.bb recipe I added. Rather than
>> create a patch to the Makefile, I found it simpler to adding OPTFLAGS to
>> the EXTRA_OEMAKE variable in the recipe:
>>
>> EXTRA_OEMAKE = "CROSS_COMPILE=${TARGET_PREFIX} OPTFLAGS=''"
>>
>> This negates the -Os in the Makefile.
>>
>
> In fact, once contrib/dvhart/beagle is merged, you'll get this
> automatically as you use u-boot.inc. So you should be able to drop this
> patch.
>
>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--001636c5abd7aecd4a049a4dfed4
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Ok, going to rework patch but keep the optimization level to -O2<div><br></=
div><div>Thanks for the suggestion.<br><br><div class=3D"gmail_quote">On Th=
u, Jan 20, 2011 at 12:55 PM, Darren Hart <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:dvhart@linux.intel.com">dvhart@linux.intel.com</a>&gt;</span> wrote:<=
br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;"><div class=3D"im">On 01/20/2011 10:53 AM, D=
arren Hart wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On 01/17/2011 12:29 PM, Adrian Alonso wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
* Disable -Os optspace option not supported by gcc use insted<br>
-O2<br>
* Bump PR<br>
<br>
</blockquote>
<br>
<br>
I ran into this in the recent <a href=3D"http://u-boot_git.bb" target=3D"_b=
lank">u-boot_git.bb</a> recipe I added. Rather than<br>
create a patch to the Makefile, I found it simpler to adding OPTFLAGS to<br=
>
the EXTRA_OEMAKE variable in the recipe:<br>
<br>
EXTRA_OEMAKE =3D &quot;CROSS_COMPILE=3D${TARGET_PREFIX} OPTFLAGS=3D&#39;&#3=
9;&quot;<br>
<br>
This negates the -Os in the Makefile.<br>
</blockquote>
<br></div>
In fact, once contrib/dvhart/beagle is merged, you&#39;ll get this automati=
cally as you use u-boot.inc. So you should be able to drop this patch.<div>=
<div></div><div class=3D"h5"><br>
<br>
-- <br>
Darren Hart<br>
Intel Open Source Technology Center<br>
Yocto Project - Linux Kernel<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</div></div></blockquote></div><br></div>

--001636c5abd7aecd4a049a4dfed4--
