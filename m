Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
 by mx.groups.io with SMTP id smtpd.web12.10364.1595936575637239285
 for <poky@lists.yoctoproject.org>;
 Tue, 28 Jul 2020 04:42:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@basmevissen.nl header.s=default header.b=NnZom+ov;
 spf=pass (domain: basmevissen.nl, ip: 178.18.92.162, mailfrom: abuse@basmevissen.nl)
Received: from hosting.emcodev.net (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id C8185212002;
	Tue, 28 Jul 2020 13:42:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=basmevissen.nl;
	s=default; t=1595936573; h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1b/UoWCzAwYy8RrzbFyJcj3jNsKZmsQaW9deVM2Qdfs=;
	b=NnZom+ovXdR9E7A5Ap1W1U7dgIwlqH6vgi+oBbaPoVfSl6OyCitu8coBMRdBn+7wt1ucWN
	+Y6GDoCDTPVFBHEh6M4Ye2DXaou0Ov0Q0G6mV+xOd7rST+WyIJTU3zSR264KpeWboyFJAm
	TWTL0y9ZW3rX4kylR1PpS+BdlQpAMU/wDQtWK8sRU6WFT6gYcB7Whk5k+nfLcfEO+TAA52
	f/MRN8okdfEtz3onhP3p4FpVZmqoEkbrnjfvcJ1EvFQoELr+lE02jXOgaeoqpFOIwmM8LJ
	7Tq3KyNmXTKO0pu/gw8Yr9kW+KfeFlXSQxfWESoGJiw8JiWYrx3RZ+2iG0UUgmCrYZZN0G
	XnIWgWvFsD5EoY4qILD7ddZDUzj+K6WzYbKqvohDfCBHVmdj73u2eOT1M7KpnnytspVJQl
	Qol2uuwKqYwmAY/BEmSXpn1S0bpZ1wnJMQiasegm7gPzdMTOmMhYzlrqY1wfciNhSWcC8D
	IvrllkJXwVM+NqUY5WnP0OZ5MnwR8UNpDqhDh89gMS3dgZUlzM2l6cnlFmjLQ/ti34Dlfg
	UgXIXWFYjzH1oq2YF2TPsYrIwlrVW9jAO6vXiPHComQA91s4AbttD23cQeYm5GFuyKfQfo
	PVuh43Q9iRMOH8RkwUKso2ORwhB1Xr9Y9VRXPvMR3E5x2uAQQ6tXk=
MIME-Version: 1.0
Date: Tue, 28 Jul 2020 13:42:53 +0200
From: "Bas Mevissen" <abuse@basmevissen.nl>
To: kar_947@hotmail.fr
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] How to install Compiler g++ in Yocto #yocto #g++ #gcc #compiler #package #library #poky
In-Reply-To: <9225.1595932127071008556@lists.yoctoproject.org>
References: <20200728100506.rv3tfkpx5ic773gg@qschulz>
 <9225.1595932127071008556@lists.yoctoproject.org>
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <017bb14ff526882f611ff626171721cf@basmevissen.nl>
X-Sender: abuse@basmevissen.nl
Content-Type: multipart/alternative;
 boundary="=_7b3d73d97c83b479c24a0ec10c345e26"

--=_7b3d73d97c83b479c24a0ec10c345e26
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=US-ASCII;
 format=flowed

As git.freescale.com is no longer there, you need to update all
references to it to github.com/NXP or source.codeaurora.org. Obviously,
you need to adapt the path a little bit. Quentin gave you some hint. 

Now you have the option to change the recipe (easiest), put it in
local.conf or create your own layer and write bbappend files for it. I
think you best add something like 

KERNEL_SRC="git://source.codeaurora.org/external/linux-imx;protocol=https"
in your local.conf. 

Obviously, it also sparks the question why you are using an older
version of Yocto as in newer versions, the repository locations are
already updated. 

Bas. 

On 2020-07-28 12:28, kar_947@hotmail.fr wrote:

