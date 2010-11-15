Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4ABC24C80052;
	Mon, 15 Nov 2010 15:16:30 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn33 with SMTP id 33so217920iwn.35
	for <multiple recipients>; Mon, 15 Nov 2010 13:16:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=dnec2dXFuphtdzMYrulWxt+9AYVAOiXi3IaLJhaPhps=;
	b=DRPXs7SBTb5cYHVUeCX7d18wg5zjdGyiW7qdyz41SWJ5edK9uOxqaBXcfAVtoqoiu9
	xwYxhUcy7h69aRxldpWNn+0Dc/NOJwxNKtQ5RyPAFDdm9MGD/b90QxSQXsnqvL9C7Ftl
	t4zx5qZdiyEwZQ/cJJ28Dcnc7vhCOCg/jzOq0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=cVDkKCkwnv/aaDUceRcgDezTyRRYZTY5QFKloBa8UpXhRbkC/UZ7NsM4MUGEYPLeE5
	3ym1JvXTL+vGZTaiBUTFyV+FR9IjY7M8jDtgzc2mbWL32wDsTDzUS8qC54WYhwuS2cYt
	Q3S5ajHFVeVcFuWKRGoC5Q/HRcd8C+fRRWWdY=
MIME-Version: 1.0
Received: by 10.231.37.199 with SMTP id y7mr4780894ibd.127.1289855787905; Mon,
	15 Nov 2010 13:16:27 -0800 (PST)
Received: by 10.231.208.73 with HTTP; Mon, 15 Nov 2010 13:16:27 -0800 (PST)
In-Reply-To: <4CE1A1A5.1020003@linux.intel.com>
References: <cover.1289839979.git.bruce.ashfield@windriver.com>
	<4CE1A1A5.1020003@linux.intel.com>
Date: Mon, 15 Nov 2010 16:16:27 -0500
Message-ID: <AANLkTim4+siYZ3_G47gSVEVfv_md23X2FtDAz5GWVFM8@mail.gmail.com>
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
X-List-Received-Date: Mon, 15 Nov 2010 21:16:30 -0000
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

Definitely. Not bisectable, but I wanted to keep the changes logically
separated,
since it allowed a commit message that wasn't too long to read and
be useful. Since there are several recipe categories, boards and layers
involved, I made the choice to split things up.

I typically insist on bisectable series as well, but have made exceptions :=
)

I'm happy to squash things though, if Richard wants them squashed
I'll resend .. or it might be quicker to rebase and squash on merge,
either works for me.

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

