Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3EF714C8086E
	for <poky@yoctoproject.org>; Fri,  7 Jan 2011 04:59:28 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p07B0xeG007865; Fri, 7 Jan 2011 11:01:00 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 5+uOdYMTCl4o; Fri,  7 Jan 2011 11:00:59 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p07B0rCN007859
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 7 Jan 2011 11:00:56 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Zhai, Edwin" <edwin.zhai@intel.com>
In-Reply-To: <4D26E6C9.70606@intel.com>
References: <cover.1294148490.git.edwin.zhai@intel.com>
	<377902145104994aab4b69c1239a6a907f946c7c.1294148490.git.edwin.zhai@intel.com>
	<4D237B27.6040701@linux.intel.com> <4D266450.8010407@intel.com>
	<4D26E6C9.70606@intel.com>
Date: Fri, 07 Jan 2011 10:58:46 +0000
Message-ID: <1294397926.17519.26779.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 2/7] apr: Update to 1.4.2
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
X-List-Received-Date: Fri, 07 Jan 2011 10:59:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-01-07 at 18:11 +0800, Zhai, Edwin wrote:
> I have compared the autoconf process between apr-1.3 and 1.4, but found 
> no clue of why build/libtool.m4 got overwritten only on apr-1.4.
> Attached log files, and hope some autotools expert can help.
> 
> Following only occur in 1.4 log
> libtoolize: copying file `build/libtool.m4'
> libtoolize: copying file `build/ltoptions.m4'

This is what happens when libtool decides the version of libtool.m4
isn't right and replaces it with the system shared copy of that m4 file.
It usually does this when it finds the system copy is newer if I recally
correctly so this is the opposite way around to what I'd expect :/.

Cheers,

Richard


