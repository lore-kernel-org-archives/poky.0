Return-Path: <kergoth@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id A13024C800A6
	for <poky@yoctoproject.org>; Fri, 17 Jun 2011 08:49:00 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vxd2 with SMTP id 2so901065vxd.35
	for <poky@yoctoproject.org>; Fri, 17 Jun 2011 06:49:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:from
	:date:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=73BIeLxQX4+MlL3/wlRqsig0A1xxXsTSxBbRrmc5Izo=;
	b=wErZbvJzLvrls3s7jpcbKPVngllupM9h+pZEKVQgixjMFluioQTtrNMsmLUlUDRlOM
	zhTZ3I7fGPlj5Gl+OlUj2eXCLDBBexekz6iv3Tm5Kv0yKn/8fzGkBsmkS9bEtMWqw5gn
	opAqBympHVNSveimbQxR/msfLvBEHRiuFqTeg=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	b=nJFUUyDK1JPqU28hIr5xRaSeSt7+lOI3QAdFH8C5TE2Kpvl433StcakHTHoTxwPJqu
	KDP3kmmc5T9oai3ii8Wp5WmaKz0Jgv2ghIdyf0kEwRWBlAOaaVF+xMb//G3zRdsTlKAa
	6Abzn8vWaUxj37lMpbHz4A4YRKcfutoV3cMI8=
Received: by 10.52.111.71 with SMTP id ig7mr1647674vdb.209.1308318540076; Fri,
	17 Jun 2011 06:49:00 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.52.181.2 with HTTP; Fri, 17 Jun 2011 06:48:40 -0700 (PDT)
In-Reply-To: <201106171144.00118.paul.eggleton@linux.intel.com>
References: <4DFA2CFF.6020003@emcraft.com> <4DFA5335.9030102@windriver.com>
	<BANLkTin40ecGy8RBEbfaRKEXY6Lu-YrALA@mail.gmail.com>
	<201106171144.00118.paul.eggleton@linux.intel.com>
From: Chris Larson <clarson@kergoth.com>
Date: Fri, 17 Jun 2011 06:48:40 -0700
X-Google-Sender-Auth: RcXzfyXwD9Z4KwJEB60L0u5XVx0
Message-ID: <BANLkTinYzLcQnH3msGfivi8BAB_MPfjucQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
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
X-List-Received-Date: Fri, 17 Jun 2011 13:49:00 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jun 17, 2011 at 3:44 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Thursday 16 June 2011 20:21:57 Chris Larson wrote:
>> Nature of the terminology being used, it's unclear whether 'require'
>> means 'recipe dependency' or 'the bitbake "require" command' in this
>> context :)
>
> I think it's clear from Ilya's message that he means the require command. To
> me it's not clear however whether using "require" (or "include" for that
> matter) means that bbappends should also be included. I can certainly see how
> someone could assume that they would be.

Agreed, but that's not the case currently. Perhaps we should improve
the documentation? People *have*, however, requested the ability to
bbappend to .inc's before, which is what this would get us, but would
mean substantial changes to how bitbake implements it. We have bigger
priorities :)
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

