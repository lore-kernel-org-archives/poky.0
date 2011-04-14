Return-Path: <kergoth@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8DF6F4C80AA7
	for <poky@yoctoproject.org>; Thu, 14 Apr 2011 16:19:52 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iym1 with SMTP id 1so2653373iym.35
	for <poky@yoctoproject.org>; Thu, 14 Apr 2011 14:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:from
	:date:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=tM4sLdi6Ek9SH7tBn9a3gUjJ523AltZJLa/nFjyZ/TE=;
	b=aDBN+hoT/h+KQLvjdKEE7N3supWkpKFxDIPDQw3z+cSE3yjbWHpECyZCWXg2ViYq9H
	pjFFAZfVDM1i92ODYnbPqUCfjcP5A32fLEhmllAl3VKRuwjUwTCiSIpsY2oxpevj3xa6
	xMtJagCbhkxa9AfO5UGfDEyqEKXPQnTV5zPgU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	b=lKKvCVbQJuhhjUc1y6SaY67KDFbLNeTmI4SsD/lpr+FQLdhxiWwjJQtJ+VQ8NSKKrW
	dZ6t8SAqPeeMXr/R1zdTeb7V5VkD2hcIj+cjrHZlhhLqbNM7bT4GWOH1RUYGrXtwT8Gu
	bDDXg+olTdahzIFE43UOfse10h+QcnF68a40o=
Received: by 10.43.45.8 with SMTP id ui8mr1868095icb.197.1302815992165; Thu,
	14 Apr 2011 14:19:52 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.42.164.66 with HTTP; Thu, 14 Apr 2011 14:19:32 -0700 (PDT)
In-Reply-To: <20110414211232.GM21027@jama.jama.net>
References: <20110414194445.9BCC5151F83@gemini.denx.de>
	<4DA758E6.7040606@intel.com>
	<BANLkTikLPSrRtUObRTSHFRdWS+h5pTuO0A@mail.gmail.com>
	<20110414211232.GM21027@jama.jama.net>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 14 Apr 2011 14:19:32 -0700
X-Google-Sender-Auth: ZDdtzZRt9Q65q3jnmrPipxWF5XY
Message-ID: <BANLkTingVKgsLe5vosf4yi3jWv9MA0zaKg@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: poky@yoctoproject.org, Saul Wold <saul.wold@intel.com>
Subject: Re: Distro policy ?
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
X-List-Received-Date: Thu, 14 Apr 2011 21:19:52 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 14, 2011 at 2:12 PM, Martin Jansa <martin.jansa@gmail.com> wrot=
e:
> On Thu, Apr 14, 2011 at 01:57:16PM -0700, Chris Larson wrote:
>> On Thu, Apr 14, 2011 at 1:28 PM, Saul Wold <saul.wold@intel.com> wrote:
>> >> So, from the policy side I think we should go with our own layer.
>> >> On the technical side I'm disappointed with this 'include' problem: I
>> >> find it rather impractical to copy things we don't want to change and
>> >> just want to use from one layer to another and then having to keep
>> >> these in sync with mainline.
>>
>> There's no reason you should have to copy unmodified files from one
>> layer to another, ever. =C2=A0Configuration files are found via BBPATH w=
hen
>> they're referenced via a relative path, and file:// files via
>> FILESPATH are easily dealt with as well. =C2=A0The only time you should
>> have to copy is if you have a need to modify them, particularly as
>> there's no "bbappend" that corresponds to recipe .inc files. =C2=A0Is th=
ere
>> a particular case you're thinking of here?
>
> I guess he was talking about
> require/include some.inc
> used in recipe
>
> Then I had to copy some.inc to same folder there my recipe is. Even when
> it's used in same path relative to layer top dir

Change the recipe to use require/include recipes/foo/bar.inc, relative
to the top of the entry in BBPATH.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

