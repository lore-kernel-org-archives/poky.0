Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0F2444C810AF
	for <poky@pokylinux.org>; Fri,  7 Jan 2011 05:09:11 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p07BAmvc008097; Fri, 7 Jan 2011 11:10:48 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id VhmNafWW2IRx; Fri,  7 Jan 2011 11:10:48 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p07BAjFh008093
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 7 Jan 2011 11:10:47 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Tian, Kevin" <kevin.tian@intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D786EE679@shsmsx502.ccr.corp.intel.com>
References: <1294354570.17519.25325.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D786EE679@shsmsx502.ccr.corp.intel.com>
Date: Fri, 07 Jan 2011 11:08:38 +0000
Message-ID: <1294398518.17519.26801.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky <poky@pokylinux.org>
Subject: Re: RFC/RFT Checksums as part of stamp files
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
X-List-Received-Date: Fri, 07 Jan 2011 11:09:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-01-07 at 12:49 +0800, Tian, Kevin wrote:
> >I'm also aware that this idea isn't going to be universally liked,
> >particularly I can guess that Koen is going to have concerns about this
> >and Angstrom since the lack of PR bumps means package feeds could start
> >to suffer.
> 
> worthy of a config option? We may need see from real use whether this will
> trigger many unnecessary rebuilds and how much impact to people's daily
> work. Basically the incremental builds will be much more heavier than before,
> though this in concept is more correct...

They are potentially heavier, yes.

With this and other factors in mind, I've merged a new signature
generator class into poky with this as the only added feature. Now with
poky's master branch you can add:

BB_SIGNATURE_HANDLER = "basichash"

to local.conf to enable this functionality (the default is "basic").

At some point we are likely to decide to change the default in
bitbake.conf but this makes it easier for people to test.

For reference, my test builds completed successfully.

Cheers,

Richard


