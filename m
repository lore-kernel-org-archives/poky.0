Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B763C44536
	for <webhook@archiver.kernel.org>; Wed, 22 Jul 2026 21:59:51 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.11368.1784757581517632644
 for <poky@lists.yoctoproject.org>;
 Wed, 22 Jul 2026 14:59:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=P34MHc2h;
 spf=pass (domain: gmail.com, ip: 209.85.160.169, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-51bfa429aa6so55125081cf.0
        for <poky@lists.yoctoproject.org>; Wed, 22 Jul 2026 14:59:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784757580; x=1785362380; darn=lists.yoctoproject.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=1nK4OPgGaSMO6gs//oTuRQOLQPclORDJ2uYTE12vR7U=;
        b=P34MHc2hUp5T57ACSWaG/azhZK4CEksKSM42e91+WRnwhvHmEBx9P8z3d/N7NAspKd
         L4UB0+q5SPmfrphjNx5s4CThIYzSLefbVD95i7hsd4DFYjx2oe+LVYgvus9k257kv1l6
         /mIjjzZVyVYBpfiNt6KUiRFHgqlabHVoVdWkNAkog8KIFmDaOau7/9ta5mnixOTJMhzC
         i8vXpylNGZ8RYB76piA7Jj1N9zx5nh5Ua+fHXWuhFYoIdM9Eg4suP0M6lqYxr2JrhHOm
         rhokk1RA72nCscFUhD0g9/czuQMOuGjcKFX1Y51GPo/E6k/x4aqa6ZDHa39bf7V9J7Yq
         P7ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784757580; x=1785362380;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=1nK4OPgGaSMO6gs//oTuRQOLQPclORDJ2uYTE12vR7U=;
        b=VFFd3EpeNKIbrdAPMojM/a184fZR/4rK/nkaq2UxUsp9klWV4ro7mOPPHujgQm+cpT
         5eTC6gq5xvv2Dtz9tbfUF3EByhRk2+0rYvyOJHkXBa3ttxyRPop7ghpN29GjlT9mWLqh
         8Ss/+6RXNMynnXsuJxF+U8zzudMVO3YW9FvqX9UU+12gtwy+eDb0DGVplIdrxwjLxJyi
         CvApWVIEyKRLZ57UKl9qSeSgLutw4HKHDsFZtKs7WgYoxOaTAOfwAQGqepIs6D5OA5TN
         I08idOq5EV3fH1RfJT6i2DVwMEd2NwqLmFqpF6i3zsPqEKS4aoCVBXf1b+C7yB04XuKj
         EMqA==
X-Gm-Message-State: AOJu0Yz2EMuM3qSYkArfjZGT7OSi4BonSIqrfKpysvZYnsRYQrsupUph
	jm/arhS2a/DDKR6glKWc5pS/upX94YPazUbkNRg7jpuqF7vQhUn8YIpr
X-Gm-Gg: AR+sD11temN9IeFSluHAwc3Lkd1WdoAkLNsxMb5MhMIWwM0V3NZC3pO4CK9jrIiaeXZ
	uNfylhFtt2+yf/9ef0DMAeexvnvHilFZERD/+xbjEwv4Xdm8lMQRZUzx8/IbMpkkCttGWQbcBZG
	IPT0mqVqz5t4XRr43W93ChZ+P6DZ2FnNuWkz50DfOJ454OfafKl9Ol2Lq9VtqMFu3a1/CG6XEpq
	zPAK3LZ6ZRt24+dDZ8Gmc/j1vJp7u/82ticKzbI+RYFb/UFNNjXg9rUMaNjvp7cIjnAqqZqZ1UM
	4MI7TqIJ+qX59oUKRpIsPiOM/hxVeys6j6LS4rIG8992Nsq1nleJmQWl2OYPD9UeTEEkwNrcyjB
	lCjxHUcOP8LJ8vnStlkuIowejJhv3C8Tjlrud5w/vudegmytSO4hadeoa0bj9K8f9HfqoO7WoUO
	dgEZVgzm+4SkUk2uJUwkplFyg429yud8qmFFldT7xQgDzl8rbPQk6zRVk=
X-Received: by 2002:a05:6214:8081:b0:8ef:74ad:e62b with SMTP id 6a1803df08f44-907ccfa982cmr771386d6.7.1784757580329;
        Wed, 22 Jul 2026 14:59:40 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-907ba8b5f6esm30330736d6.5.2026.07.22.14.59.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 14:59:39 -0700 (PDT)
Date: Wed, 22 Jul 2026 17:59:37 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: poky@lists.yoctoproject.org, yoann.congal@smile.fr
Subject: Re: [poky] [PATCH][wrynose] poky.conf: Add newly sanity tested
 distros
Message-ID: <amE9SekdPixbrgsa@localhost.localdomain>
References: <20260717155726.3527567-1-twoerner@gmail.com>
 <CADkTA4Or7ou3nL+FhGXiQFh7SacG7d07K01E_AMc0uWfHPaHuA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CADkTA4Or7ou3nL+FhGXiQFh7SacG7d07K01E_AMc0uWfHPaHuA@mail.gmail.com>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 22 Jul 2026 21:59:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13947

On Mon 2026-07-20 @ 09:40:11 AM, Bruce Ashfield wrote:
> On Fri, Jul 17, 2026 at 11:57 AM Trevor Woerner via
> lists.yoctoproject.org <twoerner=gmail.com@lists.yoctoproject.org>
> wrote:
> >
> > Fedora 44 and Alma 10 workers were added to the autobuilder, and the
> > Alma 8 and 9 workers were updated. Add fedora-44, almalinux-8.10,
> > almalinux-9.8 and almalinux-10.2 to SANITY_TESTED_DISTROS.
> >
> > AI-Generated: codex/claude-opus 4.8 (xhigh)
> 
> I couldn't resist commenting.
> 
> You really used claude to add 4 strings to a conf file ?

many bothans[1] died to bring us this information

> Bruce
> 
> > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> > ---
> >  meta-poky/conf/distro/poky.conf | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
> > index 90f6e5f03ea7..8b2bc0fede45 100644
> > --- a/meta-poky/conf/distro/poky.conf
> > +++ b/meta-poky/conf/distro/poky.conf
> > @@ -39,6 +39,7 @@ SANITY_TESTED_DISTROS ?= " \
> >              ubuntu-26.04 \n \
> >              fedora-42 \n \
> >              fedora-43 \n \
> > +            fedora-44 \n \
> >              centos-9 \n \
> >              centos-10 \n \
> >              debian-11 \n \
> > @@ -48,6 +49,9 @@ SANITY_TESTED_DISTROS ?= " \
> >              opensuseleap-16.0 \n \
> >              almalinux-8.8 \n \
> >              almalinux-9.2 \n \
> > +            almalinux-8.10 \n \
> > +            almalinux-9.8 \n \
> > +            almalinux-10.2 \n \
> >              rocky-8 \n \
> >              rocky-9 \n \
> >              "
> > --
> > 2.50.0.173.g8b6f19ccfc3a
> >
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#13942): https://lists.yoctoproject.org/g/poky/message/13942
> > Mute This Topic: https://lists.yoctoproject.org/mt/120317716/1050810
> > Group Owner: poky+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [bruce.ashfield@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >
> 
> 
> -- 
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II

[1] rhymes with "tokens"

