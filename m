Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46D86E00C4E; Sun, 27 Jan 2019 08:34:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
	[209.85.160.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE159E00B5C
	for <poky@yoctoproject.org>; Sun, 27 Jan 2019 08:34:48 -0800 (PST)
Received: by mail-qt1-f194.google.com with SMTP id t33so15870689qtt.4
	for <poky@yoctoproject.org>; Sun, 27 Jan 2019 08:34:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=2XPB9/NhQWffjI5rY0DhPYRhuH0m/xKxr6lIZ5sBfGw=;
	b=YWICniF83+zD6Xn5KxWwKVkAYHVHst8jQvIdO/MPF3dUpO0zWNuuz+AOUzj+5y9/WD
	OXlNDMOsPLRzMwUjM7nU9/TRO5W+nlOzh4WvENqzuR+Ry6kmbWW84mOatP9hMwErqs0M
	x7Sx0HgaPbRXypL8Kdb0pAbrT4HR/V0rldATKzDduOz5mBbV3xlgkZSiNyZvHlRioHnt
	mEFGBPYC+67etF4B5KkVVgLxeGN4AqvHa8HaGqPo3lduHBZIFICueBdYCNPVivguJm4b
	hP8kxGpx/QFJZ0r7euKQIAKK6Eaf9C01ZKfX/q4fNj5EBmsQQ8nlxFYlTPg1GHbZ1RPV
	iwCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=2XPB9/NhQWffjI5rY0DhPYRhuH0m/xKxr6lIZ5sBfGw=;
	b=G481xrbo6tP8qn/VNbxzu7yIGuoOtWcBTKWHhsE7Vy1iymUQtPf8uK4PbtlmNPx/2W
	XV5wuhic1Z2UD5sCCnhmNWavoZUlQx151S6BAPuOnZF+lFyg/6Nf8saEzXHbi69lrV9k
	J21fIorctnFaYXWwUJIW5GK45ZVGH38nlN/hZxnd8Hn5NUXEkX8V7W+CrfDlDa0A+wl7
	jBg/co482I8/4vjCMdz1RF7tgiiP9xCwW8K5ETEvWeA2NKr8G5e0sjSMUX4ANfbzlGEH
	L3oqvBct8iUYrmZVdesgP8JaMep0nYLbuZSKOODJfIfcJk68DFXQC92AXEFdZ8objRkk
	wGqg==
X-Gm-Message-State: AJcUukcMs1moLwOWT0qRK1zugIOmpDIJxzvCywRYAHWQxCLstWUwEuXk
	rPNysHIeHKudcuWpqQHPEtUaSFcvPOJMzSbhBA0=
X-Google-Smtp-Source: ALg8bN4zj2T7VZjkR7F/vd0iShIFSphYLTrl8kDCmO1kcPFIJ7duDRiZ8XYbUej9Puawj6P0MVjaTxGcV38pWh8RpTU=
X-Received: by 2002:aed:3eac:: with SMTP id n41mr18379276qtf.196.1548606887969;
	Sun, 27 Jan 2019 08:34:47 -0800 (PST)
MIME-Version: 1.0
References: <4b42693.320.1688bd5449f.Coremail.zzs213@126.com>
	<CAMKF1sod+k=UWA35pNbJwTQCJW8mFj0ORqS44OSytwsnDrbv_w@mail.gmail.com>
	<18570e6d.3060.16890286bca.Coremail.zzs213@126.com>
In-Reply-To: <18570e6d.3060.16890286bca.Coremail.zzs213@126.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 27 Jan 2019 08:34:22 -0800
Message-ID: <CAMKF1spO-zVL62QUHKv=4k5O572QhWmg-S4SNeStwLwcKvU0iA@mail.gmail.com>
To: zzs <zzs213@126.com>
Cc: poky <poky@yoctoproject.org>
Subject: Re: howto select the version of meta-openembedded
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
X-List-Received-Date: Sun, 27 Jan 2019 16:34:49 -0000
Content-Type: text/plain; charset="UTF-8"

On Sun, Jan 27, 2019 at 8:33 AM zzs <zzs213@126.com> wrote:
>
> At 2019-01-27 04:59:05, "Khem Raj" <raj.khem@gmail.com> wrote:
> >On Sat, Jan 26, 2019 at 12:55 PM zzs <zzs213@126.com> wrote:
> >>
> >>
> >> I wan't to use poky at version yocto-2.6. which version of
> >> meta-openembedded.git should be the best matched version?
> >
> >2.6 = thud branch in git so use thud branch
> >
> >for version to codename mapping see
> >https://wiki.yoctoproject.org/wiki/Releases
> >
> But in meta-openembedded.git there was no tag, only a branch "thud" ,
> So which exact commit should be used? Any commit on "thud" branch
> is OK?

Yes tip of the branch is ok.

