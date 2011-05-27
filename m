Return-Path: <kergoth@gmail.com>
Received: from mail-vx0-f171.google.com (mail-vx0-f171.google.com
	[209.85.220.171])
	by mx1.pokylinux.org (Postfix) with ESMTP id C06724C800C1
	for <poky@pokylinux.org>; Fri, 27 May 2011 15:23:23 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vxc40 with SMTP id 40so2214436vxc.2
	for <poky@pokylinux.org>; Fri, 27 May 2011 13:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:from
	:date:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=77+/WHvX1w8Pv3+cIWxJGx/SMknjEF44K4qIx5L2FpI=;
	b=obm6dVMr6089dXYnsQoJR13Jcin5i6PWjHddtBcrth8Sti2YIv7aXGDXhScw1owoY4
	0yfDJgxWXw4SmrKd1gneJlv7EORC8VM6kejjkLhnucm3ftBIVTU/tJlSk174SuAJ8Csf
	5DBYKzlL5F65G1di/FbELT9M7OeSr+O7LlCfo=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	b=fdLLz7T1JHT9NqUUpRnHiwfEc9RcEUPZNqjf1tH5DmeP5buRsuAORbSJ+9dzMXDXbb
	v8Zr7fg5fZl3KiCu+14H1D/laoao+Zis2rDy8ogaARtvkyN6WbXjAxEjZ+LIU1NcLx10
	j+tiqEUgQwp8qUzY2LJJsdsu+r1g8PaRIqy0A=
Received: by 10.52.183.164 with SMTP id en4mr3677503vdc.108.1306527803074;
	Fri, 27 May 2011 13:23:23 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.52.109.202 with HTTP; Fri, 27 May 2011 13:23:03 -0700 (PDT)
In-Reply-To: <4DE0074A.8050404@linux.intel.com>
References: <loom.20110527T192603-897@post.gmane.org>
	<4DE0002B.2000206@linux.intel.com>
	<BANLkTi=rJ049XGM5DQGjKtf7QKEAjh0Nqw@mail.gmail.com>
	<4DE0074A.8050404@linux.intel.com>
From: Chris Larson <clarson@kergoth.com>
Date: Fri, 27 May 2011 13:23:03 -0700
X-Google-Sender-Auth: 93efz0EQoI_H6tpVJzUwhbC7VL8
Message-ID: <BANLkTik6fMvdJ_E4OVt8K9JFq3DsWiFeYA@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: Holger Freyther <holger@freyther.de>, poky@pokylinux.org
Subject: Re: Impressions of using Poky to create a BSP
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
X-List-Received-Date: Fri, 27 May 2011 20:23:24 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, May 27, 2011 at 1:19 PM, Darren Hart <dvhart@linux.intel.com> wrote:
>> This is backwards. The url scheme determines the fetcher to use, the
>> protocol= determines the method that fetcher uses to obtain the
>> sources. Holger had it correct. git:// to associate with the git
>> fetcher, protocol= to ensure it uses ssh.
>
> Doh, thanks for correcting. That explains some things for me. I had
> thought a real git url was appropriate here, good to know!

It's not the first time I've heard it the other way around. Could be
the other way is more intuitive, don't really know.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

