Return-Path: <kergoth@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 254FBE0030C
	for <poky@yoctoproject.org>; Thu, 12 Jan 2012 13:12:35 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qcsg1 with SMTP id g1so1649944qcs.35
	for <poky@yoctoproject.org>; Thu, 12 Jan 2012 13:12:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=nvoIIq4+icf5qZho3iSr4uuRwqXDCxOu3A3czdB6E+g=;
	b=Yw18N0jnz3WR6kCD89Tsb5uVRL/x9P93QbG8/HWDSPESmUahph/RRD51nB0q2GNB8i
	H6nTAbKES5CLpYaI+2VLaxJsYOa7rKdzpJ6XdJdGG4t0Z4UyuPaxGembGv5HCX5eae+3
	rL3qp+DmR6bpB28G5Q6eLNq9argx9cjSMLXRE=
Received: by 10.224.175.2 with SMTP id v2mr7841769qaz.69.1326402754330; Thu,
	12 Jan 2012 13:12:34 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.229.186.149 with HTTP; Thu, 12 Jan 2012 13:12:13 -0800 (PST)
In-Reply-To: <4F0F4B94.3020604@mlbassoc.com>
References: <4F0EAE81.8030800@mlbassoc.com>
	<20120112131352.GC3452@jama.jama.net>
	<4F0EE095.1090709@mlbassoc.com> <20120112133749.GD3452@jama.jama.net>
	<4F0EFD47.1070708@mlbassoc.com>
	<CAEsOVNcLNJ2iD2YANL6z2ris6kjbQ1kbky2onu8hZrNTim=P+Q@mail.gmail.com>
	<4F0F1321.8080706@mlbassoc.com>
	<CAEsOVNfC5t6p3enJdauZDSiPZxDA3MkHCwPMgqkOD8s9qyz3Zg@mail.gmail.com>
	<4F0F4B94.3020604@mlbassoc.com>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 12 Jan 2012 14:12:13 -0700
X-Google-Sender-Auth: -owV2k9uO_GgZS_ZOrzjlnEWtL8
Message-ID: <CABcZAN=HJjD8uq-00s0=_ho6DXRbEFHBEpF-jQQk0J=qGFFq8A@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	Poky Project <poky@yoctoproject.org>
Subject: Re: sstate info
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
X-List-Received-Date: Thu, 12 Jan 2012 21:12:35 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 12, 2012 at 2:07 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2012-01-12 10:23, McClintock Matthew-B29882 wrote:
>>
>> On Thu, Jan 12, 2012 at 11:06 AM, Gary Thomas<gary@mlbassoc.com> =C2=A0w=
rote:
>>>>
>>>> DATE is not important, that is why we are explicitly telling the
>>>> signature to ignore this variable.
>>>
>>>
>>>
>>> It seems that DATE needs to be ignored other places as well. =C2=A0Digg=
ing
>>> further, I find:
>>>
>>> $ bitbake-diffsigs
>>>
>>> p60_poky/tmp/stamps/i686-linux/quilt-native-0.50-r0.do_patch.sigdata.21=
6968eaca38198b88a7520be02e3fca
>>>
>>> p60_test_pass1/tmp/stamps/i686-linux/quilt-native-0.50-r0.do_patch.sigd=
ata.0ce7898e700de80ff8afcb0850ec4ed0
>>> basehash changed from 4863b21531f8236184a7c3b16da3ea13 to
>>> 7ee430d1251148b2509ef2aefb6e5443
>>
>>
>> You might just try adding to BB_HASHBASE_WHITELIST in bitbake.conf
>> which should ignore DATE in all recipes. I thought this was there, you
>> can check the history to see...
>
>
> I'm trying this now. =C2=A0Of course, touching that variable invalidates
> the sstate cache, so I won't know until tomorrow if it works.

You can't just override DATE in local.conf? I don't see the point in
holding off, unless your builds will take till tomorrow to finish?
--=20
Christopher Larson

