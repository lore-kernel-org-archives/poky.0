Return-Path: <abuse@basmevissen.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD216E006E9; Tue,  1 Nov 2016 14:41:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2510BE0049B
	for <poky@yoctoproject.org>; Tue,  1 Nov 2016 14:40:57 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 597D212AB2F;
	Tue,  1 Nov 2016 22:40:56 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at hosting.emcodev.net
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 0uuO7DurKGm7; Tue,  1 Nov 2016 22:40:38 +0100 (CET)
Received: from whisper.local (541CD0EC.cm-5-5d.dynamic.ziggo.nl
	[84.28.208.236]) (Authenticated sender: bas@emcodev.nl)
	by hosting.emcodev.net (Postfix) with ESMTPSA id 2DEEB12ADB0;
	Tue,  1 Nov 2016 22:40:38 +0100 (CET)
To: matti kaasinen <matti.kaasinen@gmail.com>
References: <CADnUhn2dnK5aK7YGB42uH7ao6DzHWy6QmNHRtmh_BMW38B3DsA@mail.gmail.com>
	<d449b830-fbd4-1625-beed-e7ccb3abeb7f@basmevissen.nl>
	<CADnUhn1YhA5ds3GkxvdLK31LF8GyLjGJ3eXL+xNo-HCM0o3tAg@mail.gmail.com>
From: Bas Mevissen <abuse@basmevissen.nl>
Message-ID: <acc4cb27-a1e1-d301-58fa-71611aaf970f@basmevissen.nl>
Date: Tue, 1 Nov 2016 22:40:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CADnUhn1YhA5ds3GkxvdLK31LF8GyLjGJ3eXL+xNo-HCM0o3tAg@mail.gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: svn fetcher crashes
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
X-List-Received-Date: Tue, 01 Nov 2016 21:41:01 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/11/16 18:49, matti kaasinen wrote:
>
> 2016-11-01 19:05 GMT+02:00 Bas Mevissen <abuse@basmevissen.nl
> <mailto:abuse@basmevissen.nl>>:
>
>     It might be wise to wait a few days and start from the upcoming
>     morthy release.
>
> Unfortunately I need meta-ti layer and they support only every other
> main version. Their latest release is krogoth and they are skipping
> morthy. In fact, some update (source revision 4.1.17 -> 4.1.18)  broke
> kernel that is why I tried to make this upgrade instead of trying to fix
> kernel.
>

Too bad.

Be aware that from Krogoth to Morpy, quite some GCC6 host compiler fixes 
were added. So keep your build host on a distro with GCC 5.x.

>     Did you start with a clean work area?
>
> No, I did not, I deleted SSTATE_DIR, though. I'll clean it tomorrow.
>

OK, keep us posted.

-- 
Bas.

