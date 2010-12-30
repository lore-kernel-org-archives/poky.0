Return-Path: <kergoth@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id C691A4C80FBE
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 08:11:50 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwb31 with SMTP id 31so13310297wwb.11
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 06:11:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:mime-version:sender:received
	:in-reply-to:references:from:date:x-google-sender-auth:message-id
	:subject:to:cc:content-type;
	bh=891vijvdEFtb1tMNR6Vvi96sWUQf3oozmclgpWusnQg=;
	b=G/WB7vJiHQrMB8XfNX1w0RDXIKSXvmiozG969KcZ729Dbs69gxwosCcZxgg1MasbVK
	i4ZIt5wJdzv9ZvQvHsf+608mRvZZ7b1QN67XU1cpdLNzWdGjLlKH35hM/eHzDpAusF0P
	AV5vGSnjFI9MyF195u8SlQPfzU9DNnTiXw2Ec=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	b=g8zJtwBGsvRGV/xasA80yVrsCu2j2EMmbtXhu/Czyim2xD4hI+RkhVskBDO4+JXyF8
	5Jj83qI7ol8xAbXqClNAzikE1wG6c3xxY3ZjmK6bx9UloYWJBCXcwMGYHdodFFwXXhR/
	7En435dBHfN9tU8WiydFJ3XhSHpTeCphxZYhY=
Received: by 10.216.154.8 with SMTP id g8mr13837572wek.12.1293718310078; Thu,
	30 Dec 2010 06:11:50 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.216.67.67 with HTTP; Thu, 30 Dec 2010 06:11:29 -0800 (PST)
In-Reply-To: <1293708069.17519.10063.camel@rex>
References: <4D1A8103.2030501@linux.intel.com>
	<AANLkTinj7sVzHzDX9b09H+BQy4HDUvs-5kt8gehhOiZ2@mail.gmail.com>
	<4D1A879E.6060702@linux.intel.com> <1293708069.17519.10063.camel@rex>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 30 Dec 2010 07:11:29 -0700
X-Google-Sender-Auth: WScTt56MxaiJFVZ6vC4w1opJxyM
Message-ID: <AANLkTikv=8nUngfb5we7U5xevQ55hD_iP9KMKW07d8QF@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Library paths for Makefile based recipes
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
X-List-Received-Date: Thu, 30 Dec 2010 14:11:51 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Dec 30, 2010 at 4:21 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Tue, 2010-12-28 at 16:58 -0800, Darren Hart wrote:
>> Turns out the project Makefile is doing this:
>>
>> CC = $(CROSS_COMPILE)gcc
>> AR = $(CROSS_COMPILE)ar
>>
>> Removing those lines from the Makefile allows the project to build.
>
> You could also set CROSS_COMPILE to the right value (TARGET_PREFIX?) and
> things should work. This looks very similar to how we cross compile the
> kernel.

I'm not familiar with this particular project, but unless it's bare
metal or nearly so like a kernel or bootloader, that's likely not a
good idea, since it won't end up obeying our TARGET_CC_ARCH.  An
alternative to setting CC/AR in EXTRA_OEMAKE or removing those lines
from the makefile would be to set them there, but using ?=.  This
would let the versions in the environment be used in preference to
those.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

