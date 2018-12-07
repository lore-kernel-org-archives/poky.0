Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F34DE00C4E; Fri,  7 Dec 2018 02:11:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f177.google.com (mail-it1-f177.google.com
	[209.85.166.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEC0BE00C12
	for <poky@yoctoproject.org>; Fri,  7 Dec 2018 02:10:59 -0800 (PST)
Received: by mail-it1-f177.google.com with SMTP id b5so6242988iti.2
	for <poky@yoctoproject.org>; Fri, 07 Dec 2018 02:10:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=CLnoKZ1TS27NoIdPvhzO42GIJtRswiiSCr+UT9b1zCo=;
	b=ciRan2QcFkDbgFsDUEeJBSlJt4fkoCEvBjY4xI/Kt1ujobLf3NsBc1YGg+4f2JZviK
	OWbmFqorMGIso6JKzw8RDaHrpM2gP1DBDwQqsOCnCwQw4nsCo0FI1+nrAGwV9LHKzu6o
	d5xeD+ESvBKBawsylO32quXj4ZNmRHjN/9fmSV6pvx0nhsZ+jBBbujMnPGUDZKXCEF4r
	oEtUc7VdHoMXtWwOyXWzkZQ4qJnEuVJo6lQ+2ngF4Ipzqr9DDH6vPdN2EttN/yuwMJGJ
	Nl6LcJtI7HD7WHsb/BHBDPixlFr+JGZXwJjKTtJSd1fePFie29/6ZWJeSetGNeo1gCUD
	QMMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=CLnoKZ1TS27NoIdPvhzO42GIJtRswiiSCr+UT9b1zCo=;
	b=QllXPgsvorlI0blYxSYvqb/XsCn0fKbJKCGKk7Dbw4uTGTxZ/tNy9IpVtxHxC9mBt7
	Vis9BkxffyHwL8J19QHITRq8N5JmUpnrbLJTcfMzb21xcfYLW0wi5aS1d5xAkJMbHSdr
	UZpiBVjF3Ag6iLKo0kl/G1q8SdzGntPpZzqjOLxJmUjwraX1nkwaaja3mUlWD5jpjzpK
	NdH//9BWCDhRpAuGg1+UzG0YTKA2MPvCfSQKUon0mL198Cj3Ub9A03XckKvey8zxLGNP
	MvdAxZDvtEs5bG1kdGViioj/df8BZopIpyaGmWfYorim7TTutXw3E3GG0wPHqyOxpLw4
	Luzw==
X-Gm-Message-State: AA+aEWadCmdcnuhA7Z75piGuiPr1s9SWD8Y/vl+OtP3YcMCKEcZBXs8p
	zLV+3OKKrJpymx+hYB93CKcFI9FC2bdLWofp0JPqzA==
X-Google-Smtp-Source: AFSGD/W0IfZinn3q1kkHD+4eFiy2pJIygU/mmZcxV+GWZeG5zec7xcDipVBxsU4qGeh4m81fi5BChvPsGCesQQ8iEoc=
X-Received: by 2002:a02:9c53:: with SMTP id h19mr1217633jal.31.1544177459348; 
	Fri, 07 Dec 2018 02:10:59 -0800 (PST)
MIME-Version: 1.0
References: <CADnUhn2TRDD8623A6SwPGP7RP4sc7uhSxNbTz6S0NDDqJwJtiw@mail.gmail.com>
In-Reply-To: <CADnUhn2TRDD8623A6SwPGP7RP4sc7uhSxNbTz6S0NDDqJwJtiw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 7 Dec 2018 10:10:47 +0000
Message-ID: <CAJTo0Laz6GYO0xzkKbnp=zBh7aKi+eRdu4Os0kEyYBBhSTDH7A@mail.gmail.com>
To: matti kaasinen <matti.kaasinen@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: nspr-4.16-r0 do_package: Function failed: split_and_strip_files
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
X-List-Received-Date: Fri, 07 Dec 2018 10:11:00 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, 7 Dec 2018 at 09:42, matti kaasinen <matti.kaasinen@gmail.com> wrote:
> My build stops while packaging nspr-4.16-r0 do_package while executing split_and_strip_files.
> I try now building Poky based image using docker container (crops/poky). I already had to add HOSTTOOLS_append = " svn " to get SRCREV = "${AUTOREV}" statement work that I did not need in direct PC installation.

You'll have to tell us what the actual error is if you want any help.

Ross

