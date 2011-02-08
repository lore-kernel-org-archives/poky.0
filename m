Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3D2E24C8006D
	for <poky@lists.pokylinux.org>; Tue,  8 Feb 2011 12:06:47 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p18I6hAO014354;
	Tue, 8 Feb 2011 18:06:43 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 14177-03; Tue,  8 Feb 2011 18:06:38 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p18I6UqB014348
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 8 Feb 2011 18:06:33 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Tian, Kevin" <kevin.tian@intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504DB5E05998@shsmsx502.ccr.corp.intel.com>
References: <4D3850B3.2030100@mlbassoc.com>
	<1295619024.14388.30678.camel@rex>	<4D399769.1050803@mlbassoc.com>
	<1295626657.14388.31197.camel@rex>	<4D39F115.90909@mlbassoc.com>
	<4D3B1779.50504@mlbassoc.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A31D8EFC0@shsmsx501.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504DB5E05998@shsmsx502.ccr.corp.intel.com>
Date: Tue, 08 Feb 2011 18:06:25 +0000
Message-ID: <1297188385.1350.29424.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: What's taking so long??
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
X-List-Received-Date: Tue, 08 Feb 2011 18:06:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-01-28 at 15:49 +0800, Tian, Kevin wrote:
> > From: Xu, Dongxiao
> > Sent: Friday, January 28, 2011 3:42 PM
> > 
> > This is a bottle neck for those cases which have a loop of "bb.note", like Gary
> > found in the package bbclass for kernel recipes.
> > 
> > But for normal "bb.note", it may not benefit a lot. So this logging issue may be
> > not a key point to the current long building time.
> > 
> > But anyhow, I am scheduling a test for this patch to see whether it helps for our
> > common build result, like poky-image-minimal, etc.
> > 
> > Comments and thoughts on it?
> > 
> 
> Another issue found in the test, which we're not sure whether we did it correctly, that
> bb.debug is never printed out to the console even with -DDD. Dongxiao checked the
> server side, that no record is passed from the child process regarding to debug info.
> 
> Is there any change to activate the debug message or is it a real issue?

There was a problem in bitbake which was fixed in:

http://git.pokylinux.org/cgit.cgi/poky/commit/?id=d7eebbe9dbf0d790d4af93466f5c27127cae0999

I think this was the likely cause of this observation.

Cheers,

Richard


