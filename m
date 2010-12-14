Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 36C924C80B71
	for <poky@yoctoproject.org>; Tue, 14 Dec 2010 15:20:55 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so1313288iwn.35
	for <poky@yoctoproject.org>; Tue, 14 Dec 2010 13:20:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=YV4WNSJLm9K8O4zNLdz1sGjFvs3h/WLP1G/5o2c0r1o=;
	b=VO6r3fdD+/S8UtA7AvlKZLzD1ZZqE5OahiFONQ3PcwCUhrTKSkykeXCzFJMPBfrL+C
	F4jU0EBlgH8Y5Gbx7k1uO680N/FAwh+9qtvwQzhb235HCoSb4jPmzDLDyM6tWjylOoS+
	YSy1hhpFwzyzx/4Y61BCiU6gxJWNLBMFSYbcM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=TXUShSFJXCOk8GYk4BVJsBhKvfE7RTME8c3AUTcjdYhAWXJGkMgKU79FpWYPO6opOa
	AcOIa+c/zs95yso8t8gjbkoFjaklHqzSL/nbQbB6u5x6X1jDkzMPJP8O8kHmjTvk8ifs
	56KiOhZDVcnPrHGYyxTwV/TMWy0CFFDV6XpmY=
MIME-Version: 1.0
Received: by 10.231.36.136 with SMTP id t8mr2253188ibd.129.1292361654587; Tue,
	14 Dec 2010 13:20:54 -0800 (PST)
Received: by 10.231.207.1 with HTTP; Tue, 14 Dec 2010 13:20:54 -0800 (PST)
In-Reply-To: <4D07D920.9090205@linux.intel.com>
References: <4D07D920.9090205@linux.intel.com>
Date: Tue, 14 Dec 2010 16:20:54 -0500
Message-ID: <AANLkTi=S66To=45rywH50VJS2pC0TNXkOYtJC73xpLsR@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: kernel type naming and package version conflicts
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
X-List-Received-Date: Tue, 14 Dec 2010 21:20:55 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 14, 2010 at 3:52 PM, Darren Hart <dvhart@linux.intel.com> wrote=
:
> I believe I've identified why my preempt_rt kernel recipes are failing to
> build. The do_package_write_ipk is complaining about invalid characters i=
n
> the file name - specifically:
>
> kernel-2.6.34.7-rt-yocto-preempt_rt
> *** Error: Package name =A0contains illegal characters, (other than
> [a-z0-9.+-])
>
> Note the "_" in preempt_rt.
>
> This name appears to be generated in part from the following assignment:
>
> LINUX_KERNEL_TYPE =3D "preempt_rt"
> LINUX_VERSION_EXTENSION ?=3D "-yocto-${LINUX_KERNEL_TYPE}"
>
> Changing this to the following allows the build to succeed without error
> (replacing _ with -).
> LINUX_VERSION_EXTENSION ?=3D "-yocto-preempt-rt"
>
> As I see it we have two options, we can rewrite linux-yocto kernel branch=
es
> for use in bitbake package names (replacing _ with -), or we can forbid t=
he
> use of _ in the linux-yocto git branches. Rather than clutter up the reci=
pes
> with string manipulators, I would prefer the latter option.

Ah yes. The _ in preempt_rt pre-dates bitbake, but I'm not particularly
attached to it.

As for forbidding, I'll have to add sanity checks, since the branch names
are board customizable, and I know of plenty that will use _'s.

>
> Bruce, Tom, do you have an opinion?

I'll fix preempt_rt to be preempt-rt, and add sanity checks, but won't
go for full replacement.

How does that sound ?

Bruce

>
>
> --
> Darren Hart
> Yocto Linux Kernel
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

