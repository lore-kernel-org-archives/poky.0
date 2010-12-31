Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id A7FD14C80050;
	Fri, 31 Dec 2010 11:51:09 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so13784563iwn.35
	for <multiple recipients>; Fri, 31 Dec 2010 09:51:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=TPYSJ1DNZ2KxsJ50ymll60OMzc7oB0lbCAo2zpORfPo=;
	b=kuE4KSihr9jQN+OEGJTc3Ckkz67Hi+gf3d+DMorBnL9DH/fB1TxD5SRSf7QfWhBDW3
	EkQGRO4NXqt1VEo6bqOf9ccQzkwF5Sd3WI8bB9TBDzfLFNEqiZPr5CCVtlZg82qEd+Zi
	E/oEdZIflMr4GZjAdya8AFJ7rn8NV/cZTWWck=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=x2QEhN9VR94pSjZkK0fA9Rwe8cpDlRNgWjgv8ZOkpqdELd8BQrAA66hVPUJQ0qzq2h
	Wo4sih7LbE4ZT3QfeRBIbaRXac2W0Dbq2o40SfT5MOmzuHAfEb6nsZAJxAZf09VDIHS3
	MthW5RCoE3Fxp+fIQFkm24dl2fNaHUDdOlo0k=
MIME-Version: 1.0
Received: by 10.231.207.84 with SMTP id fx20mr17580192ibb.62.1293817869372;
	Fri, 31 Dec 2010 09:51:09 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Fri, 31 Dec 2010 09:51:09 -0800 (PST)
In-Reply-To: <4D1E0FED.4080305@intel.com>
References: <cover.1293744156.git.bruce.ashfield@windriver.com>
	<4D1E0FED.4080305@intel.com>
Date: Fri, 31 Dec 2010 12:51:09 -0500
Message-ID: <AANLkTikJ-L6x9k=LbgO5OQp7x9ozt71R_e2iZxiqrc=9@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Saul Wold <saul.wold@intel.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: Re: [PATCH 0/1] linux-yocto: update to 2.6.37-rc8
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
X-List-Received-Date: Fri, 31 Dec 2010 17:51:10 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 31, 2010 at 12:16 PM, Saul Wold <saul.wold@intel.com> wrote:
> On 12/30/2010 01:31 PM, Bruce Ashfield wrote:
>>
>> Nothing fancy here, just updating to track 2.6.37-rc8. Compile tested
>> for all arches.
>>
> Maybe not fancy, but it's breaking the build! =A0Checkout the distro-test=
ing
> autobuild from last night, I am backing this out of distro/master for now=
.

Interesting. I built all boards on this already. No worries, I'll revisit
this next week.

Bruce

>
> Sau!
>
>> Cheers,
>>
>> Bruce
>>
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>> =A0 Branch: zedd/kernel
>> =A0 Browse:
>> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dzedd/kernel
>>
>> Thanks,
>> =A0 =A0 Bruce Ashfield<bruce.ashfield@windriver.com>
>> ---
>>
>>
>> Bruce Ashfield (1):
>> =A0 linux-yocto: update to 2.6.37-rc8
>>
>> =A0.../conf/distro/include/poky-default-revisions.inc | =A0 24
>> ++++++++++----------
>> =A01 files changed, 12 insertions(+), 12 deletions(-)
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

