Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4777A4C811AE
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 03:24:05 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0Q9Q0gU025186; Wed, 26 Jan 2011 09:26:00 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id YAtRSTttWvB5; Wed, 26 Jan 2011 09:26:00 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0Q9PtcD025183
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 26 Jan 2011 09:25:57 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Saul Wold <saul.wold@intel.com>
In-Reply-To: <4D3F6A39.8000202@intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504DB5BB7093@shsmsx502.ccr.corp.intel.com>
	<4D3F6A39.8000202@intel.com>
Date: Wed, 26 Jan 2011 09:23:36 +0000
Message-ID: <1296033816.27814.2115.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: question about the sender of this mailing list
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
X-List-Received-Date: Wed, 26 Jan 2011 09:24:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-01-25 at 16:26 -0800, Saul Wold wrote:
> On 01/25/2011 04:20 PM, Tian, Kevin wrote:
> > Hi, all,
> >
> > I just found one weird change today.
> >
> > Normally I received mails from this list by:
> > 	Poky-bounces@yoctoproject.org on behalf of someone
> >
> > That way in my inbox I can sort the mails by the sender names, which is also the most typical way I see in most projects
> >
> > However today I also saw some plain senders:
> > 	Poky-bounces@yoctoproject.org
> > (from Josh, Edwin, Scott...)
> >
> > Does anyone know what may be the cause for this?
>
> This just started happening, not sure yet why, I am going to talk with 
> Jon, but he has been trying to get bugzilla backup and running. We know 
> about this issue.

I think it was the recent pull request script changes somehow. The
timing fits...

Cheers,

Richard


