Return-Path: <cgwalters@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8BF4F4C80044
	for <poky@yoctoproject.org>; Tue, 29 Mar 2011 12:04:10 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwd20 with SMTP id 20so448332wwd.11
	for <poky@yoctoproject.org>; Tue, 29 Mar 2011 10:04:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=gAbyq4wXTi/ORS78klO8FrMcmJQLHXL4702pfH0/dI4=;
	b=mehxi/NO3WdjbmPQlvdacrOtImm2qDXMhUv9iDH/dHmXskcjUdewJoT2/w2UvQAwBl
	50Syk0X+AvVlSAXG+W0hRM0ohHlXH9vNSDvi/JFhF3zron5gU74t4JvNNfkbUECpdtIY
	0yx3Dk7MvAsWIwHcck/KIL1Wf9OuH73dzrAA4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	b=ra1L0/FwvBaxo7g/ghdScRBeS6JRQzPI2J+Jo1n2SiG3acb0hcWz9H5KqfdCowa54f
	vlXS9FAcT+NG0UVUCXpmOmUIur5yuxGYkt+ykXJ7+5OruDUiRY5Y5AVWj00w1MEda/Kl
	nO9X6IoJ6ay4b+Q6Nz1WZKRZJMY9gjWJUljIs=
MIME-Version: 1.0
Received: by 10.216.143.228 with SMTP id l78mr36263wej.21.1301418249464; Tue,
	29 Mar 2011 10:04:09 -0700 (PDT)
Sender: cgwalters@gmail.com
Received: by 10.216.49.20 with HTTP; Tue, 29 Mar 2011 10:04:09 -0700 (PDT)
In-Reply-To: <1301416170.24596.73.camel@rex>
References: <AANLkTi=zGTsBJ4t6MR=7pp2cSjwNFhSMJC=xQGy_mMBF@mail.gmail.com>
	<1301414580.24596.64.camel@rex>
	<AANLkTim-tPhaRCWsCP=sDW30FUL1MfyxTOHabCSHyeQK@mail.gmail.com>
	<1301416170.24596.73.camel@rex>
Date: Tue, 29 Mar 2011 13:04:09 -0400
X-Google-Sender-Auth: sFEN3QdvctTf_s1DOcZ2RojNY6A
Message-ID: <AANLkTi=GPAEXD4CRPrhwGtd82ZfEx=HmW7_zWRxe+ev6@mail.gmail.com>
From: Colin Walters <walters@verbum.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@yoctoproject.org
Subject: Re: [patch] autotools: Remove .la files by default
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
X-List-Received-Date: Tue, 29 Mar 2011 17:04:11 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 29, 2011 at 12:29 PM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> I can do better than that, we have some limitations in the way .conf
> files are parsed compared to .bbclass files. If you create a
> "localchanges.bbclass" containing:

Of course I can code it locally, but I think this mechanism would be
of value to other people creating systems, and hence my proposal to do
it upstream.

> and then do INHERIT += "localchanges"

This appears to work, thanks.

> Right, but with our build environment, this really becomes a non-issue

I agree it's a non-issue for building the OS.  But it will be an issue
for people who *after* having the OS installed, want to temporarily
override system libraries with other versions.   And there's just no
sane way to fix it without just nuking the files from the OS.

> (and I've been trying to get patches upstream which stop -L/usr/lib
> being injected anyway as that is a libtool bug).

I think a better fix would actually be an automake option to stop it
from even installing them, and I looked into this (it's not trivial,
and effectively requires disabling "make uninstall"), and even if the
fix landed every project would have to be updated for it.

