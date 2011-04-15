Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7C6284C8100B
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 08:11:50 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vws7 with SMTP id 7so3324471vws.35
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 06:11:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=tNB7oWTfb65hMXh/N3pKmznEikTXDvIeJ8hnZlqoVD8=;
	b=ECRxWJNTnWXWgitrSoXWth1UmRc0t4mSPLFVQ0K6QQuTBbDb0xJlMAJ1anMNHT3fxR
	YamPsdIu/xH8KvHZoYTxSjj5nfX0vyctmkcEmGTQ8HdizeS0t3fapfgIeV9V+VaLeG0t
	8jy/QS2kerl7PPOCZDoWIQMU2LPEDv8r+Fmzo=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=eXnPPbLTyuL98hIYfZh4v8UXq079ZI7nulTSJ/+Wt9NUVoZ4QclTXDytVICc8/ydqH
	TETxrAGfSxgnWV+V+kXjnzfJKLrFVB9+aDObC8K3ELbGSkpTzp4kCtwAiOqZv/unxbZb
	vGNqrUFLoKCnb5ohamRWwFWBL1lCquhgVHCcY=
MIME-Version: 1.0
Received: by 10.52.18.74 with SMTP id u10mr2877106vdd.192.1302873109782; Fri,
	15 Apr 2011 06:11:49 -0700 (PDT)
Received: by 10.220.75.198 with HTTP; Fri, 15 Apr 2011 06:11:49 -0700 (PDT)
In-Reply-To: <201104151329.17014.paul.eggleton@linux.intel.com>
References: <201104151329.17014.paul.eggleton@linux.intel.com>
Date: Fri, 15 Apr 2011 09:11:49 -0400
Message-ID: <BANLkTi=GxLBMpYEbyooDAbHb9jLBB8h88w@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: NFS root & shutdown/reboot
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
X-List-Received-Date: Fri, 15 Apr 2011 13:11:50 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Apr 15, 2011 at 8:29 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Hi all,
>
> I have been working on smoothing out some things to do with NFS root this week
> and I have come across one situation that I'm not quite sure of.
>
> At the moment when you shut down a Poky NFS root-based system or reboot it, it
> gets all the way to the end and then hangs, with an error "nfs: server
> myserver not responding, still trying". I tracked this down to the -i option
> that is passed to the final call to shutdown and reboot which is supposed to
> shut down all network interfaces - if you remove this then it works fine.
>
> I'm not sure of the reason for having the -i option, but it was suggested to
> me that it might be in order to release DHCP leases where applicable; also
> some systems might otherwise leave their network adapters powered up when the
> system is shut down in order to receive wake-on-LAN requests, and if you're
> not using that feature you're just wasting power. I'm guessing for most
> situations we would want to retain -i. However, where the system is running
> from an NFS root it would seem that we would have to omit this option, unless
> there is another solution I'm not aware of.

I can't say exactly when this is required either, but I can say that we've
also removed -i from our NFS root boots in the past, for just what you
are describing above.

Shutting down and getting the interface down in the wrong order causes
the obvious problems you'd expect with a NFS root hanging and not
being able to complete the rest of the process.

>
> I've done some googling and not come up with anything concrete in terms of how
> this should be handled correctly. Any suggestions?

My only suggestion is to make it not present by default, and enable
it (-i) when a real reason for it is found (i.e. someone really wants
the nic to shutdown for a power profile). Detecting a NFS root
(and if the root continues to be NFS after boot) could be more error
prone that making -i the default.

Just my opinion,

Bruce

>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre (UK)
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

