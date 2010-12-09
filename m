Return-Path: <leon.woestenberg@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 950EF4C80B70
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 09:43:14 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vws18 with SMTP id 18so1651558vws.35
	for <poky@yoctoproject.org>; Thu, 09 Dec 2010 07:43:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type;
	bh=Upf8kNs69V1rhMNwsXhn0SYcmXtQfiKZAnK3xP4vbBQ=;
	b=OIsEQhjAr7JbUKsDab4fEpBvv0DZjZcHlFl+DvTecNqbjBKa0NZxZrvLf5e4ah51ZS
	LSugrha4kIUAAW7Fn+AJqLtiSGOnu9c3vFVPgRQu8Dv7LyU7e4Fl6gEH3KLR7Dq6HCaE
	rN5NcqFiKe3F3CvqfEyDdMqmV3fIDrlzG35/E=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=p3ZqcOGJ6L1ruBlGr98xIP+hOIdZXCOSUO74MOZlz9kNvaBXGv4zeAhQFpRQG1V9+6
	adSYmz8/q+KBAsAwWMKWIMv2CjD28UOlCVc1Ru4yGkpRixINnh4ewHWDtlnJEiMcSChW
	Ci4vXuQBVJMGX2yBpV0FPzZLJMDl+/BAfRgGs=
MIME-Version: 1.0
Received: by 10.229.84.147 with SMTP id j19mr8156628qcl.155.1291909393997;
	Thu, 09 Dec 2010 07:43:13 -0800 (PST)
Received: by 10.229.223.203 with HTTP; Thu, 9 Dec 2010 07:43:13 -0800 (PST)
In-Reply-To: <1291897825.6078.11.camel@scimitar>
References: <1291756443-28767-1-git-send-email-wd@denx.de>
	<201012081124.45901.paul.eggleton@linux.intel.com>
	<20101208113542.9D65E140688@gemini.denx.de>
	<4D00042C.6040403@linux.intel.com>
	<20101209085846.264F5D301D6@gemini.denx.de>
	<1291897825.6078.11.camel@scimitar>
Date: Thu, 9 Dec 2010 16:43:13 +0100
Message-ID: <AANLkTikvUb+SmGvn3i=U7KpEiYHq24XbOnjZMFTh6K1j@mail.gmail.com>
From: Leon Woestenberg <leon.woestenberg@gmail.com>
To: Joshua Lock <josh@openedhand.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/5] Fedora 14 Patches
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
X-List-Received-Date: Thu, 09 Dec 2010 15:43:14 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello Joshua,

On Thu, Dec 9, 2010 at 1:30 PM, Joshua Lock <josh@openedhand.com> wrote:
> On Thu, 2010-12-09 at 09:58 +0100, Wolfgang Denk wrote:
>> Dear Saul,
>> >
>> > Thanks for your patches and assistance.
>> >
>
> I'm not at all familiar with PPC machines and not especially familiar
> with Arm but I assume these are new machine definitions which you've
> added? If that is the case can you share the machine configurations,
> this could help us (or more knowledgeable others) to work out your
> issue?
>
>
Is something preventing the Yocto guys to look at the OpenEmbedded
GIT, where these machines and recipes came from in the first place?

Obviously most of these machines come directly from OE.

What I don't understand is that all that is sitting in OpenEmbedded is
considered 'new' in Poky/Yocto, while it was thrown away in the first
place by Poky and Yocto.

We have had numerous discussion on how we can extend Yocto back to
include the PowerPC, ARM, MIPS stuff again, but it takes people to
look across the wall again.

If there's legal issues involved in looking over the wall, I'ld like
to see that confirmed, as it greatly influences the way we can work
with the community.

Regards,
-- 
Leon

