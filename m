Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.402.1581540386121340287
 for <poky@lists.yoctoproject.org>;
 Wed, 12 Feb 2020 12:46:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=iEPvNR8m;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 140.211.169.56, mailfrom: jdmason@kudzu.us)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B0BEE0164D; Wed, 12 Feb 2020 12:46:25 -0800 (PST)
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
	*      [209.85.166.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1E4DE007D4
	for <poky@yoctoproject.org>; Wed, 12 Feb 2020 12:46:22 -0800 (PST)
Received: by mail-il1-f170.google.com with SMTP id x2so2957193ila.9
        for <poky@yoctoproject.org>; Wed, 12 Feb 2020 12:46:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CMX2BBtUfjlLXQQEMNn1AdBtMGuJPafwsCYgcV9ekBk=;
        b=iEPvNR8m0UZJWGA9O8ojb3UdJc35iAukFSyVdlJtokKoKvRHFZOS/3mLgVvT75vbVd
         5l5JbK/nF1ZKjOsEiHKOdjZG3Asc8HNcF+vKUup/hLj8KqyvhiMKijfv3Z3ANnHMbwoY
         8E6lJ4WN0tJRJk39rfmq90SPXmQECoJPRkDFbTgXdkFR8pSlA9t3MnrMjcLo1aq/Tsio
         DAMuKDhTrHfS1XKeacJOnkNG0+tQ3k3WHRhkX09kkILGszY75Wk2MaPf8xtIU1QDZZGX
         ei0b7+7M4DhE9sMtZNv8+vhzRsj9HJlvyqvAQJy7pI3YM3Dh92k5yXSnOCGdSgTJZ7Je
         kucg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CMX2BBtUfjlLXQQEMNn1AdBtMGuJPafwsCYgcV9ekBk=;
        b=RBhn/1DzNWRjgt/BA0tpb83p6BAzGFd+qlEwqWwTLHQSfNCXLIZQkqdVXQwRKPM29A
         Eo7ex1bIgIUFR2Qv1RBqV4SzKEveWZONaW8JNbJTurTBUb9WrMuOe+++geRQ6WQluTOK
         xa9jEmtGTXSKE6VCsAPtQH62aitqbuSlBt3gGwYbIhvqUvbf1ODODcDN9AtzXrxn8Oiv
         4sCBQJ5x+VJgyBBQRP53HYbpp+UOjCLd25fgxmWrq8WvX5VsLbTEqcyZajV0C6MZJ577
         JLitlIMJNFrkxpjQLtk9fiYd7fnp9GtOMrzZXvfy4WP+MZZASl7lcp2Dp+CBxRM0DV3q
         v6vQ==
X-Gm-Message-State: APjAAAVyCeIvnseo1/l1oKrff7w8FApguXoHJoJqSPTejCXLztIV5ups
	w8SV+vrA1iP4xikW2ef/S3z7aPCy+XzmLdU7WWhbcNkZJMQ=
X-Google-Smtp-Source: APXvYqwVKMfMfmjkF+Y87bR29514nLgejnWyjf1gMa8tKDuZNEOgvWL97pKTePyItuvWD/xMT+Rprl76aOrV5mLsJZM=
X-Received: by 2002:a05:6e02:e8b:: with SMTP id t11mr12003783ilj.159.1581540381983;
 Wed, 12 Feb 2020 12:46:21 -0800 (PST)
MIME-Version: 1.0
References: <CAPoiz9z_CX0A0vii6w8d+D+csgF3eoxweTF-gkvx58te+6hx5w@mail.gmail.com>
 <d8b27040725d248c5fc498131a08584ee5cc7785.camel@linuxfoundation.org> <20200211214956.GU4735@denix.org>
In-Reply-To: <20200211214956.GU4735@denix.org>
From: "Jon Mason" <jdmason@kudzu.us>
Date: Wed, 12 Feb 2020 15:46:11 -0500
Message-ID: <CAPoiz9x-wB91mwytobFx7L_bR_M9w6jXGifab02uHJ0i--kpiQ@mail.gmail.com>
Subject: Re: [poky] testimage gcc error
To: Denys Dmytriyenko <denis@denix.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, poky@yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Tue, Feb 11, 2020 at 4:49 PM Denys Dmytriyenko <denis@denix.org> wrote:
>
> On Tue, Feb 11, 2020 at 09:31:49PM +0000, Richard Purdie wrote:
> > On Tue, 2020-02-11 at 14:31 -0500, Jon Mason wrote:
> > > I'm seeing multiple "Command not found" errors when I run the
> > > testimage command on zeus with GCC added.  I'm sure others are
> > > testing
> > > this and not seeing an issue.  So, please let me know what I'm doing
> > > wrong.
> > >
> > > My only configuration was to add to local.conf (aside from SSTATE_DIR
> > > and DL_DIR) is:
> > > INHERIT += "testimage"
> > > IMAGE_INSTALL_append = " autoconf make gcc "
> >
> > If you put gcc-symlinks and maybe binutils-symlinks in there, does it
> > work better? Suggests we may have some gremlins in the packages used to
> > enable the tests if so...
>
> Maybe try IMAGE_INSTALL_append = " packagegroup-core-buildessential"

Adding
IMAGE_INSTALL_append = " packagegroup-core-buildessential coreutils"
corrected the problem.  "coreutils" was needed due to a missing
"install" command, which seems odd that it's not part of the
dependency tree.

However, I think there is a larger underlying problem here.  Either
the tests need to be smart enough to know when to run, or there needs
to be some dependencies for testimage to prevent this from happening.
Alternatively, better documentation somewhere on testimage and all the
tests and dependencies would save others from this problem.

Thanks,
Jon


> --
> Denys
