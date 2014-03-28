Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D981E00BC6
	for <poky@yoctoproject.org>; Fri, 28 Mar 2014 10:47:52 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s2SHlSAZ030762; Fri, 28 Mar 2014 17:47:28 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 86FNCmVQ9IZB; Fri, 28 Mar 2014 17:47:28 +0000 (GMT)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s2SHlOJE030747
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Fri, 28 Mar 2014 17:47:26 GMT
Message-ID: <1396028839.14790.16.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Denys Dmytriyenko <denis@denix.org>
Date: Fri, 28 Mar 2014 17:47:19 +0000
In-Reply-To: <20140328162614.GF3370@denix.org>
References: <1395861670-20330-1-git-send-email-denis@denix.org>
	<53332E97.7010002@windriver.com> <20140328162614.GF3370@denix.org>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org, Denys Dmytriyenko <denys@ti.com>
Subject: Re: [PATCH] beaglebone: add OE machine definition for use with linux-yocto kernels
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
X-List-Received-Date: Fri, 28 Mar 2014 17:47:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2014-03-28 at 12:26 -0400, Denys Dmytriyenko wrote:
> On Wed, Mar 26, 2014 at 03:46:31PM -0400, Bruce Ashfield wrote:
> > On 14-03-26 03:21 PM, Denys Dmytriyenko wrote:
> > >From: Denys Dmytriyenko <denys@ti.com>
> > >
> > >Kernel support is now in linux-yocto-dev and will be moved to a versioned
> > >recipe once 3.14 is released.
> > 
> > I've tested this locally as we prep 3.14, so I can ack and add
> > my tested-by:
> 
> Ping?

Just queuing this up. Could you send a patch to add something suitable
to README.hardware please for the board?

Cheers,

Richard


