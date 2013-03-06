Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ee0-f50.google.com (mail-ee0-f50.google.com [74.125.83.50])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 3B5F8E014A7
	for <poky@lists.yoctoproject.org>; Wed,  6 Mar 2013 08:57:55 -0800 (PST)
Received: by mail-ee0-f50.google.com with SMTP id e51so6022990eek.23
	for <poky@lists.yoctoproject.org>; Wed, 06 Mar 2013 08:57:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=nzyrtXo5t8V9ePNpwUOJM2XH/ju8axDfRV1p5yVZEts=;
	b=Y6wou5b9FU2VYTPAtcsLjcC7KzxXOttGniTY2yDTdWMSLl/UF8Ct/pPF/id+5Q+WTD
	W5Xjn8QWacACaYKUXi2AJIKtcjHaqLTIduUKAbth7Exi8z2Dydvq5JLi2Fid6BBZZjc9
	Y4h4o8H1A5IN4TIzLejehwYlebtKm/3zN/HfY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=nzyrtXo5t8V9ePNpwUOJM2XH/ju8axDfRV1p5yVZEts=;
	b=MAt2gd5fi/IurTaq+JHht9rYtJte4DigqTDfzFu6wCOpljm7qqIK4/ssRVcYwf/lGT
	0erepFoJjdQBy8zVt3EaMF9TCuRld1AB07BFpIthwOd6i3DMgQYEbFy+FE8REjhQmab/
	TFEHYCqpUgIzHsH5+TTg9PyxUyfg6VKziNy0ySXk+kaiodB5BRFaoLegl4Lod1dKi09v
	gTEcmnsdLHIMnbqmJT/0g0ZoiMdxlTKt1AM67GYaMWJ5z3/brQfuB/lVmamUEl9INorE
	l+whC6AAjOmSHlXgxRC4l4fUniXvgac/5oz3GzDaHhwZrfZ6edb1C774ifk4VlwlEgp8
	4EEg==
MIME-Version: 1.0
X-Received: by 10.14.200.137 with SMTP id z9mr83251949een.20.1362589073380;
	Wed, 06 Mar 2013 08:57:53 -0800 (PST)
Received: by 10.223.43.200 with HTTP; Wed, 6 Mar 2013 08:57:52 -0800 (PST)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB123796F34862D@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123796F34862D@ORSMSX101.amr.corp.intel.com>
Date: Wed, 6 Mar 2013 08:57:52 -0800
Message-ID: <CA+gsK-oeJNVDk6rWximRQS5YK7JV5wkNq9eL1eBxCTysEjH=Pw@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
X-Gm-Message-State: ALoCoQnZhL7AZ69yBW+Zhl3Xy61q+fAJiY5z2ilqFW45U1Fxj4mE8NNglkZebpmZD7WWDuNsi+mY
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	poky <poky@lists.yoctoproject.org>
Subject: Re: FW: Is there a guide for adding a board to the yocto system?
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
X-List-Received-Date: Wed, 06 Mar 2013 16:57:55 -0000
Content-Type: multipart/alternative; boundary=047d7b343b82b1cac104d7447d0e

--047d7b343b82b1cac104d7447d0e
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 5, 2013 at 5:19 PM, Rifenbark, Scott M <
scott.m.rifenbark@intel.com> wrote:

>  Isn=92t this a matter of creating a BSP layer for the desired board?  If
> so, doesn=92t one try to find a similar board from one of the
> supported/released yocto BSPs and then modify that to create the custom
> layer?****
>
> ** **
>
> Scott****
>
> **
>
Yes, it is. At least IMHO. Technically, you have three ways of creating a
YP BSP layer:

   - Build it manually from scratch by creating the directory tree and
   populate it with the configuration files, recipes, readme files, etc. th=
at
   you need.
   - Copy an existing BSP layer that supports a machine that is similar to
   the one you are trying to support.
   - Use the yocto-bsp script to create one and then eventually the
   yocto-kernel script to modify the kernel configuration if you are
   leveraging the YP kernel.

Rudi

--047d7b343b82b1cac104d7447d0e
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Tue, Mar 5, 2013 at 5:19 PM, Rifenbark, Scott M <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:scott.m.rifenbark@intel.com" target=3D"_bl=
ank">scott.m.rifenbark@intel.com</a>&gt;</span> wrote:<br><div class=3D"gma=
il_extra">
<div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204=
);border-left-style:solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D""><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;=
color:rgb(31,73,125)">Isn=92t this a matter of creating a BSP layer for the=
 desired board?=A0 If so, doesn=92t one try to find a similar board from on=
e of the supported/released yocto
 BSPs and then modify that to create the custom layer?<u></u><u></u></span>=
</p>
<p class=3D""><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;=
color:rgb(31,73,125)"><u></u>=A0<u></u></span></p>
<p class=3D""><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;=
color:rgb(31,73,125)">Scott<u></u><u></u></span></p>
<p class=3D""><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;=
color:rgb(31,73,125)"><u></u>=A0</span></p></div></div></blockquote>Yes, it=
 is. At least IMHO. Technically, you have three ways of creating a YP BSP l=
ayer:<div>
<ul><li>Build it manually from scratch by creating the directory tree and p=
opulate it with the configuration files, recipes, readme files, etc. that y=
ou need.</li><li>Copy an existing BSP layer that supports a machine that is=
 similar to the one you are trying to support.</li>
<li>Use the yocto-bsp script to create one and then eventually the yocto-ke=
rnel script to modify the kernel configuration if you are leveraging the YP=
 kernel.</li></ul></div><div>Rudi=A0</div></div>
</div></div>

--047d7b343b82b1cac104d7447d0e--
