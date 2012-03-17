Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29A1EE0052E
	for <poky@yoctoproject.org>; Sat, 17 Mar 2012 08:21:11 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2HFL9g0015991;
	Sat, 17 Mar 2012 15:21:09 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 15905-01; Sat, 17 Mar 2012 15:21:02 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2HFKwL2015982
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sat, 17 Mar 2012 15:20:59 GMT
Message-ID: <1331997658.18586.230.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Sat, 17 Mar 2012 15:20:58 +0000
In-Reply-To: <4F648B78.8070108@mlbassoc.com>
References: <4F63546E.4000407@mlbassoc.com> <4F635D1A.2030304@mlbassoc.com>
	<4F638691.6020803@mlbassoc.com> <1331941648.18586.213.camel@ted>
	<4F648B78.8070108@mlbassoc.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: Can't build web-webkit
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
X-List-Received-Date: Sat, 17 Mar 2012 15:21:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2012-03-17 at 07:02 -0600, Gary Thomas wrote:
> On 2012-03-16 17:47, Richard Purdie wrote:
> No problem, after bisection it was pretty obvious.  Of course
> bisecting 198 revisions where each test took around 20 minutes
> was a bit trying...
> 
> Sadly, the actual clone error remains.  It was only exposed by
> this error that made it happen unexpectedly.

Right, this should be fixed now too.

Cheers,

Richard



