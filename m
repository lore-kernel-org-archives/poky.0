Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2FC9E00ADD; Sun, 20 Dec 2015 13:49:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C45F1E00825
	for <poky@yoctoproject.org>; Sun, 20 Dec 2015 13:49:24 -0800 (PST)
Received: by mail-ig0-f181.google.com with SMTP id to18so24556290igc.0
	for <poky@yoctoproject.org>; Sun, 20 Dec 2015 13:49:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=MGHjzY4vKqqkNl7tMbTdOvp6Qg1r+F39ntUAaolknwU=;
	b=I73E4WzZ1Y3z23LdOPmVR0nwQeI9SKaWiIgwrjHOrF7RwWpU8HmRQZJqhLPA0WNPva
	PuSvKhhXmRiG1tc8WfjfDL3ix2vWgdHp512HVMP4TBGzGVP3TdFAXVY/LevzDGremezF
	6h0wIxo/Bg7WvXEl5pb62w28FF1Euk+uyCstVrYKwtlzqS+nLNic8HFMAymwsllO+mO4
	SVjTMZ90m/QNOic+o3QuW40pKmzD6QUlbccPBcil/y3a4O+xJU7tvWt2UMcxxW4uAATk
	kMmaC9nveH6YnjaAsRegUqZtIUyvGSQ821UJ5EYBR+zlViHmvmoFy6pl4JKFv60+cgRk
	1ZZA==
X-Received: by 10.50.155.65 with SMTP id vu1mr15230235igb.11.1450648164194;
	Sun, 20 Dec 2015 13:49:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.16.74 with HTTP; Sun, 20 Dec 2015 13:48:54 -0800 (PST)
In-Reply-To: <CAA2DH4sBZQmca7x4rD8gWnqpuX8toj5iec5XADNUWP=wamvh1A@mail.gmail.com>
References: <CAA2DH4sBZQmca7x4rD8gWnqpuX8toj5iec5XADNUWP=wamvh1A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 20 Dec 2015 13:48:54 -0800
Message-ID: <CAMKF1srTgyObrUFSdjg-PDNxz2pj8RV6zZXf39VvNbB2hvuwZg@mail.gmail.com>
To: Prasant J <pj0585@gmail.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: SRC_URI: password protected ftp access
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
X-List-Received-Date: Sun, 20 Dec 2015 21:49:29 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Dec 20, 2015 at 7:57 AM, Prasant J <pj0585@gmail.com> wrote:
> Hi,
>
>
> I'm writing a bitbake recipe that will download the source tarball from a
> ftp/http server that is password protected. How can I avoid putting the
> username & password in the bitbake file? (the recipe will be version
> controlled and the username & password will not be secure anymore)
>
>
> Is there a way to put the username & password in the build/conf/local.conf??
> or any other alternatives?

You can use ~/.netrc do man netrc for how to configure it.

>
>
> Any inputs will be of help to me.
>
>
> Regards, PJ
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

