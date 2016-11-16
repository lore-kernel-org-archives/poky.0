Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C233EE00C45; Wed, 16 Nov 2016 03:53:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 017C2E00C3A
	for <poky@yoctoproject.org>; Wed, 16 Nov 2016 03:53:27 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	uAGBrOvK016826; Wed, 16 Nov 2016 11:53:24 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 3xrc1E7f2PRm; Wed, 16 Nov 2016 11:53:24 +0000 (GMT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	uAGBrMGB016823
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 16 Nov 2016 11:53:23 GMT
Message-ID: <1479297202.28508.20.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: leonardo.sandoval.gonzalez@linux.intel.com, poky@yoctoproject.org
Date: Wed, 16 Nov 2016 11:53:22 +0000
In-Reply-To: <cover.1479244148.git.leonardo.sandoval.gonzalez@linux.intel.com>
References: <cover.1479244148.git.leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
Subject: Re: [PATCH 0/3] bb-perf: scripting to plot buildstats data
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
X-List-Received-Date: Wed, 16 Nov 2016 11:53:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2016-11-15 at 15:19 -0600,
leonardo.sandoval.gonzalez@linux.intel.com wrote:
> From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
> 
> buildstats data has been mostly unexplored mainly due to the lack of
> tools
> to digest this data. The script buildstats.sh has been re-designed to
> be much more flexible and the new script buildstats-plot.sh uses the
> latter
> to produce data to be consumed by gnuplot. The tools used are
> datamash and
> gnuplot, so these must be present before running them.
> 
> Some plots created by buildstats-plot.sh can be found at [1]
> 
> [1] https://wiki.yoctoproject.org/wiki/MortyBuildstats
> 

This should go to the OE-Core list?

Cheers,

Richard

