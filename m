Return-Path: <flocirel@gmail.com>
Received: from mail-fx0-f48.google.com (mail-fx0-f48.google.com
	[209.85.161.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2A06E0030F
	for <poky@yoctoproject.org>; Mon, 12 Dec 2011 06:54:13 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by fanq24 with SMTP id q24so1925444fan.35
	for <poky@yoctoproject.org>; Mon, 12 Dec 2011 06:54:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=M3T60J8opdJdz0UM0r8kgzyInln7dC1VuuUfJBxdE8k=;
	b=Oz+cHl4cCR9aFbWIMqDM6B/244snj8Wbk1rKzaMKlTRGX4TQs+BsYWRiQOjkg0QvHa
	Spfqn1HyFuEAi1P8kEZEGOdvq872rZgmwYEwWvoLcxqcdYfsS2jWy0RET2sP25bXDKaG
	zy33YFQ/A7+gkh5FDyMdO8cbQfvX/QPL6RfUk=
MIME-Version: 1.0
Received: by 10.180.96.103 with SMTP id dr7mr23051224wib.16.1323701652425;
	Mon, 12 Dec 2011 06:54:12 -0800 (PST)
Received: by 10.223.75.200 with HTTP; Mon, 12 Dec 2011 06:54:12 -0800 (PST)
In-Reply-To: <1323641532.2731.5.camel@ted>
References: <CANdftmOckSa7hg1OByDod3C9df5YzP2scQ7eVZ8bZM-mSQE+Kg@mail.gmail.com>
	<4EE4D5FA.3050604@gherzan.ro> <1323641532.2731.5.camel@ted>
Date: Mon, 12 Dec 2011 16:54:12 +0200
Message-ID: <CANdftmPSkw9fEcucJcZPLm4kFticM6t7-pe4HUZoRxgsuj8t0w@mail.gmail.com>
From: Foinel <flocirel@gmail.com>
To: poky@yoctoproject.org
Subject: Re: gnutls-2.12.14-r3.1 - strange rpm names yocto
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
X-List-Received-Date: Mon, 12 Dec 2011 14:54:14 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,I am experiencing this issue on a new build from scratch configured
toexclude GPLv3 packages/files. I do not have gnutls added to any
.bbtasks file, it gets added as a dependency of some package(s) I
ambuilding.So I would have 2 issues here: first, after the build
completes, I getthe GPLv3 libraries from the -extra rpm into the
rootfs; second, howcan I get a view of all the packages that drag
gnutls into the build?(I don't think that looking into each *.bb for
the dependency is veryuseful; is there any file in which I can find
some sort of adependency tree for all the packages I am
building?)Thanks.
On Mon, Dec 12, 2011 at 12:12 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Sun, 2011-12-11 at 18:10 +0200, Andrei Gherzan wrote:
>> I tried something else today.
>>
>> I created from scratch a new image-minimal and i added wpa-supplicant to
>> IMAGE_INSTALL - rpm's names are wpa-supplicant-[stuff]. After finishing
>> this image i could see that gnutls-extra is again in rootfs even if i
>> excluded GPLv3 from build. After searching a little i could see that
>> gnutls is a dependency for wpa-supplicant and, in the generated gnutls
>> spec, that gnutls-extra is required by gnutls-bin.
>>
>> If bin requires extra than this build should have ended with an error...
>> no provider as GPLv3 excluded. Am i right?
>
> Are you running a build which includes GPLv3, then running a build
> excluding GPLv3? I suspect doing that could confuse the system a little
> but I'm not sure exactly what the issue would be.
>
> If on the other hand you always exclude GPLv3 from a given build
> directory, there shouldn't be any way for it to become contaminated.
>
> There are various changes in master which are working towards making the
> license checking a build and runtime check rather than the build time
> check in 1.1.
>
> Cheers,
>
> Richard
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

