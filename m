Return-Path: <raj.khem@gmail.com>
Received: from mail-gw0-f54.google.com (mail-gw0-f54.google.com [74.125.83.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 937D54C80B71
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 21:31:27 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gwj21 with SMTP id 21so161395gwj.13
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 19:31:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:mime-version:received:in-reply-to
	:references:from:date:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=G9Emzbj2OMB2HMtx2Zbp4LsOatJ4itZOIICqTplAdvI=;
	b=ia48GOkMSNtBW/xXmo+6vBuRF/mnyBZ3kCqkE+8GSfCSOKJ67AAaYJqjq74s6Ubq0L
	TBoYNdsB1QtrltHiwef94r/pVipBoQV7YWjIeB9Mb67jp+Z4hf1YOCRUonmxua36pYMi
	xnsLqAx6mlZl1y/AtUCD/B63GXJKOJd0RpSos=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	b=ZxXoC4OAtU3KWgD+rno4d9kaPQYY7/OxywK4Lp8lytwKbbMmzPgUb+KzB/4vp+jbKE
	Vq5/bJeKZVojLTPVtbcMSomEBru23KDrTXWnVJnjA3085dFrKTJoXUl8zvukpjrHs10u
	rYzIybem5XJZGTOwOcCATRIg++9On2AaoYnLE=
Received: by 10.90.10.21 with SMTP id 21mr1662971agj.112.1292556686043; Thu,
	16 Dec 2010 19:31:26 -0800 (PST)
MIME-Version: 1.0
Received: by 10.90.86.4 with HTTP; Thu, 16 Dec 2010 19:31:05 -0800 (PST)
In-Reply-To: <9DA5872FEF993D41B7173F58FCF6BE9405051258@orsmsx504.amr.corp.intel.com>
References: <20101205125755.1B42C351@gemini.denx.de>
	<20101211104711.GB10409@gmail.com>
	<9DA5872FEF993D41B7173F58FCF6BE9404FAD617@orsmsx504.amr.corp.intel.com>
	<1292431496.18631.2.camel@scimitar> <1292431754.18631.4.camel@scimitar>
	<9DA5872FEF993D41B7173F58FCF6BE9405051258@orsmsx504.amr.corp.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 16 Dec 2010 19:31:05 -0800
Message-ID: <AANLkTikiu=YyB9ZLw=q1hJcsQ+w3LtZ9jdNCp4GkObNe@mail.gmail.com>
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: elfutils build fails on Fedroa 14
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
X-List-Received-Date: Fri, 17 Dec 2010 03:31:27 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 16, 2010 at 5:19 PM, Kamble, Nitin A
<nitin.a.kamble@intel.com> wrote:
>>
>> Actually, this theory makes less sense now that I've re-read the
>> initial
>> email and seen that the failure is in elfutils native - damn...
>>
>> I've not had any problems building that recipe on Fedora 14 x86_64
>> here...
>>
>> Joshua
>> --
>
>
> Thanks Josh for looking at this. Actually we closed this bug. It was issu=
e with PATH variable for the bug reporter. It had . in the path too early, =
causing wrong ld to be chosen. Look at http://bugzilla.pokylinux.org/show_b=
ug.cgi?id=3D572 for more information.

hmmm probably adding . to PATH is not a very good idea :)

