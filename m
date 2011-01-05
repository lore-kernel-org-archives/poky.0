Return-Path: <alees@google.com>
Received: from smtp-out.google.com (smtp-out.google.com [216.239.44.51])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3E4FC4C80BD4
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 07:44:47 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(512-bit key; insecure key) header.i=@google.com;
	x-dkim-adsp=none (insecure policy)
Received: from wpaz5.hot.corp.google.com (wpaz5.hot.corp.google.com
	[172.24.198.69]) by smtp-out.google.com with ESMTP id p05Dikoj017406
	for <poky@yoctoproject.org>; Wed, 5 Jan 2011 05:44:46 -0800
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1294235086; bh=6Qgb7lktkOGgO9/vt8NIfQL6W+0=;
	h=MIME-Version:Sender:In-Reply-To:References:From:Date:Message-ID:
	Subject:To:Cc:Content-Type:Content-Transfer-Encoding;
	b=ScDcWMe9B594DnOj5/oeWpGsh8WzEwCwmt/DGPIv4fBzTTdZjWCIk8WpDFH3tLl7D
	32Spe+TvCPxga3EqLH1ag==
Received: from qwa26 (qwa26.prod.google.com [10.241.193.26])
	by wpaz5.hot.corp.google.com with ESMTP id p05DijKs016442
	for <poky@yoctoproject.org>; Wed, 5 Jan 2011 05:44:45 -0800
Received: by qwa26 with SMTP id 26so15262878qwa.0
	for <poky@yoctoproject.org>; Wed, 05 Jan 2011 05:44:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=beta;
	h=domainkey-signature:received:mime-version:sender:received
	:in-reply-to:references:from:date:x-google-sender-auth:message-id
	:subject:to:cc:content-type:content-transfer-encoding;
	bh=hF0UepRDSoxauyKSQECx7ZZo7N10j8rEyKfmAEM21/k=;
	b=Xfml4S4Ruxwx99eqYGhiMd4WR2HNbnSuo6EkSErDVx3ZSDTKVnWue8J2f81oi0HCnk
	RSNJvqtaoVlLbbz9nA/Q==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=google.com; s=beta;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	b=j9FB9eA8lbKMFoeqXkf6BwQcc36AKCS/ZhGwsPOSktwThJ3j8icUAWlhvUW5hBqpN0
	FgxIxPtg5NCCPxn/ab8g==
Received: by 10.224.191.196 with SMTP id dn4mr21599718qab.225.1294235084986;
	Wed, 05 Jan 2011 05:44:44 -0800 (PST)
MIME-Version: 1.0
Sender: alees@google.com
Received: by 10.220.157.143 with HTTP; Wed, 5 Jan 2011 05:44:24 -0800 (PST)
In-Reply-To: <1293844860.17519.14851.camel@rex>
References: <AANLkTimxU1u-NZUuAft=BqVXZuphRNi06OxH_cw55Hae@mail.gmail.com>
	<1293799575.17519.12488.camel@rex>
	<AANLkTikQF8=jApjfskB0DwWTqsKf=0WrykkW7tsMtmSF@mail.gmail.com>
	<1293844860.17519.14851.camel@rex>
From: Angus Lees <guslees@gmail.com>
Date: Thu, 6 Jan 2011 00:44:24 +1100
X-Google-Sender-Auth: oYmTVk_bUBMXNgQixGXi6BcAgiM
Message-ID: <AANLkTinGTDkGX=1WZn4cFOfH55YkNrHdSuJaGEnqB_n+@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-System-Of-Record: true
Cc: poky@yoctoproject.org
Subject: Re: question re gcc-runtime vs libgcc
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
X-List-Received-Date: Wed, 05 Jan 2011 13:44:47 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Sat, Jan 1, 2011 at 12:21, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>> ok, but where should libgcc be during the linking of libstdc++?
>>
>> As far as I can see, at this point in a clean build libgcc only exists
>> in the temporary gcc-build-internal-* directory, which isn't in the
>> gcc search path. =A0libgcc doesn't make it out into the sysroot until
>> _after_ libstdc++, libssp, etc are built and gcc-runtime is installed.
>> =A0Where should gcc-cross be finding libgcc when linking libstdc++ and
>> friends?
>
> This is a good point. Its finding the libgcc installed by
> gcc-cross-intermediate. This happens to work out ok but its not a good
> design.

I finally got to the bottom of this:

gcc-runtime depends on virtual/${TARGET_PREFIX}gcc (aka gcc-cross) -
even though that compiler isn't functional until after gcc-runtime is
installed (due to missing libgcc).

This usually works by accident because gcc-runtime also depends on
virtual/${TARGET_PREFIX}libc-for-gcc, and {,e}glibc in turn depend on
virtual/${TARGET_PREFIX}gcc-intermediate (aka gcc-cross-intermediate).

gcc-cross-intermediate doesn't play the same libgcc games, so has a
working libgcc without gcc-runtime's cooperation.

This didn't work for me, since my libc-for-gcc arrives precompiled and
so doesn't have the same gcc-intermediate dependency.
My fix was to add a dependency on
virtual/${TARGET_PREFIX}gcc-intermediate to gcc-runtime, as I believe
it should have had originally.

(laverne-4.0)

 - Gus

