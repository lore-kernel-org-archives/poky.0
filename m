Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9CE7A4C80050
	for <poky@yoctoproject.org>; Fri,  1 Apr 2011 12:34:24 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p31HYJ0K016505;
	Fri, 1 Apr 2011 18:34:19 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 15946-09; Fri,  1 Apr 2011 18:34:15 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p31HYBVo016499
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 1 Apr 2011 18:34:13 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Scott Garman <scott.a.garman@intel.com>
In-Reply-To: <4D95EDFD.30603@intel.com>
References: <4D951B0B.3010503@intel.com> <1301657460.24596.281.camel@rex>
	<4D95EDFD.30603@intel.com>
Date: Fri, 01 Apr 2011 18:34:10 +0100
Message-ID: <1301679250.24596.293.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Broken dependency behavior in master?
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
X-List-Received-Date: Fri, 01 Apr 2011 17:34:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-04-01 at 08:23 -0700, Scott Garman wrote:
> On 04/01/2011 04:31 AM, Richard Purdie wrote:
> >> This makes me think something could be seriously broken in master when
> >> it comes to handling build dependencies.
> >>
> >> I've verified that sgml-common-native is showing up as a build
> >> dependency properly in the dependency explorer.
> >
> > I'm not convinced as its clear above that sgml-common-native is being
> > built before docbook-dsssl-stylesheets-native do_configure runs.
> 
> That was the case on the autobuilder. On my local development system, I 
> proved to myself without a doubt that sgml-common-native only got as far 
> as do_configure before the docbook-sgml-dtd-3.1-native error was 
> encountered.

With or without sstate involvement?

This looks like some kind of sstate issue but without logs this is near
impossible to comment on. The logs you've pointed at don't show the
problem you're describing.

I don't think the problem is as simple as you're suggesting it is though
as the core dependency resolution appears to be working (and has not
changed in a long time). What perhaps isn't in something in the sstate
task acceleration.

> I also then ran bitbake sgml-common-native afterward and verified that 
> the remaining build steps were run to make sure it wasn't a case of 
> missing log files.
> 
> > Did both your builds have rm_work enabled?
> 
> My local build did not have rm_work enabled, but I believe it is enabled 
> on the autobuilder.

It is enabled on the autobuilder and that gives a useful data point,
thanks.

Richard


