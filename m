Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AF2FE0070C
	for <poky@yoctoproject.org>; Tue, 26 Jun 2012 10:44:03 -0700 (PDT)
Received: by eekb45 with SMTP id b45so110827eek.35
	for <poky@yoctoproject.org>; Tue, 26 Jun 2012 10:44:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=TY7OCuW7qyEkz4wYUpVzckcT7WPd7ngf5C0nE7foeDw=;
	b=pLP0+ndezwmzfM8SQWs740l5GykXQHC5H79shBsICPhGNLhvAfEW5ld1WfaVE0RSMZ
	hUooPGSED54hUCtIShFi9i7nXWCm22HQvXF161wtVSGIdsZ0jdwYDQKa7p7YqJwMuA6M
	effR+AoMDIhTKNWwl5Y5L6y4E6Hgj3bBPNy4JANQjw8HuP4L1DRne6rsfKanayxoSZhC
	pozkyc4mq1NYsjGIdpbM4nz4V5816DOAVpxh8M3cHGEyE+CkVu6EdCylgPhKCVvNplLG
	cDccYk+fj5fJC0PokJIYdymxZrpofMGafX6GWQOMbhx/srW7QMPvuql9PH10F0qkGw+1
	QPqQ==
Received: by 10.14.37.132 with SMTP id y4mr3131735eea.142.1340732642380; Tue,
	26 Jun 2012 10:44:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.219.71 with HTTP; Tue, 26 Jun 2012 10:43:32 -0700 (PDT)
In-Reply-To: <009701cd53c0$9d41e4e0$d7c5aea0$@com>
References: <009701cd53c0$9d41e4e0$d7c5aea0$@com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 26 Jun 2012 10:43:32 -0700
Message-ID: <CAMKF1sr327zYUxe+-=cXTosX2CSAMXm3zQh5yeORBdRyM=UKWA@mail.gmail.com>
To: Paul Demetrotion <pdemetrotion@winsystems.com>
Cc: poky@yoctoproject.org
Subject: Re: Linux Build Help Needed
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
X-List-Received-Date: Tue, 26 Jun 2012 17:44:03 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jun 26, 2012 at 10:25 AM, Paul Demetrotion
<pdemetrotion@winsystems.com> wrote:
> WARNING: Host distribution "Ubuntu 12.04 LTS" has not been validated with
> this version of the build system; you may possibly experience unexpected
> failures. It is recommended that you use a tested distribution.

keep above in mind. so you are using meta-oe. are you using denzil
branch of meta-openembedded repo as well or master ? you might want to
stick with denzil branch for meta-openembedded as well.

This commit is of interest do you have it or not.

commit b84f1a473856e8560761e1e3f045f805a7fe9362
Author: Saul Wold <sgw@linux.intel.com>
Date:   Tue Jun 19 08:36:19 2012 +0000

    rfkill: use update-alternatives

    * Since oe-core added rfkill to busybox, this recipe needs to use u-a
      also.
    * MJ: added ALERNATIVE_LINK_NAME[rfkill]
    * MJ: increased ALTERNATIVE_PRIORITY (busybox also have 50)

    Signed-off-by: Saul Wold <sgw@linux.intel.com>
    Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
    Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>

