Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 482834C800A0
	for <poky@yoctoproject.org>; Thu, 17 Feb 2011 13:44:48 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eyz10 with SMTP id 10so1533437eyz.35
	for <poky@yoctoproject.org>; Thu, 17 Feb 2011 11:44:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=urVheJ552xF7cNRMDNahscya9D792VPZTDixfvKgdIk=;
	b=kVQ3CqFlrIHgztKMXoAH6thtNVUGH2ZSY/pszCceT8JvW50EnGmom2Y8xp4GKhMPd0
	7IRKWl1Mx7+oAthXveu45N2wlzQagG3nASQlwzKviF/4v9a6mvJToLe/6bIKozWezPlA
	kIl9Y4blIc7D9InaeIMWRH+2/CuSh3UPU1Nn4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	b=GJcDErXOSWch85DRghC5daumHDNicfLeWOUI7TFXCpt+2qiSllv6bKAN2jfy+mWggY
	5U8/kk/F7a0eMzSAsD5R8pzmxOm/5tzWM07LzfpsSWCJn2woAg5TyAXuH9IJKeW4vN4X
	U17nM8+QcXRhxwmqqW6F7REg1+UkVlzM+5mUY=
Received: by 10.223.86.2 with SMTP id q2mr2876307fal.139.1297971886250; Thu,
	17 Feb 2011 11:44:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.66.22 with HTTP; Thu, 17 Feb 2011 11:44:24 -0800 (PST)
In-Reply-To: <4D5D545B.70400@mentor.com>
References: <cover.1297930635.git.qing.he@intel.com>
	<4D5D545B.70400@mentor.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 17 Feb 2011 11:44:24 -0800
Message-ID: <AANLkTik5Y7okC4xUNna3uuMsk82_9EJabYp0p3N5qS+n@mail.gmail.com>
To: Tom Rini <tom_rini@mentor.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Fix parallel make for openssl
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
X-List-Received-Date: Thu, 17 Feb 2011 19:44:48 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 17, 2011 at 9:01 AM, Tom Rini <tom_rini@mentor.com> wrote:
> On 02/17/2011 01:18 AM, Qing He wrote:
>>
>> From: Qing He<qing.he@intel.com>
>>
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>> =C2=A0 Branch: qhe/fix
>> =C2=A0 Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dq=
he/fix
>>
>> Thanks,
>> =C2=A0 =C2=A0 Qing He<qing.he@intel.com>
>> ---
>>
>>
>> Qing He (1):
>> =C2=A0 openssl: fix parallel make
>>
>> =C2=A0.../openssl/openssl-0.9.8p/parallel-make-fix.patch | =C2=A0 18
>> ++++++++++++++++++
>> =C2=A0meta/recipes-connectivity/openssl/openssl.inc =C2=A0 =C2=A0 =C2=A0=
| =C2=A0 =C2=A06 +++---
>> =C2=A0.../recipes-connectivity/openssl/openssl_0.9.8p.bb | =C2=A0 =C2=A0=
2 +-
>> =C2=A03 files changed, 22 insertions(+), 4 deletions(-)
>> =C2=A0create mode 100644
>> meta/recipes-connectivity/openssl/openssl-0.9.8p/parallel-make-fix.patch
>
> While in there, shouldn't we update to either 0.9.8r or 1.0.0d, for secur=
ity
> fixes?

1.0.0 is a big jump and you need a proper upgrade path if that matters
see OE discussions from last year on it.


>
> --
> Tom Rini
> Mentor Graphics Corporation
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

