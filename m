Return-Path: <raj.khem@gmail.com>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id A61214C800A4
	for <poky@yoctoproject.org>; Thu,  9 Jun 2011 14:35:04 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wyb40 with SMTP id 40so2117258wyb.35
	for <poky@yoctoproject.org>; Thu, 09 Jun 2011 12:35:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=qtUDC0KmiX3Vn/Vfib3p69vExdK835UCyf9x1cukbNM=;
	b=iajK6viUst2K0Arre7Qhs7Uc0UeNsbw8XVYlbNVxOP1ysARZJ+z0bC3aBn4AOTl/qd
	Hay5kzYxhlGq9pOdqGKdxmR6X1Co8HEu6ZhKNiULLqsgN1kSocidj+M0eyvW9rtSUrU2
	pmdw0lB8+6oVEZ0Qt4AuKvM82tOOFNZ+a0lTo=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	b=G2hAXwVx39n35FusPG4DrxHlUyxOBUmNMUAXDzBSYmHnGWCofE/HQii/vGOvvyhjf0
	GmBIh6mtyiMXTsBWnDdKA2uChfYQXhKQplXpYCkOnAG6BrkCnDF4dnzEggP74VjMJ027
	gN4yqxiIt9Etxoj6gocVEKQQDUd8diO7kW2ag=
Received: by 10.216.253.215 with SMTP id f65mr1189130wes.14.1307648103468;
	Thu, 09 Jun 2011 12:35:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.28.19 with HTTP; Thu, 9 Jun 2011 12:34:33 -0700 (PDT)
In-Reply-To: <4DF0A70C.7080501@windriver.com>
References: <4DF0A70C.7080501@windriver.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 9 Jun 2011 12:34:33 -0700
Message-ID: <BANLkTik6c5RyzDM5ZEo6N14hrOrNsyU70g@mail.gmail.com>
To: Kang Kai <Kai.Kang@windriver.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Question about apply eglibc configurability to create minimal image
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
X-List-Received-Date: Thu, 09 Jun 2011 19:35:05 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 9, 2011 at 3:57 AM, Kang Kai <Kai.Kang@windriver.com> wrote:
> Hi Mark,
>
> I am focus on eglibc itself compilation with disabling all the configurab=
le
> options, right now eglibc can be compiled with disable all the configurab=
le
> options.
>
> But when I build core-image-minimal in a clear new directory, some packag=
es
> build failed and they need eglibc supports, such as
>
> gcc-runtime =C2=A0 =C2=A0depends on =C2=A0 =C2=A0 libc-libm

can you figure out what needs libm here ?

> ncurse =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0depends on =C2=A0 =C2=A0l=
ibc-posix-wchar-io libc-posix-clang-wchar
> openssl =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 depends on =C2=A0 =C2=A0libc-i=
net libc-nsswitch
> gettext =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0depends on =C2=A0 =C2=A0=
libc-spawn libc-locale-code libc-getlogin
> libc-utmp
> ...
>
> After enable those options, the image size only decrease from 9.6M =C2=A0=
to
> 9.4M(qemux86). And the dependencies on eglibc is hard to break, something
> like =C2=A0libcrypt getlogin(function) can't be breaken.
> Could you give me some directions what should I do with eglibc
> configurability?
> Thanks a lot!
>
> I made a mistake that try eglibc configurability in a directory which has
> build core-image-minimal, so the packages which depend on eglibc didn't
> rebuild, and I didn't find the dependency before. I am sorry!
>
> Regards,
> Kai
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

