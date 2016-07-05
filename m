Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AE86E00D8F; Tue,  5 Jul 2016 09:47:02 -0700 (PDT)
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
	*      [209.85.214.53 listed in list.dnswl.org]
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 717C1E00D8F
	for <poky@yoctoproject.org>; Tue,  5 Jul 2016 09:46:58 -0700 (PDT)
Received: by mail-it0-f53.google.com with SMTP id g4so46001574ith.1
	for <poky@yoctoproject.org>; Tue, 05 Jul 2016 09:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=yUWKgU7EZfyXB6NZtkDZx4YFOC8BM9uE8svnXYaxCZQ=;
	b=fsQGvgYLq4TVpW5uC+IoNyztolCdDU6HHOxWYzxKebC7xh78uwuESS+6bs9WMUmf+Y
	pBjBNZ7AkC0a0XTZatIJ7jK0ezG/hKjf0Gq1P+s8niqrVW1gm9CabaCA/IzOjKRNPvIV
	xKnXY/FEIE2IVItAMchQv9CrQrJK6Rx609ixVowQR6yU7RxyelhlXVZmD/EOBjsrEE5U
	pUb9SHUaEL1iqAxmFFAA55/ral8Wo12dl3brJlUoitWGzAOBt0qwMFsU0X5eBD0YYH7i
	wkIPVofReq3RurCWJx1waftW4H5eAjbv8CYZ4RAEQNUDIXGETs2ndldi5CnZ5CC4b1xX
	TTTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=yUWKgU7EZfyXB6NZtkDZx4YFOC8BM9uE8svnXYaxCZQ=;
	b=LdtofJl2gfAjw9oXBd27ZW1m73a3BiYBquHNKu9uLgdJxUY7e+Ncg+SZlpq5FpM2um
	znBIkdXn6WKqUbaWlhB2KLe/8tUtcfwO4DqUwzJD7GEELnckM1p/K+m/LK8vtMkQf1ZB
	9lINR3Pu9OLq5V7e5hbA7aNVNFdUSZoMbLZy1id6cp4jAFLpHAdpuwgkSTAkQcSkhNdW
	NC0EanFrbhDOgu7162Yju1gLZpb5TGKNcOcTA/tanzgGgITSRov0Y28pbaU3GF4Z8rsn
	Nfi2ESd5+mj7snIbHM11byjw7qJgKzNilQT2FijdksE8JcHlRwqPy10HFXo8o6cmfojG
	VL9A==
X-Gm-Message-State: ALyK8tIk11eMa62deT2GKG+53j2sPAenmZlwly6ZJbvDepmEkuO6a/ZfGn6CihzWTzExpOpzDQ5k816kUuPxmg3a
X-Received: by 10.36.57.70 with SMTP id l67mr15091155ita.22.1467737218089;
	Tue, 05 Jul 2016 09:46:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.151 with HTTP; Tue, 5 Jul 2016 09:46:38 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.20.1607051239420.6050@localhost.localdomain>
References: <alpine.LFD.2.20.1607040639330.6324@localhost.localdomain>
	<CAMKF1soWb4UKJ6_5MZrxyRgu0miuAFeDC=QZ6xDsPeNpPuM24A@mail.gmail.com>
	<alpine.LFD.2.20.1607050616200.21917@localhost.localdomain>
	<CAMKF1spr5ieFwHXJL_SnUNJDUk7hmQTDM1c5xxJ20A12pABikQ@mail.gmail.com>
	<alpine.LFD.2.20.1607051239420.6050@localhost.localdomain>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 5 Jul 2016 17:46:38 +0100
Message-ID: <CAJTo0Lb14NoX5ADXXhn6EzBXJW=e3ctu9kOD=OD4sNiXPg+tZA@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] meta-yocto: Delete PREFERRED_VERSION for obsolete version of U-Boot.
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
X-List-Received-Date: Tue, 05 Jul 2016 16:47:02 -0000
Content-Type: multipart/alternative; boundary=001a114a9c668265500536e6334c

--001a114a9c668265500536e6334c
Content-Type: text/plain; charset=UTF-8

On 5 July 2016 at 17:40, Robert P. J. Day <rpjday@crashcourse.ca> wrote:

> > there is meta-fsl-ppc and folks may have used that.
>
>   that may be, but since the mpc8315e-rdb is the powerpc yocto
> reference board, should it not build with only meta-yocto* layers?


Yep, and QA tend to use images built by the autobuilder, so nobody noticed
the warnings.

Ross

--001a114a9c668265500536e6334c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 5 July 2016 at 17:40, Robert P. J. Day <span dir=3D"ltr">&lt;<a href=3D"=
mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.ca</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">&gt; th=
ere is meta-fsl-ppc and folks may have used that.<br>
<br>
</span>=C2=A0 that may be, but since the mpc8315e-rdb is the powerpc yocto<=
br>
reference board, should it not build with only meta-yocto* layers?</blockqu=
ote></div><br>Yep, and QA tend to use images built by the autobuilder, so n=
obody noticed the warnings.</div><div class=3D"gmail_extra"><br></div><div =
class=3D"gmail_extra">Ross</div></div>

--001a114a9c668265500536e6334c--
