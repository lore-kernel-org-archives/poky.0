Return-Path: <cahoshing@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 83E974C8007E
	for <poky@yoctoproject.org>; Fri,  6 May 2011 02:32:31 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pwi16 with SMTP id 16so1922896pwi.35
	for <poky@yoctoproject.org>; Fri, 06 May 2011 00:32:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=ZNlY6/GgcE7g8if7K31tkEgg6kuf1/i0QnZkMTijH2M=;
	b=AA8yOt5272xSv3wTZ+TfS619O6XV6kMaP3hZpSCMbBgvdA1VxNqCgyFgf7qi2cizbu
	deytUgLktYonqEuZm1MjZ2gIbTfyyQu8odscH7xyXWycSBcImdRSLO7sF+F1G8ZtwprB
	uYtt7Ck6U6VjXv+vRrr6+zD9yKI02abnniyu8=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=jmMs8gd/CPcvvH/jDDQyMsNUQDHhVKIlU3guBXijgD7BU/MJLQxSivReR/nLCRw8xK
	CHvIvvmsCvwtjVRI6XGNqfMCWFarykSt/IMLUPrmfWWEU1dSTGvhe19wmQ2Fhz3aWkmc
	YGfbVMUZIk15uNMw+daFF6ZPbKTluav+Abhys=
MIME-Version: 1.0
Received: by 10.142.83.8 with SMTP id g8mr1740616wfb.146.1304667151096; Fri,
	06 May 2011 00:32:31 -0700 (PDT)
Received: by 10.143.158.19 with HTTP; Fri, 6 May 2011 00:32:31 -0700 (PDT)
In-Reply-To: <4DC2B2C8.5050106@mlbassoc.com>
References: <BANLkTim-yTAu5cDewMwawEM_FeL_xkNiVA@mail.gmail.com>
	<1304604592.17396.122.camel@elmorro>
	<4DC2B2C8.5050106@mlbassoc.com>
Date: Fri, 6 May 2011 13:02:31 +0530
Message-ID: <BANLkTim7_pkGarX_F6RCsM8gF72os-XWRg@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Error in pulling cups package
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
X-List-Received-Date: Fri, 06 May 2011 07:32:31 -0000
Content-Type: multipart/alternative; boundary=001636e1f9da175d9504a2967e49

--001636e1f9da175d9504a2967e49
Content-Type: text/plain; charset=ISO-8859-1

Thanks guys a lot,

Gary it worked finaly!!!!!!!!! :-) as said by you I made the changes in
local.conf for PACKAGE_CLASSES ?= "package_ipk"

Chinmaya

--001636e1f9da175d9504a2967e49
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr"><br><meta http-equiv="content-type" content="text/html; charset=utf-8"><span class="Apple-style-span" style="border-collapse: collapse; font-family: arial, sans-serif; font-size: 13px; ">Thanks guys a lot,<div>
<br></div><div>Gary it worked finaly!!!!!!!!! :-) as said by you I made the changes in local.conf for PACKAGE_CLASSES ?= &quot;package_ipk&quot;</div><div><br></div><div>Chinmaya</div><div><br></div></span></div>

--001636e1f9da175d9504a2967e49--
