Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.410.1581540452544076907
 for <poky@lists.yoctoproject.org>;
 Wed, 12 Feb 2020 12:47:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=YEmXBhCi;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 140.211.169.56, mailfrom: jdmason@kudzu.us)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E3E6E01486; Wed, 12 Feb 2020 12:47:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f196.google.com (mail-il1-f196.google.com [209.85.166.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACDC7E0082A
	for <poky@yoctoproject.org>; Wed, 12 Feb 2020 12:47:31 -0800 (PST)
Received: by mail-il1-f196.google.com with SMTP id v13so2984808iln.4
        for <poky@yoctoproject.org>; Wed, 12 Feb 2020 12:47:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=eJlGc2wQRNWQ8voR0e4NqBydm+4+9Io4YfcAXKMobg4=;
        b=YEmXBhCiz3Dw1bpWBzWYqgiumkbyUwBMpo/g0gBqEf5UV87QRzrGtm1fHBIsauQNSe
         5ZsvoT47l3XaR2mcZ6z9JvB8+HrzGBg9zgktXZTZLWfdHlU+xCV2O4gfYpjorKxW//2W
         cGdzbHHbsrz5c3q4NtI06HD0sh4MVe2a9b565nzoGnGJpj/MPsFZRMvydg6yMY9xU3mp
         +sp+p8hxPD+y92EBP5OJ6PObtONVD1ccaxBlbrPvIiNcl9haAmFH8aE8VllNk3GAGCju
         l4uRPsuqG3dOluq5CyyH0xlO6CncE9YftyLYHPxov7Nso7rWtx4xLKoy7tnLJ//1rJmx
         K+vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eJlGc2wQRNWQ8voR0e4NqBydm+4+9Io4YfcAXKMobg4=;
        b=rfmFrcc3n7hJC01R1AX8ADy1H/EztTdHhqrVsDQM0N6/i902aCGB6TMedtlzoMa4iS
         5FwPO6fL5ezXwG1FUll05/QnS0kpkL2U3RU0sHBRZQuNbPVkAlIx8l6Wd6Y6rB0qYMUI
         Z8uuxTdqqFEfJNd+eXCw3NvNZBcp6U3r0E9c9FmV1uooEyjaoRb0SPKbml7I+Rywr5YV
         PI1f9ZxVz+ytmBeZ6BrGClisBbmgtU3eMVT4edlxhrMa6p0qkPK0sPIp3VmkhpKYxcTb
         3aWCJEItpYpRCBfJWkZf3GJ7hH5HvdYBEHjoZ8aKIqlkv/skXSRHlyim4lAKaAeNhNkS
         U1QQ==
X-Gm-Message-State: APjAAAUDwD2b/NHK4+v/vNragc8AlHrDbuupyQ888qCMqKmUFZzPJamz
	fdsBDNtiqrsAU44HUaGASkVm30ZlaE4ssIptl0b85g==
X-Google-Smtp-Source: APXvYqyl/GCT5Z0rRRU+It+iWx3gPtNM6QkIfj+N5BObe8nIl2PsZYNXyd/K38lU1iyR1CWzmHAPvZlKeyr7Af8eESU=
X-Received: by 2002:a92:8c54:: with SMTP id o81mr12999770ild.163.1581540451139;
 Wed, 12 Feb 2020 12:47:31 -0800 (PST)
MIME-Version: 1.0
References: <CAPoiz9z_CX0A0vii6w8d+D+csgF3eoxweTF-gkvx58te+6hx5w@mail.gmail.com>
 <d8b27040725d248c5fc498131a08584ee5cc7785.camel@linuxfoundation.org>
 <20200211214956.GU4735@denix.org> <81986098-aeb2-9d9b-c6b9-a6de971c72e8@gmail.com>
In-Reply-To: <81986098-aeb2-9d9b-c6b9-a6de971c72e8@gmail.com>
From: "Jon Mason" <jdmason@kudzu.us>
Date: Wed, 12 Feb 2020 15:47:20 -0500
Message-ID: <CAPoiz9y7_B9ZWVuVGn2P_GSUcTwX1U6bx=szyzbUftf858oBeQ@mail.gmail.com>
Subject: Re: [poky] testimage gcc error
To: akuster808 <akuster808@gmail.com>
Cc: Denys Dmytriyenko <denis@denix.org>, Richard Purdie <richard.purdie@linuxfoundation.org>, 
	poky@yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Tue, Feb 11, 2020 at 10:16 PM akuster808 <akuster808@gmail.com> wrote:
>
>
>
> On 2/11/20 1:49 PM, Denys Dmytriyenko wrote:
>
> On Tue, Feb 11, 2020 at 09:31:49PM +0000, Richard Purdie wrote:
>
> On Tue, 2020-02-11 at 14:31 -0500, Jon Mason wrote:
>
> I'm seeing multiple "Command not found" errors when I run the
> testimage command on zeus with GCC added.  I'm sure others are
> testing
> this and not seeing an issue.  So, please let me know what I'm doing
> wrong.
>
> My only configuration was to add to local.conf (aside from SSTATE_DIR
> and DL_DIR) is:
> INHERIT += "testimage"
> IMAGE_INSTALL_append = " autoconf make gcc "
>
> If you put gcc-symlinks and maybe binutils-symlinks in there, does it
> work better? Suggests we may have some gremlins in the packages used to
> enable the tests if so...
>
> Maybe try IMAGE_INSTALL_append = " packagegroup-core-buildessential"
>
>
> Just curious. Do you see this on Master?

Yes, I ran it specifically to verify.  Given that it's a dependency
(or user error, depending on your point of view), I expect it's on
every version.

Thanks,
Jon

> - armin
>
>
> 
>
>
