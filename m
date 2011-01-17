Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8F9054C8085F
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 11:35:05 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so5586554iwn.35
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 09:35:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=knuTI24Sk8xfsiEUsse5scBRNFAu4yisnmdHI/5tUO0=;
	b=rMl+0TIjmAnDjXmr0EHJSa9KXEg+UZHgbzmVM+Wrv1q7GRI7KBAKUJ8mWGIsaDtDQC
	YffT5U5LJWku8KDhOei56ap97XfA25VseFm2/AiNFt1nUTrvcDaGOy+8bcYanw0iOVDJ
	Rm6AEfj3qXki3AvatQbxS0WEt3SiF6o07ZXzM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=HvChjAHblaCtjouGB1LSZ9ALZ629Uc7sZIZJ1JXE/ednG3EIUSHfYLBlcPu8///Djr
	87Q/WJ2h5N+dfgFLLPklPwWyOSEQvrU+HRBesMFgYAOC30cWh+y9gJkBKp/5DXBEULRy
	pcduk9L/zaXMnuBjRANEM0ISYLen2OmwKLLXg=
MIME-Version: 1.0
Received: by 10.231.199.10 with SMTP id eq10mr4499492ibb.112.1295285701643;
	Mon, 17 Jan 2011 09:35:01 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Mon, 17 Jan 2011 09:35:01 -0800 (PST)
In-Reply-To: <4D33F57D.2030009@intel.com>
References: <4D33F57D.2030009@intel.com>
Date: Mon, 17 Jan 2011 12:35:01 -0500
Message-ID: <AANLkTi=ZQnPnSmRPLf3SsiCJOsDcb1dWmSzGPtDTi+G3@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Saul Wold <saul.wold@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: QemuARM Boot Failure
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
X-List-Received-Date: Mon, 17 Jan 2011 17:35:05 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 17, 2011 at 2:53 AM, Saul Wold <saul.wold@intel.com> wrote:
>
> Bruce,
>
> Did you test the latest systemtap update on ARM? =A0I am just curious bas=
ed on
> the current failure that we are having with qemuarm. =A0If so, against wh=
at
> revision of master? This might help us narrow down the issue.
>
>
> I tried both the systemtap version and the older version and both failed.
> =A0The last known good qemuarm was 2 weeks ago, there have been a number =
of
> kernel updates in that time along with a loads of userspace changes, but =
no
> qemu updates since the first of the year. =A0I am not sure about the user=
space
> changes yet, need to review them more deeply.

Problem solved, there were some configuration values being
dropped. I'm putting together a fix now.

root@qemuarm:~# uname -a
Linux qemuarm 2.6.37-yocto-standard+ #2 PREEMPT Mon Jan 17 12:35:56
EST 2011 armv5tejl GNU/Linux


Cheers,

Bruce

>
> I will be tied up tomorrow, but will try bisecting tomorrow evening if th=
ere
> is no update before then.
>
> Thanks
> =A0 Sau!
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

