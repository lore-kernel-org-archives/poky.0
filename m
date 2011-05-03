Return-Path: <cgwalters@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 71AF04C8011E
	for <poky@yoctoproject.org>; Tue,  3 May 2011 18:01:40 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwd20 with SMTP id 20so640382wwd.11
	for <poky@yoctoproject.org>; Tue, 03 May 2011 16:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=IHLOn/udyOYwgk89D6SRikYzU4nw2Ur6sa5VcMr+93s=;
	b=GLG7nriwSm45A5iAl6Wql010ELVAHTnIOg0tNWy8TXnKx9Fiqw1MoNcm5sMRrzGzJ+
	c6KIH48hwJLkn21UmRhN/h403AinRswJ8SZZuWrGAHlEykuwDeagh+XA2okuJJZ6YXpN
	9Pa7J/Xf6ZqJ6Jpda7yTOyr9YNJQXv5ic4gjA=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	b=TCbEvJSo4aTPqpJzDTJ4QpCajeoJKbh0nDaBPRXD2iLI5M9+WAj8VXZKQVRtAxhM4i
	NFllpwn/PTVvpllzSud5tV3Ds44UOyWlgoSAyTlFFUpkjnPZ6B7Bs9OT+31EQI4TXu/p
	wNVlmfNJXC3RpDBGYU62dhyarTVkOTBP2B/3U=
MIME-Version: 1.0
Received: by 10.216.239.73 with SMTP id b51mr457273wer.18.1304463699238; Tue,
	03 May 2011 16:01:39 -0700 (PDT)
Sender: cgwalters@gmail.com
Received: by 10.216.8.129 with HTTP; Tue, 3 May 2011 16:01:39 -0700 (PDT)
In-Reply-To: <1304419011.21461.98.camel@rex>
References: <BANLkTimaSk6vz1AeoRoT63T24XX=w1TuaA@mail.gmail.com>
	<1304419011.21461.98.camel@rex>
Date: Tue, 3 May 2011 19:01:39 -0400
X-Google-Sender-Auth: znykDBaGpIMKV4-tyH_ucaQLWsk
Message-ID: <BANLkTi=N_hm-qCo0Gi+zoAH4mH+dszpRdA@mail.gmail.com>
From: Colin Walters <walters@verbum.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky <poky@yoctoproject.org>
Subject: Re: post-image-creation postinsts
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
X-List-Received-Date: Tue, 03 May 2011 23:01:40 -0000
Content-Type: text/plain; charset=UTF-8

Hi Richard,

On Tue, May 3, 2011 at 6:36 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
>> It seems to me we could add some mechanism for mounting the image
>> filesystem and running a script in there (guestfs?), or maybe an
>> automated QEMU boot, run the postinsts, and sync/shutdown?
>>
> force the script to run on the target device. If there is a way to run
> this at image generation time (cross safe), tell us what it is and we
> can make it happen at image generation time!

See the bit I quoted from my original mail.  I think the most general
solution is simply "run qemu, then shutdown", and I can look at
automating this inside OE, but was just curious if anyone had any
better ideas.

Would a patch to do this by default for image.bbclass make sense?

