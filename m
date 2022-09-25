Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web12.19927.1664129709535508593
 for <poky@lists.yoctoproject.org>;
 Sun, 25 Sep 2022 11:15:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=XXbOA9P1;
 spf=pass (domain: bootlin.com, ip: 217.70.183.200, mailfrom: alexandre.belloni@bootlin.com)
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 78C2A20003;
	Sun, 25 Sep 2022 18:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1664129707;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=29lYXhZZVy/C8sCg0PHm0Mjh2Epv4E7X47X/Lg/9ICQ=;
	b=XXbOA9P12lVuQcJlZfTfd/ws0R00uQtzx9muOjA5i0eUQ7e3twqAPoCpGy5wzsS5ZI9dfe
	kSHjbqLR/WC41Rp0iavcLtTIZXBuMHcA2Lbpf3iiBU0/gTBJqeZFTX7iqOSHywxHW0v19x
	c/0nR6Xeg2Lj03YMegDbYSRyDQlnDnr/O2Wx5BxtMnuvDm8pJy5OpUv9/mcuAHi5h5KO5j
	qcGKOd/W+Sk7WrVWQA0PxyQo4w4ZHSShD86qz0BT9pXHAn/ojgTvK0Pa8EMMJerioVacId
	t+GYRp2iuI5IOl6u2o7fV9iQlyMrNmAaJpfjCergUfp86P3wCmp6X6ZiMmXlOw==
Date: Sun, 25 Sep 2022 20:15:06 +0200
From: "Alexandre Belloni" <alexandre.belloni@bootlin.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: poky@lists.yoctoproject.org, Alexander Kanavin <alex@linutronix.de>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Subject: Re: [poky] [PATCH] local.conf.sample: correct the location of public hashserv
Message-ID: <YzCaqtunI25C6eJC@mail.local>
References: <1714FEA7DD011F1F.28744@lists.yoctoproject.org>
 <CANNYZj8GM+JZVnr0hwEmuC6chc7M84r1z0snL97k6kFzxz8aXg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANNYZj8GM+JZVnr0hwEmuC6chc7M84r1z0snL97k6kFzxz8aXg@mail.gmail.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 25/09/2022 18:44:00+0200, Alexander Kanavin wrote:
> Has this patch reached you? I'm not sure why it's not appearing in
> test branches after several weeks.
> 

Your patch from the 7th of September was applied on the same day so this
one doesn't apply ;)

> Alex
> 
> On Thu, 15 Sept 2022 at 11:29, Alexander Kanavin via
> lists.yoctoproject.org <alex.kanavin=gmail.com@lists.yoctoproject.org>
> wrote:
> >
> > Signed-off-by: Alexander Kanavin <alex@linutronix.de>
> > ---
> >  meta-poky/conf/templates/default/local.conf.sample | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/meta-poky/conf/templates/default/local.conf.sample b/meta-poky/conf/templates/default/local.conf.sample
> > index b96dc908f4..7be423ffed 100644
> > --- a/meta-poky/conf/templates/default/local.conf.sample
> > +++ b/meta-poky/conf/templates/default/local.conf.sample
> > @@ -234,7 +234,7 @@ BB_DISKMON_DIRS ??= "\
> >  # which will depend on your network.
> >  # Note: For this to work you also need hash-equivalence passthrough to the matching server
> >  #
> > -#BB_HASHSERVE_UPSTREAM = "typhoon.yocto.io:8687"
> > +#BB_HASHSERVE_UPSTREAM = "hashserv.yocto.io:8687"
> >  #SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/all/PATH;downloadfilename=PATH"
> >
> >  #
> > --
> > 2.30.2
> >
> >
> > 
> >

> 
> 
> 


-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
