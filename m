Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C95FE00A6B; Wed, 25 Jan 2017 12:11:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.178 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f178.google.com (mail-qt0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6DCAE0088B
	for <poky@yoctoproject.org>; Wed, 25 Jan 2017 12:11:45 -0800 (PST)
Received: by mail-qt0-f178.google.com with SMTP id v23so36546459qtb.0
	for <poky@yoctoproject.org>; Wed, 25 Jan 2017 12:11:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8YlmW4H8ZyElYUQAV42DLUtNR/dWBDZBYwg8fJwhTW8=;
	b=Dllyq0VtEfBL5HJe2iM6Hs81xCi++H87wyB5SsEHiqOf1MdEnA67BAYzbl5Hj53uRL
	s+A4CXPyf1/RMbf98VjlvzGKgD4YIOLo5Ox3Eof15akui94sWXBWgNhSdOYPWFKpusTD
	N1OzGieNtVp/IJHLZjDlQ5Jgk4beJeoWXDfHS5w8f17C0TQfsPXFvmulWWrEYti6tilq
	31c6r3IJTfz7iKzewnSUhZZ2h06ql2OIWmfErEMbmXHchJWm7w4UrHcpdwHrCPnVzkBV
	alRBgoD17XTqBA/zYq9tLbSjnU9qN5ymynMHRWYrgCGCq52Xm4YD7iaTLiDI0U1Tt8Zg
	UccA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8YlmW4H8ZyElYUQAV42DLUtNR/dWBDZBYwg8fJwhTW8=;
	b=twN8AfRpWKbcnOHF+5/yEH5FiGhcGRPRdDQ713DTr+HJJ2tnUt8BycPGNjeNyGJzAU
	F0OL5YYd6TAMiHfiDUQVJMOI4LaWXsumwZOYpXMtnChXp3Ap0ZgbMqmAHXTKrgLMX4Or
	bKTX0ahj0AY7YDGdgov0lPDH3Mf14gxFYAXFE00UXfGVMALdMEDxWselAE8vfjeBSNHy
	YB1C23o4OlN1ijUldyc6jcSpMl4rp1vwWGY8VD3aoxYJxR+6MiYd9NL/oU5dwJDL3gx9
	/bd9qMeRXHch+zgPyVvfOZxywvg8weT18/SpQ8U0JWyxsgk4hh4tgQt68Qd/2wZa7Y9H
	vapw==
X-Gm-Message-State: AIkVDXJm+cDpkDoQAUp3j9rolI+fe9ihtw+s95QvIX1kB113DLrDv4i1kmciaWx3uNTdySa/kBfvhuDeP6/roGp5
X-Received: by 10.55.31.24 with SMTP id f24mr34454011qkf.221.1485375104951;
	Wed, 25 Jan 2017 12:11:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Wed, 25 Jan 2017 12:11:24 -0800 (PST)
In-Reply-To: <CAOV5e70KAEw1=nhZrHiwx6mSZh3Tk6udcpOziAdHrFb+5xYkyg@mail.gmail.com>
References: <CAOV5e70KAEw1=nhZrHiwx6mSZh3Tk6udcpOziAdHrFb+5xYkyg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 25 Jan 2017 20:11:24 +0000
Message-ID: <CAJTo0LbMTCgtzn4sNgKKiWW+CeGdUzATcugGHEkCNAS-6=t==g@mail.gmail.com>
To: Carl Schultz <carl.schultz2020@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Newbie Fetcher verification error
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
X-List-Received-Date: Wed, 25 Jan 2017 20:11:46 -0000
Content-Type: multipart/alternative; boundary=001a1147e2ba7d40220546f0d798

--001a1147e2ba7d40220546f0d798
Content-Type: text/plain; charset=UTF-8

On 25 January 2017 at 17:53, Carl Schultz <carl.schultz2020@gmail.com>
wrote:

> Sorry if this is too basic, but, running into Fetcher verification failure
> (www.example.com)
> My Internet is functional (wget, ping, and importing page through python
> all work).
>
> ERROR:  OE-core's config sanity checker detected a potential
> misconfiguration.
>     Either fix the cause of this error or at your own risk disable the
> checker (see sanity.conf).
>     Following is the list of potential problems / advisories:
>
>     Fetcher failure for URL: 'https://www.example.com/'. URL
> https://www.example.com/ doesn't work. Please ensure your network is
> configured correctly.
>

Try doing wget https://www.example.com/ in a terminal, as that's basically
what the test is checking works.  If that breaks then fix that, if it works
then you've presumably got proxies that need to be configured in your
local.conf.

Ross

--001a1147e2ba7d40220546f0d798
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 25 January 2017 at 17:53, Carl Schultz <span dir=3D"ltr">&lt;<a href=3D"=
mailto:carl.schultz2020@gmail.com" target=3D"_blank">carl.schultz2020@gmail=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>Sorry if =
this is too basic, but, running into Fetcher verification failure (<a href=
=3D"http://www.example.com" target=3D"_blank">www.example.com</a>)</div><di=
v>My Internet is functional (wget, ping, and importing page through python =
all work).=C2=A0</div><div><br></div><div><div>ERROR: =C2=A0OE-core&#39;s c=
onfig sanity checker detected a potential misconfiguration.</div><div>=C2=
=A0 =C2=A0 Either fix the cause of this error or at your own risk disable t=
he checker (see sanity.conf).</div><div>=C2=A0 =C2=A0 Following is the list=
 of potential problems / advisories:</div><div><br></div><div>=C2=A0 =C2=A0=
 Fetcher failure for URL: &#39;<a href=3D"https://www.example.com/" target=
=3D"_blank">https://www.example.com/</a>&#39;. URL <a href=3D"https://www.e=
xample.com/" target=3D"_blank">https://www.example.com/</a> doesn&#39;t wor=
k. Please ensure your network is configured correctly.</div></div><div></di=
v></blockquote></div><br>Try doing wget <a href=3D"https://www.example.com/=
">https://www.example.com/</a> in a terminal, as that&#39;s basically what =
the test is checking works.=C2=A0 If that breaks then fix that, if it works=
 then you&#39;ve presumably got proxies that need to be configured in your =
local.conf.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_e=
xtra">Ross</div></div>

--001a1147e2ba7d40220546f0d798--
