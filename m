Return-Path: <kergoth@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 98F9F4C8009D
	for <poky@yoctoproject.org>; Mon, 18 Jul 2011 08:59:29 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vws7 with SMTP id 7so3778163vws.35
	for <poky@yoctoproject.org>; Mon, 18 Jul 2011 06:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=FCBdXnccY0sZzKwljG5WQHQ0VEb413+2LBzMPqJ+2eA=;
	b=uUPJbLJxw20iVXPn4V6e/Y13T0fjHjajUZ9W8RFoERiWRV8C9hxsixM2lQAV0E4Ogm
	vjNzjVAdHdKP1cuTYhXg0t316HU3xQwKIOp4oi58uSonJ3MCqfi5B0Ilj7k7HaXertEP
	I4FnA8x+yZs0XV71Ak0UyIGJ7/Nv2RIIvZwFU=
Received: by 10.52.75.234 with SMTP id f10mr957136vdw.241.1310997569089; Mon,
	18 Jul 2011 06:59:29 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.52.181.104 with HTTP; Mon, 18 Jul 2011 06:59:09 -0700 (PDT)
In-Reply-To: <4E243A67.3090400@mlbassoc.com>
References: <4E243A67.3090400@mlbassoc.com>
From: Chris Larson <clarson@kergoth.com>
Date: Mon, 18 Jul 2011 06:59:09 -0700
X-Google-Sender-Auth: cWTNbWUboThneM93xBhcsaeIk4Y
Message-ID: <CABcZANmcWYoF4wb6Nx=w9LDhaRdzSdhc9XOHD7n8w_NfskGThA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Order of .conf processing?
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
X-List-Received-Date: Mon, 18 Jul 2011 13:59:29 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 18, 2011 at 6:51 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> What's the order of processing of the various .conf files?
>
> It seems to me that bitbake.conf must be first as it seems
> impossible to override settings in that file using a soft
> assignment. =C2=A0In particular, local.conf often has soft settings
> but these dont' seem to change what's in bitbake.conf

BitBake only parses one global configuration file, bitbake.conf. It's
bitbake.conf that includes/requires all the other configuration files.
You can see the order by reading those inclusions in bitbake.conf.
Historically, the intention was for the configuration file load order
to be relatively parallel to the overrides order -- two different
mechanisms for implementing what is essentially a layered architecture
for the metadata, allowing, generally, more specific information to
override more general information. The configuration file order
differs slightly from that, however, as it's not possible to load the
distro or machine config files after local.conf, as local.conf is
generally where DISTRO and MACHINE are defined.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

