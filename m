Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DDE3E00C49; Sun, 28 Feb 2016 15:11:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 672A1E00C31
	for <poky@yoctoproject.org>; Sun, 28 Feb 2016 15:11:52 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u1SNBoaS005819; Sun, 28 Feb 2016 23:11:50 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id f06UWVkxoL9R; Sun, 28 Feb 2016 23:11:50 +0000 (GMT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u1SNBiRT005813
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Sun, 28 Feb 2016 23:11:45 GMT
Message-ID: <1456701104.11498.173.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Khem Raj <raj.khem@gmail.com>
Date: Sun, 28 Feb 2016 23:11:44 +0000
In-Reply-To: <CAMKF1srow_MbndaELxsBHQoJsBe23Tf2uXHFgD=9j1WsUk7R=w@mail.gmail.com>
References: <1456656603.11498.156.camel@linuxfoundation.org>
	<CAMKF1srow_MbndaELxsBHQoJsBe23Tf2uXHFgD=9j1WsUk7R=w@mail.gmail.com>
X-Mailer: Evolution 3.16.5-1ubuntu3.1 
Mime-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] meta-yocto: Rename to meta-poky to better match its purpose
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
X-List-Received-Date: Sun, 28 Feb 2016 23:11:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2016-02-28 at 11:57 -0800, Khem Raj wrote:
> On Sun, Feb 28, 2016 at 2:50 AM, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> > "poky" is the reference distribution for the Yocto Project. This
> > renames
> > the layer within the meta-yocto repository to meta-poky, better
> > matching
> > what that layer contains.
> > 
> > A layer.conf file is left behind as this is the only way which
> > allows
> > existing builds to migrate safely to the new name. It will be
> > removed
> > at some future point.
> > 
> > This change requires the corresponding OE-Core change to handle the
> > migration and the changes to the infrastructure to support this.
> > 
> 
> This is a welcome change. Do we rename meta-yocto-bsp to something as
> well ?

I thought about that. These truly are the Yocto Project reference/test
BSPs, they're not really poky so I think the name is right as it is.

> may people confuse which layers to use with poky for some machines
> which exist in both places e.g. beaglebone may be renaming the 
> machine name could solve this issue as well.

That is the first time that has been proposed. I'm not entirely sure it
would help, it might be something improving the documentation might
help more.

Cheers,

Richard


