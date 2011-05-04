Return-Path: <cahoshing@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1A9114C80FEA
	for <poky@yoctoproject.org>; Wed,  4 May 2011 01:16:52 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk10 with SMTP id 10so536974pzk.35
	for <poky@yoctoproject.org>; Tue, 03 May 2011 23:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=8+vSXATsPbvR92lTMRBZnwVev3RGd65UL4UngRMARZY=;
	b=G9ON0/2cGMtkxLwHvOZC7P/hxC2LL43scL1lBq5cMHON2tPStAg5SFzTi9bkxTkQir
	NLdCP4AEue/13ojSjKwmFGO/sThK2fM8ynYKWvsLWM/bUQeIqaC+IG8qFtLfwS37iKxK
	OcE4EZtENDYBQEzpKtKQWAzaRYmkVyepGgBmg=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=Tp24Vec8VPa+05v6M7iL0GaiRN4lIg0sgI51jazY7ym/yWRPurAwmAMTAvCt7sA78C
	uIePWzTQ5BWP9oQePrrkOcaN7qd+4dG7q65oV9m8FRnG5n5xt275H85bpEOL24xcjuX8
	wZBKk69+jFFOpXIw+B0Yjcba2qDxoN9q3smkI=
MIME-Version: 1.0
Received: by 10.142.83.8 with SMTP id g8mr415793wfb.146.1304489811656; Tue, 03
	May 2011 23:16:51 -0700 (PDT)
Received: by 10.143.158.19 with HTTP; Tue, 3 May 2011 23:16:51 -0700 (PDT)
In-Reply-To: <4DC0DB68.1040303@windriver.com>
References: <BANLkTim0CS8a5Q1Mv-m=KDsBGTPNA3V6mQ@mail.gmail.com>
	<4DC0DB68.1040303@windriver.com>
Date: Wed, 4 May 2011 11:46:51 +0530
Message-ID: <BANLkTinoV_ho+acrN=ydPTwrAfusF2ax8Q@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: Error in pulling nspr package
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
X-List-Received-Date: Wed, 04 May 2011 06:16:52 -0000
Content-Type: multipart/alternative; boundary=001636e1f9dad63ecd04a26d3399

--001636e1f9dad63ecd04a26d3399
Content-Type: text/plain; charset=ISO-8859-1

Hi,
I want nspr to be compile on 64 bit host,

In sugarbay.conf I have specified
TARGET_CC_ARCH = "-m64"
but still how it is taking -m32 ,if you have any idea plz let me know.
Other than this where I need to mention it for -m64 ,in nspr bb file can I
write in do configure how to set -m64 by mentioning CXX / CC = "<gcc> *-m64*"
something like this

Chinmaya

--001636e1f9dad63ecd04a26d3399
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div>Hi,<div>I want nspr to be compile on 64 bit=
 host,<div><br></div><div>In sugarbay.conf I have specified=A0<br>TARGET_CC=
_ARCH =3D &quot;-m64&quot;</div><div>but still how it is taking -m32 ,if yo=
u have any idea plz let me know.</div>
<div>Other than this where I need to mention it for -m64 ,in nspr bb file c=
an I write in do configure how to set -m64 by mentioning CXX / CC =3D &quot=
;&lt;gcc&gt; <b>-m64</b>&quot; something like this<br><div class=3D"gmail_q=
uote">
<div><br></div><div>Chinmaya=A0</div></div><br></div></div></div>

--001636e1f9dad63ecd04a26d3399--
