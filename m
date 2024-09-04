Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3247CA0ED3
	for <webhook@archiver.kernel.org>; Wed,  4 Sep 2024 09:42:06 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web11.45897.1725442919351657298
 for <poky@lists.yoctoproject.org>;
 Wed, 04 Sep 2024 02:41:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=P3tKEf75;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-42c7b5b2d01so43949715e9.3
        for <poky@lists.yoctoproject.org>; Wed, 04 Sep 2024 02:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1725442918; x=1726047718; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Feit7nqh1RFxrqgxQOy1ezZtujMC9a2GAFBH5nzxudY=;
        b=P3tKEf75SIBAIcm0WyuqAxYCu73MsXY0fxiHCqbCZnKHpjy0rXHIypiLbbjE9+virV
         wclKjxVNugWRBZXE7JK1s30JHaltIvYyP0gD89HkgCbpO07/7IUGI+RSFCal1sZoAH05
         ow6ofpoKKakPmhRqah7EqVd/hL22f4TYR6kTo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725442918; x=1726047718;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Feit7nqh1RFxrqgxQOy1ezZtujMC9a2GAFBH5nzxudY=;
        b=QvyreTD/CamL7OxbOnMoWya2Oyl7ioWB/+DcLBVYbwSyJVnMQr+/s328kUoDKGJcUr
         llIbXiWjXU1Cgb2cu3oGl3xZor6+eyHNImbA2OBGunfFFxpFGKp0v+2L+TGxbJFAMolW
         gMqIWRMbE+7jP1srpd7DHaP9lvQji0FqBC2f9LtDezVxtMSzjEdnnX3AwhDnHoez84DB
         nVWdRWv1yVLkoqgxS8X9hxNWcGVSccsNznmm3f3AOun4j9loZ7skeRuEqthLEFufuC4R
         KaGlg/ZCAZGmCJg84GEH13Ly6nvB/sU+G00t2b5U8ZLSDicciapskRpIdUBf4XluDP6m
         Ve0Q==
X-Forwarded-Encrypted: i=1; AJvYcCUYIYoWUfVu8NzWeh/V/IiGGYOOZ4aXIfTJUMyL8C3dwUKMuZPteIjJWDHYTaAd0Eg7pN4g@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyHAVv0BhJCJmOUFRO5M0QwUazs+G95ac5kFzvnhZXKFPs+zZ9l
	8OBU9zHFXJ+QfEUYCk/ChHArmz2qcLepzzysigRDtF4vtTlnZKxPwksV5shwels=
X-Google-Smtp-Source: AGHT+IEH2JGi/7qYsmtiJpe1OXyymFWai/s3B44P/S0W8h61sLDCihcc8Ea1lh2Fu78Y7OSs9NZjEw==
X-Received: by 2002:a05:600c:3155:b0:428:e30:fa8d with SMTP id 5b1f17b1804b1-42bb01ae037mr181227615e9.6.1725442917448;
        Wed, 04 Sep 2024 02:41:57 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:99f4:e9dc:3777:c785? ([2001:8b0:aba:5f3c:99f4:e9dc:3777:c785])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42bba7f9f94sm108558935e9.0.2024.09.04.02.41.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 02:41:57 -0700 (PDT)
Message-ID: <614539e4e2e958d172483b7d4ad0faf15548b32b.camel@linuxfoundation.org>
Subject: Re: [poky] Poky calls host pzstd with uninative's libstdc++.so.6
 instead of the host library
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: tamara.schmitz@kernelconcepts.de, poky@lists.yoctoproject.org
Date: Wed, 04 Sep 2024 10:41:56 +0100
In-Reply-To: <87fe05839a90d96222d1afb0811fa8eca72a977d.camel@kernelconcepts.de>
References: 
	<87fe05839a90d96222d1afb0811fa8eca72a977d.camel@kernelconcepts.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 04 Sep 2024 09:42:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13431

On Wed, 2024-09-04 at 11:32 +0200, Tamara Schmitz via lists.yoctoproject.or=
g wrote:
> I'm a newbie to Yocto Linux and I am attempting to build a vendor BSP
> on an unsupported distribution: Fedora 40.

A key piece of information is which version of poky are you trying to
build?

Master for example works fine with fedora 40.

> The OS' libstdc++.so.6 provides CXXABI_1.3.15 vs uninative's which
> provides up to CXXABI_1.3.14. That would be fine, if the
> sstate_archive_package would not attempt to attempt to run it in an
> ENV that forces uninative's library.
>=20
> Question 1:
> Using bitbake -e and reading the logs I was already able to get this
> far. How can I understand what the ENV, that the script executes in
> looks like?

uninative changes the loader of executables to use the loader from
uninative rather than the host system. It does this so that binaries
built on a newer distro can work on an older one.

The cost of doing that is that you need to use a uninative that matches
or is greater than the host system.

I'd therefore suggest bumping the version of uninative in the metadata
you're using. Whilst it isn't a supported version, chances are it will
probably work if you do that.

> Question 2:
> Is this a bug in the vendor BSP or is Poky just silly mixing and
> matching host tools build against the OS toolchain and uninative's
> libraries as it pleases?

The bug is that you're using an unsupported distro without making the
modifications needed to support it. You can disable uninative, or you
can switch to a newer uninative release, or switch to a version of the
system which has fedora40 support.

There will be other issues with fedora 40 as some things won't build
correctly due to the newer gcc version on f40 too.

Cheers,

Richard



