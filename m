Return-Path: <olof.johansson@axis.com>
Received: from ra.se.axis.com (ra.se.axis.com [195.60.68.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D3C7E0053A
	for <poky@yoctoproject.org>; Mon, 10 Feb 2014 08:19:40 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by ra.se.axis.com (Postfix) with ESMTP id 091503F20E6;
	Mon, 10 Feb 2014 17:19:38 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at ra.se.axis.com
Received: from ra.se.axis.com ([127.0.0.1])
	by localhost (ra.se.axis.com [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Od8Zh2O4UeyT; Mon, 10 Feb 2014 17:19:37 +0100 (CET)
Received: from boulder.se.axis.com (boulder.se.axis.com [10.0.2.104])
	by ra.se.axis.com (Postfix) with ESMTP id 454983F20E4;
	Mon, 10 Feb 2014 17:19:37 +0100 (CET)
Received: from boulder.se.axis.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 2DFA09B2;
	Mon, 10 Feb 2014 17:19:37 +0100 (CET)
Received: from seth.se.axis.com (seth.se.axis.com [10.0.2.172])
	by boulder.se.axis.com (Postfix) with ESMTP id 22AEB91B;
	Mon, 10 Feb 2014 17:19:37 +0100 (CET)
Received: from xmail2.se.axis.com (xmail2.se.axis.com [10.0.5.74])
	by seth.se.axis.com (Postfix) with ESMTP id 203073E048;
	Mon, 10 Feb 2014 17:19:37 +0100 (CET)
Received: from axis.com (10.92.17.1) by xmail2.se.axis.com (10.0.5.74) with
	Microsoft SMTP Server (TLS) id 8.2.255.0;
	Mon, 10 Feb 2014 17:19:36 +0100
Date: Mon, 10 Feb 2014 17:19:35 +0100
From: Olof Johansson <olof.johansson@axis.com>
To: Laszlo Papp <lpapp@kde.org>
Message-ID: <20140210161935.GP23583@axis.com>
References: <1392025053-22406-1-git-send-email-olof.johansson@axis.com>
	<20140210094605.GI23583@axis.com> <20140210095533.GB3194@piout.net>
	<20140210145748.GM23583@axis.com>
	<CAOMwXhOKYK=yxvrEE7q7KY3jC5Ec6ZEc2g29s0HuVAvorU0gBg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOMwXhOKYK=yxvrEE7q7KY3jC5Ec6ZEc2g29s0HuVAvorU0gBg@mail.gmail.com>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] poky.conf: Add Debian-7.4 to SANITY_TESTED_DISTROS
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
X-List-Received-Date: Mon, 10 Feb 2014 16:19:42 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

On 14-02-10 16:07 +0100, Laszlo Papp wrote:
> How is a software distribution supported if untested?

I've made my argument that Debian 7.* is tested. I welcome input
and opinions as long as we don't get caught in futile discussions
on semantics.

It all boils down to whether or not we can trust Debian to only
make reasonably backwards compatible point releases (which I am
of the opinion that we can). Of course, those that disagree have
valid points, but the cost of not trusting Debian has been
described in my previous mail.



PS. I just noticed that the Ubuntu version string in
SANITY_TESTED_DISTROS does not include point release version.
The latest 12.04 release is 12.04.4.

-- 
olofjn

