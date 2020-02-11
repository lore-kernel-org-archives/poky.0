Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.16954.1581456714635354828
 for <poky@lists.yoctoproject.org>;
 Tue, 11 Feb 2020 13:31:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=KmOfplmg;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3474DE016D8; Tue, 11 Feb 2020 13:31:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3F92E016D6
	for <poky@yoctoproject.org>; Tue, 11 Feb 2020 13:31:52 -0800 (PST)
Received: by mail-wr1-f44.google.com with SMTP id w12so14421025wrt.2
        for <poky@yoctoproject.org>; Tue, 11 Feb 2020 13:31:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=FEC/6wjEmgIXDD1kfNfnuytHSKJV22ncgTG5S0Iflds=;
        b=KmOfplmg3ViazXiYnLx2z5/ptBBUQXFUSdrqLWlN0UafX5jhUbqbpCDNB3e8W4cYxy
         BBgkbq787a6b8nEDep5TVvP+VQWuaKhVJo7/VQ4+SIcHbmC/zoV8Jio3Ycq08cgjOZcm
         +YjFFW5dehSwexAaxeS/G7E7DV1VTylEv4bRk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=FEC/6wjEmgIXDD1kfNfnuytHSKJV22ncgTG5S0Iflds=;
        b=A+OTmRL1+IXOw85pQETtfHrYbvtAwHwJU6KnvJBM/cJHD96eIBkjM9Cw56ssMJvRbI
         cnHJsGsBtEqed4/iVXnf9j2kYbA0dVFy4PAyS12BsPK7R8LML5QB+xMSUEia7mSWArrL
         EqWLbxxUMw/RL2Ckw+JBNzqsMzfZBnRsOwe4MmTUeY5h3SkDWxbQblDBMIBP9IPR/6nU
         OMxTHos7AstTaTfHZY1LNOyglG6YBfAds3eWcmZIAoqtWuLxsVFibq3PpUwUeDteF27a
         BgXnakjl/rvLvad2qRKKUtwQyZwNjVcg/lBXiWr6NP2pZ6vjRbTUV2CoranOThToxj2B
         vUXw==
X-Gm-Message-State: APjAAAXAePx+onARygT/0hwZsSaIA9q6is3AujpkqAonrT2zZcSDzwZI
	NmQmCnnrRgpAC3RB8/oAJwub1w==
X-Google-Smtp-Source: APXvYqzUsT0tkBDPac8o/u9tVERUTkRJufLBNlpxP3Hkg7IjddNJpxUSVPQlbpK+0/N9h8Vsiak1Wg==
X-Received: by 2002:adf:e382:: with SMTP id e2mr11296476wrm.128.1581456711712;
        Tue, 11 Feb 2020 13:31:51 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id z6sm6791481wrw.36.2020.02.11.13.31.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Feb 2020 13:31:51 -0800 (PST)
Message-ID: <d8b27040725d248c5fc498131a08584ee5cc7785.camel@linuxfoundation.org>
Subject: Re: [poky] testimage gcc error
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Jon Mason <jdmason@kudzu.us>, poky@yoctoproject.org
Date: Tue, 11 Feb 2020 21:31:49 +0000
In-Reply-To: <CAPoiz9z_CX0A0vii6w8d+D+csgF3eoxweTF-gkvx58te+6hx5w@mail.gmail.com>
References: 
	<CAPoiz9z_CX0A0vii6w8d+D+csgF3eoxweTF-gkvx58te+6hx5w@mail.gmail.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2020-02-11 at 14:31 -0500, Jon Mason wrote:
> I'm seeing multiple "Command not found" errors when I run the
> testimage command on zeus with GCC added.  I'm sure others are
> testing
> this and not seeing an issue.  So, please let me know what I'm doing
> wrong.
> 
> My only configuration was to add to local.conf (aside from SSTATE_DIR
> and DL_DIR) is:
> INHERIT += "testimage"
> IMAGE_INSTALL_append = " autoconf make gcc "

If you put gcc-symlinks and maybe binutils-symlinks in there, does it
work better? Suggests we may have some gremlins in the packages used to
enable the tests if so...

Cheers,

Richard

