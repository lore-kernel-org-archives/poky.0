Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id B79E94C8086F
	for <poky@yoctoproject.org>; Thu,  6 Jan 2011 04:22:09 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p06ANcWe024745; Thu, 6 Jan 2011 10:23:38 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id bG2REJcPIZRN; Thu,  6 Jan 2011 10:23:38 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p06ANUx1024739
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 6 Jan 2011 10:23:32 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Qing He <qing.he@intel.com>
In-Reply-To: <20110104083441.GA16835@qhe2-db>
References: <cover.1293765141.git.qing.he@intel.com>
	<4D1DA77C.8060300@linux.intel.com>  <20110104083441.GA16835@qhe2-db>
Date: Thu, 06 Jan 2011 10:21:26 +0000
Message-ID: <1294309286.17519.24120.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/6] recipe upgrades, Qing He, 12/31/2010
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
X-List-Received-Date: Thu, 06 Jan 2011 10:22:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-01-04 at 16:34 +0800, Qing He wrote:
> Thank you for the fix.
> The screen flushed too quick and I missed the error message.
> Btw, I observed an error, but the build process didn't halt, is that
> considered some kind of bug?

Bitbake will have exited with a return value of 1, not 0 if any ERROR
had been displayed. We should probably display some message to the user
as bitbake exits in this case so a normal shell user can see this
clearly (needs to be added to lib/bb/ui/knotty.py). The autobuilder
checks the exit code so will pick this up already.

Cheers,

Richard


