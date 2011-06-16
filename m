Return-Path: <kergoth@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id BBD844C800A6
	for <poky@yoctoproject.org>; Thu, 16 Jun 2011 13:39:26 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vws7 with SMTP id 7so2110557vws.35
	for <poky@yoctoproject.org>; Thu, 16 Jun 2011 11:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:from
	:date:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=1RkK694GLZ9sGuYiQupxpt5ie2klY3R2ZMRT5NDacM4=;
	b=Y7tWtUBa57WS1DBAxRTEiSeDZJMyUMi82IuTv0rHNAcvVI1U+xlSfxR/gMr39arU2y
	s5Dd+PBXNiN6z11/HUxo/jcgKLGWo9HJwjLxjKioYCmszfpcWPQCk+K6j5XYX8pSbtWI
	gA6kDXxc+uGKi8mpA5v4aIurD0xAsvhOfLmM4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	b=sRbg3hS+uTxwsDzWecu7Ox+aZkyb12CmP4hQLM4kqDuogf6oci6VTUgGbzwpI7yLEQ
	fvG3qOyrgNPcs6iYX1OWWBrzFiy9l+VRb85uk3oSQDEepSApuLpNr6UW+ZS+XD2UFrFy
	t95N46uIw71xzD/vLAwKl8iUtPqhe3n/q3Vu8=
Received: by 10.52.116.33 with SMTP id jt1mr1756244vdb.249.1308249566166; Thu,
	16 Jun 2011 11:39:26 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.52.181.2 with HTTP; Thu, 16 Jun 2011 11:39:06 -0700 (PDT)
In-Reply-To: <4DFA4B3F.905@windriver.com>
References: <4DFA2CFF.6020003@emcraft.com> <4DFA4B3F.905@windriver.com>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 16 Jun 2011 11:39:06 -0700
X-Google-Sender-Auth: Kyg62cBSWVaf0yBz_lga2rsfeeM
Message-ID: <BANLkTinYHKHpkdBhLJASLQXpBHueEHTZvg@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: bbappend and require
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
X-List-Received-Date: Thu, 16 Jun 2011 18:39:27 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 16, 2011 at 11:28 AM, Mark Hatle <mark.hatle@windriver.com> wro=
te:
> On 6/16/11 11:19 AM, Ilya Yanok wrote:
>> Hi guys,
>>
>> Is bbappend supposed to work when the recipe is included (with require)
>> from another recipe?
>>
>> We want to add some package to SDK so I've created
>> task-sdk-host.bbappend in our layer and it works fine. But when I'm
>> building task-qte-toolchain-host (which requires task-sdk-host) bbappend
>> file seems to be ignored. Is it to be expected?
>>
>> It's no problem to create task-qte-toolchain.bbappend also, and this
>> fixes the problem but what should be the right behavior of require wrt
>> bbapend?
>
> This sounds like a bug to me. =C2=A0Which version of Poky/Yocto are you c=
urrently
> using, and can you give us a simple reproducer. =C2=A0(Better yet, file a=
 bug in the
> bugzilla.yoctoproject.org... if you can't do so, I'll be happy to file it=
 if I
> can get a reproducer.)

I wouldn't think this is a bug. A bbappend applies to the recipe
itself, not any of the files it includes. This is Working As Designed,
as far as I can tell.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

