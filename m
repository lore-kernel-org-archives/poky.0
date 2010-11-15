Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8A9DF4C80FAC;
	Mon, 15 Nov 2010 15:19:30 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn33 with SMTP id 33so221604iwn.35
	for <multiple recipients>; Mon, 15 Nov 2010 13:19:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=SCC3qLJ57VfI2LldfbEAposoomeyUD2+pGCRLNyqFMA=;
	b=mYLUpDX7tOFLxqSMLV8nOuk0oJ1LVfEhD/Az5b5UcKc8bCDjpv21AnfbxNrbaNR0w9
	DB8tOlPwURRyKP3LxIQcCXsMZM8UNonfsjY5JuSKZ6JjuPSlqdHzw0urpFwAXNkWNHVq
	M8rONc5wqbC7eetRQecqugQ04jmFDmRozchC8=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=tBty9rQL5xSs89A9LHFm6lpp7sCC/uxzPwvSE93UQRZYHTkihVjTITbRf6Li2ZJCDR
	8gtSoAgqkzGADrzyMi3Aw8YaEJhZlRczPvRkU3ZEo0vKVVA6MMM4AquYXZpq7KoQQHhE
	1E7JOumM7Xs5eNUoWQiIhcIElbtJrWWpigUCw=
MIME-Version: 1.0
Received: by 10.231.17.11 with SMTP id q11mr4792797iba.102.1289855966314; Mon,
	15 Nov 2010 13:19:26 -0800 (PST)
Received: by 10.231.208.73 with HTTP; Mon, 15 Nov 2010 13:19:26 -0800 (PST)
In-Reply-To: <4CE1A1A5.1020003@linux.intel.com>
References: <cover.1289839979.git.bruce.ashfield@windriver.com>
	<4CE1A1A5.1020003@linux.intel.com>
Date: Mon, 15 Nov 2010 16:19:26 -0500
Message-ID: <AANLkTi=PQWzd0vumGRTMzn0suop+FB7n7hHYjLTfRdPN@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: Re: [PATCH 0/3] kernel: rename supported kernel to linux-yocto
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
X-List-Received-Date: Mon, 15 Nov 2010 21:19:30 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 15, 2010 at 4:09 PM, Darren Hart <dvhart@linux.intel.com> wrote=
:
> On 11/15/2010 08:56 AM, Bruce Ashfield wrote:
>>
>> This is the first of several staged changes to update the
>> kernel support for the 1.0 release.
>>
>> This series is step 1:
>>
>> =A0- rename the supported kernel to 'linux-yocto' and update
>> =A0 =A0the boards, and recipes that have references to linux-wrs.
>>
>> Step 2 will refactor the code into reusable blocks
>> Step 3 will do internal branch renames for scalability
>> Step 4 will launch and updated 2.6.34.x and 2.6.37-rcX kernel
>>
>> This has been built and booted on the relevant boards. If I've
>> missed a reference to the existing kernel name, let me know
>> and I'll make those updates as well.
>>
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>> =A0 Branch: zedd/kernel-rename
>> =A0 Browse:
>> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dzedd/kernel-rena=
me
>>
>> Thanks,
>> =A0 =A0 Bruce Ashfield<bruce.ashfield@windriver.com>
>> ---
>>
>>
>> Bruce Ashfield (3):
>> =A0 linux-wrs: rename to linux-yocto
>> =A0 linux-yocto: update board configurations
>> =A0 linux-yocto: update SRCREVs for linux-yocto rename
>
> From what I can tell these changes are not "bisectable" - the build would
> fail if all three are not applied. If I'm not missing something, I'd pref=
er
> to see these squashed into a single commit.

Hmmm. I was largely thinking about another patch series. The commit message=
s
for these are pretty small. I've squashed and updated my contrib branch.

Cheers,

Bruce

>
> --
> Darren Hart
> Embedded Linux Kernel
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

