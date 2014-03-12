Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 226E7E009D3
	for <poky@yoctoproject.org>; Wed, 12 Mar 2014 06:09:11 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s2CD8wl0013663; Wed, 12 Mar 2014 13:08:59 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id BD2UfNyVxnd9; Wed, 12 Mar 2014 13:08:58 +0000 (GMT)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s2CD8oYn013658
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Wed, 12 Mar 2014 13:08:55 GMT
Message-ID: <1394629724.19455.61.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mats =?ISO-8859-1?Q?K=E4rrman?= <Mats.Karrman@tritech.se>
Date: Wed, 12 Mar 2014 06:08:44 -0700
In-Reply-To: <ED3E0BCACD909541BA94A34C4A164D4C5B18123B@post.tritech.se>
References: <ED3E0BCACD909541BA94A34C4A164D4C5B180D0A@post.tritech.se>
	,<1394596414.19455.57.camel@ted>
	<ED3E0BCACD909541BA94A34C4A164D4C5B18123B@post.tritech.se>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Schedule for Poky Dora point release
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
X-List-Received-Date: Wed, 12 Mar 2014 13:09:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2014-03-12 at 08:00 +0000, Mats Kärrman wrote:
> on Wednesday, March 12, 2014 4:53 AM, Richard Purdie wrote:
> > On Tue, 2014-03-11 at 10:14 +0000, Mats Kärrman wrote:
> >> Considering the recent discovery and fix of a serious bug in the compiler for ARM:
> >> commit        97c9163d97911dad0afcd0dae39e5c426e27e921
> >> "gcc: Include patch scheduled for GCC 4.8.3 to fix epilogue on ARM"
> >> is there a new point-release scheduled for Dora?
> >> If so, when it is expected to be released?
> >
> > Firstly we need to get this backported to dora. Is there a version of
> > this change backported and tested there? If not, someone needs to sort
> > out that patch.
> 
> Looking at http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/?h=dora
> it is there since 2014-02-14.

Sorry, I think I've confused two different gcc arm patches, we're good
on that part then! :)

Cheers,

Richard


