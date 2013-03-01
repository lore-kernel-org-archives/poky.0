Return-Path: <twoerner@gmail.com>
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 98674E0129D
	for <poky@yoctoproject.org>; Fri,  1 Mar 2013 13:29:45 -0800 (PST)
Received: by mail-wi0-f172.google.com with SMTP id ez12so15853wid.11
	for <poky@yoctoproject.org>; Fri, 01 Mar 2013 13:29:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=v2+iPXXv5yMtv/sDpqxiv/OHHMsi6HQzA8caY3QEMk8=;
	b=Y2TMpqlRN9sVeYYaaRcDScvQXH+KBHJyU0LdAFk9RYqP9uo0rL8lVC+MiaHAJo0HzD
	RDS6/bzufz63r1sVdjBj8fh8l+JPCr7ftx4ExOIRpEcl0IIuUksjYdOjoRMVJg+utdXx
	EnGX+BscpB/ru7rTKVNTzwGukrU5cTBirJXf393w6ubcDdKMRvOtaY0RymUqwwbHgjJL
	l6bexQqhE5OsEYvIQjO2WivXw8o4sHq6FgB2t5Lo+Uwb03bQcBaGETQnwfvc4dK+gl96
	HJ0+3L6hKYUTpG7RX6CILoRsTZxpBKIROQ83euaFZxU65OnnRSK9KQCmOnMVPrHmlFHG
	zjBw==
MIME-Version: 1.0
X-Received: by 10.194.21.233 with SMTP id y9mr13201135wje.47.1362173383974;
	Fri, 01 Mar 2013 13:29:43 -0800 (PST)
Received: by 10.194.45.100 with HTTP; Fri, 1 Mar 2013 13:29:43 -0800 (PST)
In-Reply-To: <20130301212012.GS3279@jama>
References: <1362135473-20635-1-git-send-email-Martin.Jansa@gmail.com>
	<1362154793-10296-1-git-send-email-Martin.Jansa@gmail.com>
	<CAHUNapTo8kOO+k9aFOnDCyc6LgMtx+tRzm=hJW4q_5rjL+Nd0Q@mail.gmail.com>
	<20130301173817.GP3279@jama>
	<CAHUNapTJVB_Opb1pBpMEpWTc8S9gZBz1S+iAJAyg9ybEwao=hQ@mail.gmail.com>
	<20130301191053.GR3279@jama>
	<CAHUNapTnV7mCppOBC=-JuXp-7Tc6KquyN2=KJWRh0rPOPY1WaA@mail.gmail.com>
	<20130301212012.GS3279@jama>
Date: Fri, 1 Mar 2013 16:29:43 -0500
Message-ID: <CAHUNapSQW42ShgSNHws0uZ_coJQLi_wzbiCix4cvONSfDCnKRQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCHv2] poky.conf: update SANITY_TESTED_DISTROS
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 01 Mar 2013 21:29:46 -0000
Content-Type: multipart/alternative; boundary=047d7b5d2774aca9a704d6e3b4e6

--047d7b5d2774aca9a704d6e3b4e6
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Mar 1, 2013 at 4:20 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
> This line shouldn't be needed with this patch for oe-core:
>
http://lists.linuxtogo.org/pipermail/openembedded-core/2013-March/036566.html

Sorry :-(

Applying that patch to master's HEAD:

    8c3550cc16b8382b005550f71ae0df6e7916b8e9 sanity.bbclass: always use
oe.lsb.distro_identifier method
    8264863ea0674f6cb105f5f7301861408fdc409b Add KERNEL_EXTRA_ARGS parameter
    86d6ec51f0e1a4f5335d72928ef14ea1335d49b0 module.bbclass: Create a new
depmodwrapper to assist cross-installs
    be248b0222bda151ae5f94be6bb8a53e192ecded poky.conf: update
SANITY_TESTED_DISTROS
    e5f3b992d7edc7b5e2467865a9fad738fbeaf40f sanity: use lsb
distro_identifier
    ....

still produces the problem:

    WARNING: Host distribution "SUSE-LINUX-12.2" has not been validated
with this version of the build system; you may possibly experience
unexpected failures. It is recommended that you use a tested distribution.

--047d7b5d2774aca9a704d6e3b4e6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Fri, Mar 1, 2013 at 4:20 PM, Martin Jansa &lt;<a href=
=3D"mailto:martin.jansa@gmail.com">martin.jansa@gmail.com</a>&gt; wrote:<br=
>&gt; This line shouldn&#39;t be needed with this patch for oe-core:<br>&gt=
; <a href=3D"http://lists.linuxtogo.org/pipermail/openembedded-core/2013-Ma=
rch/036566.html">http://lists.linuxtogo.org/pipermail/openembedded-core/201=
3-March/036566.html</a><br>
<br>Sorry :-(<br><br>Applying that patch to master&#39;s HEAD:<br><br>=A0 =
=A0 8c3550cc16b8382b005550f71ae0df6e7916b8e9 sanity.bbclass: always use oe.=
lsb.distro_identifier method<br>=A0 =A0 8264863ea0674f6cb105f5f7301861408fd=
c409b Add KERNEL_EXTRA_ARGS parameter<br>
=A0 =A0 86d6ec51f0e1a4f5335d72928ef14ea1335d49b0 module.bbclass: Create a n=
ew depmodwrapper to assist cross-installs<br>=A0 =A0 be248b0222bda151ae5f94=
be6bb8a53e192ecded poky.conf: update SANITY_TESTED_DISTROS<br>=A0 =A0 e5f3b=
992d7edc7b5e2467865a9fad738fbeaf40f sanity: use lsb distro_identifier<br>
=A0 =A0 ....<br><br>still produces the problem:<div><br></div><div>=A0 =A0=
=A0WARNING: Host distribution &quot;SUSE-LINUX-12.2&quot; has not been vali=
dated with this version of the build system; you may possibly experience un=
expected failures. It is recommended that you use a tested distribution.</d=
iv>
</div>

--047d7b5d2774aca9a704d6e3b4e6--
