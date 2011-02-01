Return-Path: <kergoth@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 618A94C8008C
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 09:12:18 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwb31 with SMTP id 31so7392129wwb.11
	for <poky@yoctoproject.org>; Tue, 01 Feb 2011 07:12:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:from
	:date:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=8bd3PVsruyYSTwYszYWJV2RCmnvVxIvtch5mxoIKe+g=;
	b=WkWtDwQ6UYi32+DfBHooQtm6IH0FMJQZdPLDm9qQq1XBE9FyKgdgtrmfZzuDtvbilA
	DU2IBBLoLV1fQRCjxH/GPzFWJWNZDtyJox6ijk+asbpi5zmuBEz+OKicqxj2ndECIHu1
	4xgcbvZVPuAyUTBL0/RfF02U4dzt79+TJwxAA=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	b=NcV/eCxsNRhrh5GdLYdr6zw2cs6kzJ//jHPov+JIbfvwiSMGzXyBWW1Grud8P/Cmym
	Mlz6haQxsjtjU3kPL108qye3LtMxUHmJ/50go8cqJ1AMOZN6/Rnlo/uipwkIhiixUo4z
	LCCi2QhaL5MEyWlTL7gAmfPb9xOPWDSG+uKY4=
Received: by 10.216.59.193 with SMTP id s43mr757425wec.42.1296573137542; Tue,
	01 Feb 2011 07:12:17 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.216.254.91 with HTTP; Tue, 1 Feb 2011 07:11:57 -0800 (PST)
In-Reply-To: <1296571209.13501.19436.camel@rex>
References: <1296571209.13501.19436.camel@rex>
From: Chris Larson <clarson@kergoth.com>
Date: Tue, 1 Feb 2011 08:11:57 -0700
X-Google-Sender-Auth: ZXkpXncD2L81-5l34nTmSOil2iI
Message-ID: <AANLkTikCwHTBWqO-x+x8Jfhn+4qrzV+2V458Nv1xkiRd@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky <poky@yoctoproject.org>
Subject: Re: More profiling of do_package data for the kernel
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
X-List-Received-Date: Tue, 01 Feb 2011 15:12:18 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 1, 2011 at 7:40 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> so calling the shell's tar is definitely more efficient!
>

It is, and I think that's true for most, if not all of the archival
python modules, unfortunately.  I did a prototype of do_unpack using
them once, it was not a pretty picture ;)  Easily doubled the overall
unpack times in a build.  I wonder if a version done as a C/cython
extension would be much better, and if such a thing already exists..
hmm...
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

