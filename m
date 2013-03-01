Return-Path: <twoerner@gmail.com>
Received: from mail-we0-f171.google.com (mail-we0-f171.google.com
	[74.125.82.171]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 869A3E0129D
	for <poky@yoctoproject.org>; Fri,  1 Mar 2013 11:43:22 -0800 (PST)
Received: by mail-we0-f171.google.com with SMTP id u54so2888072wey.16
	for <poky@yoctoproject.org>; Fri, 01 Mar 2013 11:43:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=VfIhLeImCzFKtkdgelrdmVAz8Tdhxg0WRIztydWyISE=;
	b=SS7jJQBHweinQlEfdlDEeRQlYJH6ZI63oIsSglncHW28tJibokTw3ufDjg7U2IvT2Q
	PXx2uhy2ockwG/70KDy2hfIlsnX58q6Orx+gShVZL7y+M+pu8OHQaNcSffX02PlmFrcD
	eFMX6HRo0jSpzvJuxIeOA9z7BblnTIk+Iy/rHugCAF2dMHFmCl7HM6P7x37Y4T6VdI+I
	mPtYo7vFi2O1IgpcOvqqztuLf2ylxHNGrjsRE1u6rlXtSCZ5qrO3KZdK/RUd8IOXaqL9
	h9MoN7GTlkvi/mawctvJO/t/R98Ot/J1wK/0BE8Th+rxUs4Lb9zAnwjZN3bwRc+1yLY8
	uhUg==
MIME-Version: 1.0
X-Received: by 10.180.77.9 with SMTP id o9mr41744637wiw.16.1362167000531; Fri,
	01 Mar 2013 11:43:20 -0800 (PST)
Received: by 10.194.45.100 with HTTP; Fri, 1 Mar 2013 11:43:20 -0800 (PST)
In-Reply-To: <20130301191053.GR3279@jama>
References: <1362135473-20635-1-git-send-email-Martin.Jansa@gmail.com>
	<1362154793-10296-1-git-send-email-Martin.Jansa@gmail.com>
	<CAHUNapTo8kOO+k9aFOnDCyc6LgMtx+tRzm=hJW4q_5rjL+Nd0Q@mail.gmail.com>
	<20130301173817.GP3279@jama>
	<CAHUNapTJVB_Opb1pBpMEpWTc8S9gZBz1S+iAJAyg9ybEwao=hQ@mail.gmail.com>
	<20130301191053.GR3279@jama>
Date: Fri, 1 Mar 2013 14:43:20 -0500
Message-ID: <CAHUNapTnV7mCppOBC=-JuXp-7Tc6KquyN2=KJWRh0rPOPY1WaA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@yoctoproject.org
Subject: Re: [PATCHv2] poky.conf: update SANITY_TESTED_DISTROS
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 01 Mar 2013 19:43:22 -0000
Content-Type: text/plain; charset=ISO-8859-1

As Richard points out, this doesn't apply cleanly to master's HEAD.

When I test with the following:


SANITY_TESTED_DISTROS ?= " \
            Yocto-1.2 \n \
            Poky-1.2 \n \
            Poky-1.3 \n \
            Ubuntu-10.04 \n \
            Ubuntu-11.10 \n \
            Ubuntu-12.04 \n \
            Ubuntu-12.10 \n \
            Fedora-16 \n \
            Fedora-17 \n \
            Fedora-18 \n \
            CentOS-5.6 \n \
            CentOS-5.7 \n \
            CentOS-5.8 \n \
            CentOS-6.3 \n \
            Debian-6.0 \n \
            Debian-7.0 \n \
            SUSE-LINUX-11.4 \n \
            SUSE-LINUX-12.1 \n \
            SUSE-LINUX-12.2 \n \

It fails.

If I take the master HEAD (8264863ea0674f6cb105f5f7301861408fdc409b)
and modify poky.conf as follows:

SANITY_TESTED_DISTROS ?= " \
            Yocto-1.2 \n \
            Poky-1.2 \n \
            Poky-1.3 \n \
            Ubuntu-10.04 \n \
            Ubuntu-11.10 \n \
            Ubuntu-12.04 \n \
            Ubuntu-12.10 \n \
            Fedora-16 \n \
            Fedora-17 \n \
            Fedora-18 \n \
            CentOS-5.6 \n \
            CentOS-5.7 \n \
            CentOS-5.8 \n \
            CentOS-6.3 \n \
            Debian-6.0 \n \
            Debian-7.0 \n \
            SUSE-LINUX-11.4 \n \
            SUSE-LINUX-12.1 \n \
            SUSE-LINUX-12.2 \n \
            openSUSE 12.2 \n \
            "

It succeeds.

Do I have to clean out all or any part of my sstate-cache for this
test? Sorry if I'm messing up on my end.

