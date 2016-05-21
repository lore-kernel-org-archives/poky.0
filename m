Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76753E00F72; Sat, 21 May 2016 12:27:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF45EE00F6E
	for <poky@yoctoproject.org>; Sat, 21 May 2016 12:27:24 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id f8so38488425ioe.3
	for <poky@yoctoproject.org>; Sat, 21 May 2016 12:27:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZCdNKCnvpcexctcqk6GoFMYqAp2hBgAPu/MJAmlA3MM=;
	b=TblYgXl+PRg+R1jKPVp5UT8sYq1Vtv/Sekn41xO6GQCTjDqSBuYjyLhbOIRbfUulAx
	5jmkhiECf8cg8VCaAe8h6fUZDWDuMAJ+5UL2mltFsPWlfyeybyGe9EWOIl8zwSveSTAe
	stxzTI2WDNQ8znGI+4R8/ASKJmelhFEP6wNP8zMY1Mxmy3tzqjj9/y8c/K9KgxCquEF0
	GWMwejkpUkPMjMpzcl+ikgaOdpAZ9eAdRa4LvrJNY2CzZ2FS3lVXDzrKwQAxbBrrAiea
	miT1xayebjABNPmEO6wUsORAvh5vZGq/Gv9Yb4Sv9ze3Fsu6fggVoYwj4HKZ2+NOi9MQ
	23/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZCdNKCnvpcexctcqk6GoFMYqAp2hBgAPu/MJAmlA3MM=;
	b=OqrItwZ4hIlBuSgEEmUHgHPE67zvK0oOm19kfh2kkd4s7/N/EU4z6ys1Mg2OmlDyEY
	6nObHRE3EROw6/tLrnmKURgrwvzOBET3b+3j0XS9bWVX6KFZOtbF6k9Y6KGPNb2Hcb67
	Y2p1BA4Iv9je+QUb3rBesqVXUkhcumaWJ4I6jsHFnAM84z4ArtBaLDbXEYiDfdw0z7FR
	z/y1RSyJifN7q3jBKpP8hxsVK1gpC4FYSLdw3FfBA2KunZJwNXQzsQuR4FD4ZBaLsQXV
	YwflYvq2ozMI5L9GLmsmrMttSL7B7MOy194nhTJWvrcr07BDImQ0F1fNlAjJyXdyAURD
	a4lA==
X-Gm-Message-State: AOPr4FVzlH9sKV7Gyza8bDK3FDMQGAleOi+kK+ev0Po08KtXefINZo5z40etB02lINizQGIO0QfOL3OZl2jBITPD
X-Received: by 10.107.135.211 with SMTP id r80mr7901780ioi.133.1463858844150; 
	Sat, 21 May 2016 12:27:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Sat, 21 May 2016 12:27:04 -0700 (PDT)
In-Reply-To: <573F3276.4080503@linux.intel.com>
References: <1462817910-15459-1-git-send-email-edwin.plauchu.camacho@linux.intel.com>
	<CAJTo0Lb3Ua9OtsT=XbCHhY4mS6_b2q0BiNp--4rMKXQcRnYQVw@mail.gmail.com>
	<57337913.4090305@linux.intel.com> <573F3276.4080503@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 21 May 2016 20:27:04 +0100
Message-ID: <CAJTo0LYW_th6cVAaFxUU0Y8mJOUkcUrvDb3Kc+pM_3M8O-v+dQ@mail.gmail.com>
To: Plauchu Edwin <edwin.plauchu.camacho@linux.intel.com>
Cc: Poky Project <poky@yoctoproject.org>,
	Edwin Plauchu <edwin.plauchu.camacho@intel.com>
Subject: Re: [PATCH] meta-yocto-bsp: Enable xf86 modeset for beaglebone
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
X-List-Received-Date: Sat, 21 May 2016 19:27:25 -0000
Content-Type: multipart/alternative; boundary=001a113ed20a686e7b05335f32fd

--001a113ed20a686e7b05335f32fd
Content-Type: text/plain; charset=UTF-8

On 20 May 2016 at 16:51, Plauchu Edwin <
edwin.plauchu.camacho@linux.intel.com> wrote:

> Ping
>

It's in the staging branches and should be merged soon.

Ross

--001a113ed20a686e7b05335f32fd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 20 May 2016 at 16:51, Plauchu Edwin <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:edwin.plauchu.camacho@linux.intel.com" target=3D"_blank">edwin.plauchu.=
camacho@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex"><div text=3D"#000000" bgcolor=3D"#FFFFFF">Ping<div class=3D"yj6qo ajU"=
><div id=3D":dv1" class=3D"ajR" tabindex=3D"0"></div></div></div></blockquo=
te></div><br>It&#39;s in the staging branches and should be merged soon.</d=
iv><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</di=
v></div>

--001a113ed20a686e7b05335f32fd--
