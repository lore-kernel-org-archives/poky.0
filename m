Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90C2AE00792
	for <poky@yoctoproject.org>; Tue, 11 Mar 2014 20:54:04 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s2C3rpYP026180; Wed, 12 Mar 2014 03:53:52 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id KQ2Q5Rj9D5o0; Wed, 12 Mar 2014 03:53:51 +0000 (GMT)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s2C3rfBo026174
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Wed, 12 Mar 2014 03:53:46 GMT
Message-ID: <1394596414.19455.57.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mats =?ISO-8859-1?Q?K=E4rrman?= <Mats.Karrman@tritech.se>
Date: Tue, 11 Mar 2014 20:53:34 -0700
In-Reply-To: <ED3E0BCACD909541BA94A34C4A164D4C5B180D0A@post.tritech.se>
References: <ED3E0BCACD909541BA94A34C4A164D4C5B180D0A@post.tritech.se>
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
X-List-Received-Date: Wed, 12 Mar 2014 03:54:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2014-03-11 at 10:14 +0000, Mats Kärrman wrote:
> Hi,
> 
> Considering the recent discovery and fix of a serious bug in the compiler for ARM:
> commit 	97c9163d97911dad0afcd0dae39e5c426e27e921
> "gcc: Include patch scheduled for GCC 4.8.3 to fix epilogue on ARM"
> is there a new point-release scheduled for Dora?
> If so, when it is expected to be released?

Firstly we need to get this backported to dora. Is there a version of
this change backported and tested there? If not, someone needs to sort
out that patch.

We're probably going to have our hands full with 1.6 being released
right now but we can likely queue up a 1.5.2 point release sometime
after that.

Cheers,

Richard


