Return-Path: <olof.johansson@axis.com>
Received: from ra.se.axis.com (ra.se.axis.com [195.60.68.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65289E006F6
	for <poky@yoctoproject.org>; Mon, 10 Feb 2014 06:57:56 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by ra.se.axis.com (Postfix) with ESMTP id 65ACC3F20D7;
	Mon, 10 Feb 2014 15:57:51 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at ra.se.axis.com
Received: from ra.se.axis.com ([127.0.0.1])
	by localhost (ra.se.axis.com [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id m7b5GioKR3WK; Mon, 10 Feb 2014 15:57:50 +0100 (CET)
Received: from boulder.se.axis.com (boulder.se.axis.com [10.0.2.104])
	by ra.se.axis.com (Postfix) with ESMTP id AFCEC11EA1;
	Mon, 10 Feb 2014 15:57:50 +0100 (CET)
Received: from boulder.se.axis.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 999EFA57;
	Mon, 10 Feb 2014 15:57:50 +0100 (CET)
Received: from thoth.se.axis.com (thoth.se.axis.com [10.0.2.173])
	by boulder.se.axis.com (Postfix) with ESMTP id 8EA6C9B2;
	Mon, 10 Feb 2014 15:57:50 +0100 (CET)
Received: from xmail2.se.axis.com (xmail2.se.axis.com [10.0.5.74])
	by thoth.se.axis.com (Postfix) with ESMTP id 8C8B734005;
	Mon, 10 Feb 2014 15:57:50 +0100 (CET)
Received: from axis.com (10.92.17.1) by xmail2.se.axis.com (10.0.5.74) with
	Microsoft SMTP Server (TLS) id 8.2.255.0;
	Mon, 10 Feb 2014 15:57:50 +0100
Date: Mon, 10 Feb 2014 15:57:49 +0100
From: Olof Johansson <olof.johansson@axis.com>
To: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Message-ID: <20140210145748.GM23583@axis.com>
References: <1392025053-22406-1-git-send-email-olof.johansson@axis.com>
	<20140210094605.GI23583@axis.com> <20140210095533.GB3194@piout.net>
MIME-Version: 1.0
In-Reply-To: <20140210095533.GB3194@piout.net>
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
X-List-Received-Date: Mon, 10 Feb 2014 14:57:57 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

On 14-02-10 10:55 +0100, Alexandre Belloni wrote:
> What if a minor distro actually breaks ? :)

Debian have policies that limit the type of changes entering a
stable point release, and it is my opinion that we can assume
that a new point release doesn't break anything (to the level of
insanity --- this is SANITY_TESTED_DISTROS we are talking about
here), and then react to this not being the case instead of the
other way around.

It's quite unfortunate that we have to update it ~every other
month. These changes are usually not backported to the stable
branch of poky, and as such, people using it will have warnings
about using a non-supported host distribution, even though this
isn't the case.

-- 
olofjn

