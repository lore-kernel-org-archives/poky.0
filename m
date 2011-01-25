Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7D2C54C811AA
	for <poky@lists.pokylinux.org>; Tue, 25 Jan 2011 16:51:42 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0PMrZkC006703; Tue, 25 Jan 2011 22:53:36 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 4-8-Q4he1Q0l; Tue, 25 Jan 2011 22:53:35 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0PMrR0J006679
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 25 Jan 2011 22:53:29 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Tian, Kevin" <kevin.tian@intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504DB5BB6AE6@shsmsx502.ccr.corp.intel.com>
References: <4D3DF0F8.50704@mlbassoc.com>
	<1295905978.10128.65.camel@elmorro> <4D3E05CA.8080002@mlbassoc.com>
	<625BA99ED14B2D499DC4E29D8138F1504DB5BB6AE6@shsmsx502.ccr.corp.intel.com>
Date: Tue, 25 Jan 2011 22:51:10 +0000
Message-ID: <1295995870.27814.244.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Build failure
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
X-List-Received-Date: Tue, 25 Jan 2011 22:51:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-01-25 at 08:00 +0800, Tian, Kevin wrote:
> PR needs to be bumped in this case, which however reminds me one confusing area
> I didn't think about before.
> 
> How do we handle the class changes which are inherited by many recipes? Generally
> we need bump PRs once the output of a recipe gets changed, but it looks class file
> is usually ignored.
> 
> Is there any easy way to have all recipes inheriting same class file bumping their PRs,
> or has to be done by manual check?

This is a problem and its one I'm thinking we address with the sstate
checksums being part of the stamps ultimately.

Cheers,

Richard


