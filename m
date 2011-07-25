Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-yi0-f48.google.com (mail-yi0-f48.google.com
	[209.85.218.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id B5E264C80332
	for <poky@yoctoproject.org>; Mon, 25 Jul 2011 13:50:12 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yic24 with SMTP id 24so3359418yic.35
	for <poky@yoctoproject.org>; Mon, 25 Jul 2011 11:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=05mrgZ3+99Rc/Uu5Didjk8T9IcSf0cVs08V0Ul7OeaM=;
	b=SPuhk+h6O0wo2R98V5rmtIQsK7iVjlBoNP5FgBkMg3g8WNAxiqobdAoiZ4oaeJqtp1
	ZVeZhYe45QnJ20u+XwiBMS1HZPcxfXJITwyduANZp5HyypuOcyO//iKy394nR4urKwZy
	qSFB70i6QVbse97MaW6Fh4+KRlnA1AF+gOggM=
MIME-Version: 1.0
Received: by 10.91.14.11 with SMTP id r11mr4792503agi.106.1311619812163; Mon,
	25 Jul 2011 11:50:12 -0700 (PDT)
Received: by 10.91.12.2 with HTTP; Mon, 25 Jul 2011 11:50:12 -0700 (PDT)
In-Reply-To: <4E2DB8FD.8020903@mentor.com>
References: <cover.1311616990.git.bruce.ashfield@windriver.com>
	<4E2DB8FD.8020903@mentor.com>
Date: Mon, 25 Jul 2011 14:50:12 -0400
Message-ID: <CADkTA4N+5WpjvDp+apuCH=1G4oJD6vb49tJVv7+v7GtQ7-LsOA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Tom Rini <tom_rini@mentor.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] poky.conf: explicitly referenced preferred linux-yocto version
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
X-List-Received-Date: Mon, 25 Jul 2011 18:50:13 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 25, 2011 at 2:42 PM, Tom Rini <tom_rini@mentor.com> wrote:
> On 07/25/2011 11:05 AM, Bruce Ashfield wrote:
>> Here's a similar change to the meta-yocto boards, as was done
>> to the qemu machines in oe-core. Since referencing yocto makes
>> more sense in this layer, I made the change in the poky.conf
>> distro default file.
>>
>> As the staging of linux-yocto-3.0 showed, we should explicitly
>> state our preferred version of linux-yocto. This prevents unvalidated
>> changes from being forced into machines. Layers and machines are free
>> to override this as they are updated.
>>
>> cc: Tom Zanussi <tom.zanussi@intel.com>
>>
>> The following changes since commit dfec64a66e66ad4ec94a06ad900307fb0d932=
b98:
>>
>> =A0 machine/qemu: set preferred linux-yocto kernel version (2011-07-25 1=
0:56:46 -0400)
>>
>> are available in the git repository at:
>> =A0 git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
>> =A0 http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dzedd/kernel-=
yocto
>>
>> Bruce Ashfield (1):
>> =A0 poky.conf: explicitly referenced preferred linux-yocto version
>>
>> =A0meta-yocto/conf/distro/poky.conf | =A0 =A02 ++
>> =A01 files changed, 2 insertions(+), 0 deletions(-)
>
> I guess as an aside, the convention we have/had in oe.dev was
> DEFAULT_PREFERENCE =3D -1, D_P_testedmachine1 =3D 1, etc, etc, in the ker=
nel
> recipes.

I've noticed that .. and it would work here as well. I'm hesitant to
maintain a set of tested machine overrides in the yocto layers, since
we are at a small number now, but that number isn't guaranteed to
stay small. I have enough of a pain updating SRCREVs constantly,
tweaking another set of vars isn't high on my 'fun' list.

I prefer to have the machines opt-in, versus maintaining a list of known
good machines in a central file (I realize that the machines would/could
be the ones setting the default_preference back to 1 as wel, but it is
still another variable to manipulate). But am not religious about any of th=
is :)

The flip to 3.0 is sort of a special case, and typically it is just a switc=
h
I throw, since all machines are tested at once.

Good comment and food for thought indeed!

Cheers,

Bruce

>
> --
> Tom Rini
> Mentor Graphics Corporation
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

