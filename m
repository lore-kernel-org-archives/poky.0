Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 739E4E013DC
	for <poky@yoctoproject.org>; Tue, 24 Apr 2012 02:12:03 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3O9Bt7D005548;
	Tue, 24 Apr 2012 10:11:55 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 04590-08; Tue, 24 Apr 2012 10:11:51 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3O9BgCT005542
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 24 Apr 2012 10:11:43 +0100
Message-ID: <1335258702.12692.113.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Lu, Lianhao" <lianhao.lu@intel.com>
Date: Tue, 24 Apr 2012 10:11:42 +0100
In-Reply-To: <857BE142E5399E46B20FD45B9DB8A7BC0FD71ED9@SHSMSX101.ccr.corp.intel.com>
References: <1335230346.58869.YahooMailNeo@web122202.mail.ne1.yahoo.com>
	<857BE142E5399E46B20FD45B9DB8A7BC0FD71ED9@SHSMSX101.ccr.corp.intel.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Determining dependencies by looking under work or tmp?
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
X-List-Received-Date: Tue, 24 Apr 2012 09:12:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-04-24 at 01:55 +0000, Lu, Lianhao wrote:
> Peter Tornel wrote on 2012-04-24:
> > Hello Group,
> > 
> > I'm wondering why some packages were built in my work directory even though I didn't specify them in my recipes and they didn't show up
> > in my rootfs.  For example, I find strace under work, but I don't find it in my rootfs.  There are some others I'm wondering about too.
> > 
> > Is there evidence left in work or somewhere under tmp for a particular package that shows why it was built or what dependency it filled?
> 
> Please try "bitbake -g"

Also, "bitbake -g -u depexp" can provide some insight to some of these
kinds of questions.

Cheers,

Richard


