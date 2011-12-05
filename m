Return-Path: <simonsonc@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D563CE0030F
	for <poky@yoctoproject.org>; Mon,  5 Dec 2011 08:42:34 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eaal12 with SMTP id l12so5800829eaa.35
	for <poky@yoctoproject.org>; Mon, 05 Dec 2011 08:42:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=MQzEWvd8OPWNkiho0sYdEC8Y+AnGTOFmYia9QLLKmzA=;
	b=mgJkwvMPsiCwN+CXd782rVSV74yCVeq34ycjiKusnnL6565ztpFFkOa8ZBebWVBsaR
	aCF27GwarE0NOvm59HImxagUAU0dzlBAr7kgtKXSsyZkdOC4HAcgIAqzOKSQYXDcq2nt
	NwsSkZJ816rQ+G5SW5kRapwwMmWAl5ktuZAJ8=
MIME-Version: 1.0
Received: by 10.213.28.193 with SMTP id n1mr796492ebc.5.1323103352272; Mon, 05
	Dec 2011 08:42:32 -0800 (PST)
Received: by 10.205.123.9 with HTTP; Mon, 5 Dec 2011 08:42:32 -0800 (PST)
In-Reply-To: <4EDCF1F4.1050304@mlbassoc.com>
References: <4EDCE652.1040802@mlbassoc.com>
	<4EDCF1F4.1050304@mlbassoc.com>
Date: Mon, 5 Dec 2011 10:42:32 -0600
Message-ID: <CANpFMir7fShQw5=QPG+Rn5vD_zown8RFHVxQS54QX77B3kSKNA@mail.gmail.com>
From: Carl Simonson <simonsonc@gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: Re: Problem building SDK
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
X-List-Received-Date: Mon, 05 Dec 2011 16:42:35 -0000
Content-Type: text/plain; charset=UTF-8

Look at 9eecd86. It looks like that change added an interits for
lib_package. Doesn't look like you have that built since it looks like
your PR is 0, not 1.

Maybe you need to update and build the recipe again?

Carl Simonson
simonsonc@gmail.com


On Mon, Dec 5, 2011 at 10:31 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2011-12-05 08:42, Gary Thomas wrote:
>>
>> With a recent master (9be6d59b78510443d0944513503d515df13caa45),
>> the gdbm package version changed from 1.8.3 to 1.10 (notice not 1.10.0).
>> This causes a problem:
>> | * satisfy_dependencies_for: Cannot satisfy the following dependencies
>> for task-core-sdk:
>> | * libgdbm3 (>= 1.8.3) *
>>
>
> A little more data - previously, the 'gdbm' recipe generated these
> packages:
>  armv7a-vfp-neon/libgdbm3_1.8.3-r4_armv7a-vfp-neon.ipk
>  armv7a-vfp-neon/libgdbm-dbg_1.8.3-r4_armv7a-vfp-neon.ipk
>  armv7a-vfp-neon/libgdbm-dev_1.8.3-r4_armv7a-vfp-neon.ipk
>  armv7a-vfp-neon/libgdbm-doc_1.8.3-r4_armv7a-vfp-neon.ipk
>  armv7a-vfp-neon/libgdbm-staticdev_1.8.3-r4_armv7a-vfp-neon.ipk
>  armv7a-vfp-neon/perl-module-gdbm-file_5.14.2-r0_armv7a-vfp-neon.ipk
>  armv7a-vfp-neon/python-gdbm_2.7.2-r0.0_armv7a-vfp-neon.ipk
>
> The new recipe generates these:
>  armv7a-vfp-neon/gdbm_1.10-r0_armv7a-vfp-neon.ipk
>  armv7a-vfp-neon/gdbm-dbg_1.10-r0_armv7a-vfp-neon.ipk
>  armv7a-vfp-neon/gdbm-dev_1.10-r0_armv7a-vfp-neon.ipk
>  armv7a-vfp-neon/gdbm-doc_1.10-r0_armv7a-vfp-neon.ipk
>  armv7a-vfp-neon/gdbm-locale-de_1.10-r0_armv7a-vfp-neon.ipk
>  armv7a-vfp-neon/gdbm-locale-fi_1.10-r0_armv7a-vfp-neon.ipk
>  armv7a-vfp-neon/gdbm-locale-ja_1.10-r0_armv7a-vfp-neon.ipk
>  armv7a-vfp-neon/gdbm-locale-pl_1.10-r0_armv7a-vfp-neon.ipk
>  armv7a-vfp-neon/gdbm-locale-uk_1.10-r0_armv7a-vfp-neon.ipk
>  armv7a-vfp-neon/gdbm-staticdev_1.10-r0_armv7a-vfp-neon.ipk
>
> Very different, indeed.  I noticed that the old recipe has a couple of
> patches which were not carried forward that seem to have something to
> do with this.
>
> I also can't figure out where this dependency is coming from.  I ran
> 'bitbake my-image -g' to get the dependency graphs and I don't see libgdbm
> mentioned anywhere.  How can I find the [anonymous] dependency?
>
> Any ideas how I can fix this?
>
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

