Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAD19E0044A
	for <poky@yoctoproject.org>; Tue,  6 Mar 2012 13:51:24 -0800 (PST)
Received: by lagu2 with SMTP id u2so8659867lag.35
	for <poky@yoctoproject.org>; Tue, 06 Mar 2012 13:51:23 -0800 (PST)
Received-SPF: pass (google.com: domain of raj.khem@gmail.com designates
	10.152.132.132 as permitted sender) client-ip=10.152.132.132; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of raj.khem@gmail.com
	designates 10.152.132.132 as permitted sender)
	smtp.mail=raj.khem@gmail.com;
	dkim=pass header.i=raj.khem@gmail.com
Received: from mr.google.com ([10.152.132.132])
	by 10.152.132.132 with SMTP id ou4mr16899082lab.26.1331070683570
	(num_hops = 1); Tue, 06 Mar 2012 13:51:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=urr4/JHb/8AqePMo+R4bc+u+R2onnoIMURxvoYw3BxA=;
	b=WBTnr2SMt/HlP+DJMNCVtL0zVyGPNo8QF+R8IFPu9B/6YZl61bEXsAGVXwZCLPee4K
	s3vb090ZPJSbfR+mn6MsS9tOgPTpBgtVonpFRESKLKADnf+euy4w3eqlzi0hzEQq2AWR
	24HEdtuAAlhNuldL+xR3DQ6qthvqYWd9MVMskf+IcfUgyv/FhItdCfWOXRBmQ2cjZQTa
	kwJW4r67lJCqESrLyLh2wN0XaSgJ8ue7srIlL8jb2njJC7tirKViGYZUkXUwgfFOQtxy
	QcHkTY8/Qh+hJ4xMlW2CzKPSOSTYYvNOUj3GoHyD5eN1gfekbLwyG1caeQYVaeZj6m5z
	IWHA==
Received: by 10.152.132.132 with SMTP id ou4mr13880676lab.26.1331070683503;
	Tue, 06 Mar 2012 13:51:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.27.109 with HTTP; Tue, 6 Mar 2012 13:50:53 -0800 (PST)
In-Reply-To: <CANdftmOpsM6=3YMwdM+bwBD4088H0px1a7qb6E7tQ+PDXPcczw@mail.gmail.com>
References: <4F5643EB.70909@mlbassoc.com> <4F564BBE.6030404@mlbassoc.com>
	<3919600.C6p42ZJ0so@helios>
	<CANdftmOpsM6=3YMwdM+bwBD4088H0px1a7qb6E7tQ+PDXPcczw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 6 Mar 2012 13:50:53 -0800
Message-ID: <CAMKF1spwydy3WM7pQtD+XPfiSLWoAdNEQE2jupqKYZ=HbpiOog@mail.gmail.com>
To: Foinel <flocirel@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: How can a package I didn't ask for get included in my image?
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
X-List-Received-Date: Tue, 06 Mar 2012 21:51:25 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 6, 2012 at 12:15 PM, Foinel <flocirel@gmail.com> wrote:
> How do you enable buildhistory?

add
INHERIT += "buildhistory"
to your local.conf

> Thanks

