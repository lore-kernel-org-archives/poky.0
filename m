Return-Path: <raj.khem@gmail.com>
Received: from mail-ww0-f51.google.com (mail-ww0-f51.google.com [74.125.82.51])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6424B4C800AB
	for <poky@pokylinux.org>; Fri, 27 May 2011 15:36:43 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwf26 with SMTP id 26so2071522wwf.8
	for <poky@pokylinux.org>; Fri, 27 May 2011 13:36:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=Z/3dKdHt9DgIftOYps7HewGPTJSSBR1YNfpU0fE22i0=;
	b=RIrV607qXGni5R8vFbJhewfuMw1xWyKpmFSemoxe3y6mpGph42lj9yUhoQTTTnNwTM
	H3XEPrJAjmuzrEuPnwHR1yR17gRC8SNMZu/TKeB0KnU1GQOZH+DPiXgCsKClptQ+6/nl
	meYis935pkYv/kua4SNRx3Z9gFKg4srJvG7MY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	b=E/LnsdjqwmPVEkfuHgRYiTPVSJFNGTghq+wvCrSZQ4G6QVcydSBj6s8UbE94vI4G71
	EVbEa4S7G0vAK9/xQfFzjy0nFUaNVpgUzk1OYVbv0ubt0V/cVIxekhdQXrXj8UTtLWP8
	SalfOjfW3FNek6JeJuVeZRy6K+CVOW9XP/X5o=
Received: by 10.216.235.234 with SMTP id u84mr114211weq.51.1306528602147; Fri,
	27 May 2011 13:36:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.60.145 with HTTP; Fri, 27 May 2011 13:36:12 -0700 (PDT)
In-Reply-To: <loom.20110527T192603-897@post.gmane.org>
References: <loom.20110527T192603-897@post.gmane.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 27 May 2011 13:36:12 -0700
Message-ID: <BANLkTikm+c37nZfr6R-uq7qa4sObUbd8dg@mail.gmail.com>
To: Holger Freyther <holger@freyther.de>
Cc: poky@pokylinux.org
Subject: Re: Impressions of using Poky to create a BSP
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
X-List-Received-Date: Fri, 27 May 2011 20:36:43 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, May 27, 2011 at 10:42 AM, Holger Freyther <holger@freyther.de> wrot=
e:
>
> Machine Extra Depends:
> =C2=A0 =C2=A0 - I was using the core-minimal-image but wanted to have som=
e of my
> =C2=A0 =C2=A0 =C2=A0 kernel modules installed. After finding the name tha=
t task-core-boot
> =C2=A0 =C2=A0 =C2=A0 is using I tried to do bitbake -cclean task-core-boo=
t; bitbake the-image
> =C2=A0 =C2=A0 =C2=A0 but this didn't end up with a task-core-boot to carr=
y my depends.
> =C2=A0 =C2=A0 =C2=A0 I had to resort to using bitbake -b task-core-boot.b=
b to build =C2=A0it, I am not
> =C2=A0 =C2=A0 =C2=A0 sure why it failed when running from within the norm=
al bitbake. IIRC it
> =C2=A0 =C2=A0 =C2=A0 continued to be like this even after I removed tmp/c=
ache.
>

generally -ccleanall helped me in such cases.