> Hi Quentin,
> 
> Thank you very much for your answer. But, do i just replace the old URL by your URL "http://git.yoctoproject.org/cgit/cgit.cgi/meta-freescale/tree/recipes-kernel/linux/linux-imx.inc#n17"   [1]
> 
> Can you explain me what can i do in the file "linux-arm_4.1.15.bb" ? 
> 
> What can i change in this part : 
> 
> SRCBRANCH = "imx_4.1.15_2.0.0_ga" 
> LOCALVERSION = "-2.0.1" 
> SRCREV = "b63f3f52cb393e3287352cf63f0caef31a33ab63" 
> KERNEL_SRC ?= "git://git.freescale.com/imx/linux-imx.git;protocol=git" 
> SRC_URI = "${KERNEL_SRC};branch=${SRCBRANCH}"
> 
> Best regards  
> 

-- 
Bas. 

Links:
------
[1]
http://git.yoctoproject.org/cgit/cgit.cgi/meta-freescale/tree/recipes-kernel/linux/linux-imx.inc#n17

--=_7b3d73d97c83b479c24a0ec10c345e26
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=
=3DUTF-8" /></head><body style=3D'font-size: 9pt; font-family: Verdana,Gen=
eva,sans-serif'>
<div id=3D"editbody1">
<div style=3D"font-size: 9pt; font-family: Verdana,Geneva,sans-serif;">
<p><br /></p>
<p>As git.freescale.com is no longer there, you need to update all referen=
ces to it to github.com/NXP or source.codeaurora.org. Obviously, you need t=
o adapt the path a little bit. Quentin gave you some hint.</p>
<p><br /></p>
<p>Now you have the option to change the recipe (easiest), put it in local=
.conf or create your own layer and write bbappend files for it. I think you=
 best add something like</p>
<p>KERNEL_SRC=3D"git://source.codeaurora.org/external/linux-imx;protocol=
=3Dhttps" in your local.conf.</p>
<p>Obviously, it also sparks the question why you are using an older versi=
on of Yocto as in newer versions, the repository locations are already upda=
ted.</p>
<p>Bas.</p>
<p><br /></p>
<p id=3D"v1reply-intro">On 2020-07-28 12:28, kar_947@hotmail.fr wrote:</p>
<blockquote style=3D"padding: 0 0.4em; border-left: #1010ff 2px solid; mar=
gin: 0;">
<div id=3D"v1replybody1">Hi Quentin,<br /><br />Thank you very much for yo=
ur answer. But, do i just replace the old URL by your URL "<a style=3D"back=
ground-color: #ffffff; white-space: pre-wrap;" href=3D"http://git.yoctoproj=
ect.org/cgit/cgit.cgi/meta-freescale/tree/recipes-kernel/linux/linux-imx.in=
c#n17" target=3D"_blank" rel=3D"noopener noreferrer">http://git.yoctoprojec=
t.org/cgit/cgit.cgi/meta-freescale/tree/recipes-kernel/linux/linux-imx.inc#=
n17"&nbsp;&nbsp;</a><br /><br />Can you explain me what can i do in the fil=
e "linux-arm_4.1.15.bb" ?&nbsp;<br /><br />What can i change in this part :=
&nbsp;<br /><br />
<div>SRCBRANCH =3D "imx_4.1.15_2.0.0_ga"</div>
<div>LOCALVERSION =3D "-2.0.1"</div>
<div>SRCREV =3D "b63f3f52cb393e3287352cf63f0caef31a33ab63"</div>
<div>KERNEL_SRC ?=3D "git://git.freescale.com/imx/linux-imx.git;protocol=
=3Dgit"</div>
<div>SRC_URI =3D "${KERNEL_SRC};branch=3D${SRCBRANCH}"<br /><br /><br />Be=
st regards&nbsp;</div>
</div>
<br />
<div class=3D"v1pre" style=3D"margin: 0; padding: 0; font-family: monospac=
e;"></div>
</blockquote>
<p><br /></p>
<div id=3D"v1signature">
<div class=3D"v1pre" style=3D"margin: 0; padding: 0; font-family: monospac=
e;"><span class=3D"v1sig">--&nbsp;<br />Bas.</span></div>
</div>
</div>
</div>

</body></html>

--=_7b3d73d97c83b479c24a0ec10c345e26--
