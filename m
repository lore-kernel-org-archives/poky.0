Return-Path: <abuse@basmevissen.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2EDFE00BB0; Wed,  2 Nov 2016 13:03:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8C28E00A64
	for <poky@yoctoproject.org>; Wed,  2 Nov 2016 13:03:04 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id EE01712AEA0;
	Wed,  2 Nov 2016 21:03:02 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at hosting.emcodev.net
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id TovJKAQXggUF; Wed,  2 Nov 2016 21:02:43 +0100 (CET)
Received: from [192.168.178.16] (541CD0EC.cm-5-5d.dynamic.ziggo.nl
	[84.28.208.236]) (Authenticated sender: bas@emcodev.nl)
	by hosting.emcodev.net (Postfix) with ESMTPSA id 344EE12AE88;
	Wed,  2 Nov 2016 21:02:43 +0100 (CET)
User-Agent: K-9 Mail for Android
In-Reply-To: <CADnUhn2qEMbmdoE-+e_veSYD_UFYMcCrWksFpMJeWVO6HhcNtA@mail.gmail.com>
References: <CADnUhn2dnK5aK7YGB42uH7ao6DzHWy6QmNHRtmh_BMW38B3DsA@mail.gmail.com>
	<d449b830-fbd4-1625-beed-e7ccb3abeb7f@basmevissen.nl>
	<CADnUhn1YhA5ds3GkxvdLK31LF8GyLjGJ3eXL+xNo-HCM0o3tAg@mail.gmail.com>
	<acc4cb27-a1e1-d301-58fa-71611aaf970f@basmevissen.nl>
	<CADnUhn2qEMbmdoE-+e_veSYD_UFYMcCrWksFpMJeWVO6HhcNtA@mail.gmail.com>
MIME-Version: 1.0
From: Bas Mevissen <abuse@basmevissen.nl>
Date: Wed, 02 Nov 2016 21:02:42 +0100
To: matti kaasinen <matti.kaasinen@gmail.com>
Message-ID: <E7D08E71-EB1A-49FE-9157-FD590823E52C@basmevissen.nl>
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
X-List-Received-Date: Wed, 02 Nov 2016 20:03:09 -0000
Content-Type: text/plain;
 charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On November 2, 2016 3:13:47 PM GMT+01:00, matti kaasinen <matti.kaasinen@=
gmail.com> wrote:
>2016-11-01 23:40 GMT+02:00 Bas Mevissen <abuse@basmevissen.nl>:
>
>> On 01/11/16 18:49, matti kaasinen wrote:
>>
>>>
>>> 2016-11-01 19:05 GMT+02:00 Bas Mevissen <abuse@basmevissen.nl
>>> <mailto:abuse@basmevissen.nl>>:
>>>
>>>     It might be wise to wait a few days and start from the upcoming
>>>     morthy release.
>>>
>>> Unfortunately I need meta-ti layer and they support only every other
>>> main version. Their latest release is krogoth and they are skipping
>>> morthy. In fact, some update (source revision 4.1.17 -> 4.1.18)=20
>broke
>>> kernel that is why I tried to make this upgrade instead of trying to
>fix
>>> kernel.
>>>
>>>
>> Too bad.
>>
>> Be aware that from Krogoth to Morpy, quite some GCC6 host compiler
>fixes
>> were added. So keep your build host on a distro with GCC 5.x.
>>
>
>Version seems to be arm-poky-linux-gnueabi-gcc (GCC) 5.3.0, but
>something
>strange there is now compared to fido compilation.(see below)
>


I meant the gcc of the host, the native compiler. Make sure you run a dis=
tro that uses gcc 5.x and not 6.x with Krogoth.


--=20
Bas.

