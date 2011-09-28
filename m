Return-Path: <vsailub4u@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D169DE01224
	for <poky@yoctoproject.org>; Wed, 28 Sep 2011 06:21:29 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iabz7 with SMTP id z7so10825144iab.35
	for <poky@yoctoproject.org>; Wed, 28 Sep 2011 06:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=1p3mmPTLHIJW7Dwmz7rf9WxHemL8GEs6gAwlXCrVnxQ=;
	b=ZbS5TU1GsivoETQMTn1qGlAFDth4M1pRr598p110uzKeyWL+tKumWeZyCuDpPSsro9
	decSyOZwUsOdhmo0QEira2bsl6l/qYAiL9+GMQ5UOtDZi6HCvqfNe4Bl2ioimZnzz5LB
	xJyV3nAhykqFJ7MEzpHN4g+ynoc42evX1wxhc=
MIME-Version: 1.0
Received: by 10.68.19.100 with SMTP id d4mr44464849pbe.34.1317216088860; Wed,
	28 Sep 2011 06:21:28 -0700 (PDT)
Received: by 10.142.239.7 with HTTP; Wed, 28 Sep 2011 06:21:28 -0700 (PDT)
Date: Wed, 28 Sep 2011 18:51:28 +0530
Message-ID: <CAFt-coxvnV=WbYBAyRTBXeeXZ0Zc1ascqCXPC3V_WmWAWTspyQ@mail.gmail.com>
From: v sailaja <vsailub4u@gmail.com>
To: poky@yoctoproject.org
Subject: How to pull grub2
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
X-List-Received-Date: Wed, 28 Sep 2011 13:21:30 -0000
Content-Type: multipart/alternative; boundary=bcaec521601511a68904ae004592

--bcaec521601511a68904ae004592
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I  have built the poky source with grub-0.97 but Now i want to pull grub2.
I have grub2 recipe i.e, grub_1.98.bb.
If grub_0.97.bb file is there, then it is building for grub-0.97 only, so I
deleted the grub_0.97.bb file from meta/recipes-bsp/ and
I just changed the preferred version of grub from 0.97 to 1.98
in  fishriver.conf.

-REFERRED_VERSION_grub ?= "0.97"
+REFERRED_VERSION_grub ?= "1.98"

But i am facing an error *"ERROR: Nothing PROVIDES 'grub'".*
Can anyone tell me how to resolve this error and why i  am facing this error
though the grub recipe is there in meta/recipes-bsp/.
*
*
*
*



-- 
Thanks & Regards,
SAI

--bcaec521601511a68904ae004592
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<div><br></div><div>I =A0have built the poky source with grub-0.97 but N=
ow i want to pull grub2.</div><div>I have grub2 recipe i.e, <a href=3D"http=
://grub_1.98.bb" target=3D"_blank">grub_1.98.bb</a>.</div><div>If <a href=
=3D"http://grub_0.97.bb">grub_0.97.bb</a> file is there, then it is buildin=
g for grub-0.97 only, so=A0I deleted the=A0<a href=3D"http://grub_0.97.bb/"=
 target=3D"_blank">grub_0.97.bb</a>=A0file from meta/recipes-bsp/ and</div>


<div>I just changed the=A0preferred version of grub from 0.97 to 1.98 in=A0=
=A0fishriver.conf.</div><div><br></div><div>-REFERRED_VERSION_grub ?=3D &qu=
ot;0.97&quot;</div><div>+REFERRED_VERSION_grub ?=3D &quot;1.98&quot;</div><=
div><br>


</div><div>But i am facing an error <i><b>&quot;ERROR: Nothing PROVIDES &#3=
9;grub&#39;&quot;.</b></i></div><div>Can anyone tell me how to resolve this=
 error and why i =A0am facing this error though the grub recipe is there in=
 meta/recipes-bsp/.</div>


<div><b><i><br></i></b></div><div><b><i><br></i></b></div><div><br></div><d=
iv><br></div><div><div><br></div>-- <br>Thanks &amp; Regards,<br>SAI<br><br=
>
</div>

--bcaec521601511a68904ae004592--
