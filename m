Return-Path: <andrei@gherzan.ro>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06645E00723
	for <poky@yoctoproject.org>; Thu, 14 Jun 2012 10:20:17 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so1997421yhf.35
	for <poky@yoctoproject.org>; Thu, 14 Jun 2012 10:20:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=rmtzpG7ccxMQLShVD5edNM2+qKZUQKlJeASnFJbOyJQ=;
	b=j3tbpEkkfqBPF7VCRJiOHKABqWMKfLZ6lwYMPJeBmQx+dgqDNL0iTG5jSH6RVOk8hq
	3xkatyLdo4CawjikMiETYlkg+ogBmsSHsuD2CuCWWWx2xchAc2x9Da88hpt5jF8CiWai
	kPekaaIR/AYDxr+UxgI3U0rfEEqZd8DFYdcz/RJz6uVFzUN2NMjpJbMoRV4PQYgoRWlI
	FdwLttkNdhBII0L2Sk4mikd3/cT4U6snNJO+5lwN96AtG5BZ6bXX2GjtjD0VKKN/FyJX
	w8pB8viTKOUOJFeZ34fkcSzjui7MA5RUdoETUHxmnGaW59O5+04Ov8Y2OWYC+sGj2ouk
	EMqw==
Received: by 10.50.100.137 with SMTP id ey9mr1369854igb.61.1339694416870; Thu,
	14 Jun 2012 10:20:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.162.166 with HTTP; Thu, 14 Jun 2012 10:19:56 -0700 (PDT)
X-Originating-IP: [79.117.123.32]
In-Reply-To: <4FDA05EC.5090006@yahoo.fr>
References: <4FD731A1.6020503@yahoo.fr>
	<CAK18fxGPgrxmXoJ5Wf4s_-2C8Bpnv-xetUBSHXsRVQi+VHheYQ@mail.gmail.com>
	<4FDA05EC.5090006@yahoo.fr>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 14 Jun 2012 20:19:56 +0300
Message-ID: <CAK18fxH_7aE2opsucsK--pcNT+GDy5xH7MpwjjU5Axj_fMk_Ww@mail.gmail.com>
To: Patrick <kpa_info@yahoo.fr>
X-Gm-Message-State: ALoCoQlxskRCfxLi73UY+x0P3ANYl/I9cXCeibUradGqmyVW4RtRVbIyjs38iDk1Fnf+OVUHtn4T
Cc: poky@yoctoproject.org
Subject: Re: How to set root password
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
X-List-Received-Date: Thu, 14 Jun 2012 17:20:18 -0000
Content-Type: multipart/alternative; boundary=e89a8f23532bd33bb404c271e968

--e89a8f23532bd33bb404c271e968
Content-Type: text/plain; charset=ISO-8859-1

Indeed. You can sed
root::0:0:root:/home/root:/bin/sh
from base-passwd.

This was how i did it. Don't know of there another solution on this.

@g



On Thu, Jun 14, 2012 at 6:40 PM, Patrick <kpa_info@yahoo.fr> wrote:

> On 06/14/2012 09:06 AM, Andrei Gherzan wrote:
>
>> You can find your answer in these places:
>>
>> core-image.bbclass - at the end of this file
>> zap_root_password () - from image.bbclass
>>
>>
> I could see that if debug-tweaks is in IMAGE_FEATURES the root password is
> set to *, but we would like to set a real password.
>
> Do we have to generate a password hash and put it in /etc/passwd ?
>
> Patrick
>

--e89a8f23532bd33bb404c271e968
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Indeed. You can sed=A0<div>root::0:0:root:/home/root:/bin/sh</div><div>from=
 base-passwd.</div><div><br></div><div>This was how i did it. Don&#39;t kno=
w of there another solution on this.</div><div><div style=3D"text-align:cen=
ter">

</div><div style=3D"text-align:center"><div align=3D"left"><font face=3D"Ar=
ial" color=3D"#333333" size=3D"-1"><br></font><font color=3D"#333333" face=
=3D"Arial">@g</font></div></div><br>
<br><br><div class=3D"gmail_quote">On Thu, Jun 14, 2012 at 6:40 PM, Patrick=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:kpa_info@yahoo.fr" target=3D"_blan=
k">kpa_info@yahoo.fr</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">

<div class=3D"im">On 06/14/2012 09:06 AM, Andrei Gherzan wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
You can find your answer in these places:<br>
<br>
core-image.bbclass - at the end of this file<br>
zap_root_password () - from image.bbclass<br>
<br>
</blockquote>
<br></div>
I could see that if debug-tweaks is in IMAGE_FEATURES the root password is =
set to *, but we would like to set a real password.<br>
<br>
Do we have to generate a password hash and put it in /etc/passwd ?<span cla=
ss=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
Patrick<br>
</font></span></blockquote></div><br></div>

--e89a8f23532bd33bb404c271e968--
