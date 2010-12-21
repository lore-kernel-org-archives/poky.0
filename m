Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 20A084C80050
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 11:41:17 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBLHgaTs020895; Tue, 21 Dec 2010 17:42:36 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id lGNmeom3RTFc; Tue, 21 Dec 2010 17:42:36 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBLHgVHx020878
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 21 Dec 2010 17:42:32 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <AANLkTikE3+s+WV8PYhPA0Z+T4kzquR6cb_uQf=e-ECNr@mail.gmail.com>
References: <cover.1292920700.git.raj.khem@gmail.com>
	<20101221151305.4C9E1126EB19@gemini.denx.de>
	<AANLkTikE3+s+WV8PYhPA0Z+T4kzquR6cb_uQf=e-ECNr@mail.gmail.com>
Date: Tue, 21 Dec 2010 17:40:44 +0000
Message-ID: <1292953244.25087.6330.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] gcc 4.5.4 + linaro update
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
X-List-Received-Date: Tue, 21 Dec 2010 17:41:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-12-21 at 08:55 -0800, Khem Raj wrote:
> On Tue, Dec 21, 2010 at 7:13 AM, Wolfgang Denk <wd@denx.de> wrote:
> > If I apply your patches on top of current head, I see a failure like
> > this:
> >
> > ERROR: Task failed: Unknown fetch Error: local variable 'md5data' referenced before assignment
> > NOTE: package gcc-cross-initial-4.5.2-r0: task do_fetch: Failed
> >
> 
> hmm interesting. I did not see this error. But anyway wait for the V2
> of the patchset

This was a bug in master which is now fixed.

Cheers,

Richard


