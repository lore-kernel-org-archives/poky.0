Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E77BE003C7;
	Sat, 29 Mar 2014 16:13:23 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s2TNCq6D032176; Sat, 29 Mar 2014 23:12:53 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 2s7u0hWOF-bI; Sat, 29 Mar 2014 23:12:52 +0000 (GMT)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s2TNChRd032168
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Sat, 29 Mar 2014 23:12:45 GMT
Message-ID: <1396134758.14790.32.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Sat, 29 Mar 2014 23:12:38 +0000
In-Reply-To: <5335D450.1030007@windriver.com>
References: <1396031047.14790.24.camel@ted> <5335D450.1030007@windriver.com>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: yocto-builds <yocto-builds@yoctoproject.org>,
	Denys Dmytriyenko <denys@ti.com>, "Hart, Darren" <darren.hart@intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>,
	"saul.wold" <saul.wold@intel.com>
Subject: Re: meta-yocto-bsp changes and 3.14
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
X-List-Received-Date: Sat, 29 Mar 2014 23:13:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2014-03-28 at 15:58 -0400, Bruce Ashfield wrote:
> On 14-03-28 02:24 PM, Richard Purdie wrote:
> > I've merged Bruce's 3.14 patches into master-next. With the yocto-bsp
> > parts that I could pull together, there seemed to be some pieces
> > missing, specifically:
> >
> > * the yocto-linux-dev.bbappend was underpopulated
> > * the yocto-linux-3.14.bbappend was missing
> > * no removal of beagleboard
> > * no addition to the README for beaglebone
> > * local.conf.sample needs updates
> > * missing edgerouter configuration in linux-yocto*
> > * should we be removing a mips BSP?
> > * need a layer version bump so beth can handle this on the autobuilder
> 
> After suffering through two rounds of the entire kernel being fetched,
> I've confirmed that the bbappend I've been using works for the reference
> BSPs on 3.14.
> 
> As I mentioned before, my plan was to leave the untested reference BSPs
> on 3.10 (particularly the FSL board) and update them once I get confirmation
> that they work with 3.14.

Ok.

> I hadn't planned on adding the linux-yocto-dev.bbappend to meta-yocto-bsps,
> since the hardware reference boards (unlike qemu) have a greater carrying
> cost in terms of testing. So I keep that bbappend slightly out of
> sight. At this point, it shouldn't be needed since all the boards
> that support 3.14, set that explicitly in their config files.

Ok, I've dropped that. It does mean we get more restricted coverage with
the -dev kernel though...

> As we rambled on in the thread, I was looking for a parking lot for
> the retiring BSPs that work in 1.6, with the 3.10 kernel, but are not
> the first choice. I won't fight to hard from it, and we can simply
> pull them out of the 3.10 bbappend if there's no better option.

I don't mind them in the bbappend of the kernel tree. My concern is that
if the machine definition is in the repository, someone will try and
build it. That means before we ship it, we need to build and test it and
we don't have resources for it. I'd ideally therefore prefer to have
only the selected machine in there.

> Attached is the bbappend that I used for testing. If it matches yours
> we are good to go.

I tried it but I had trouble on beaglebone since the referenced commit
doesn't match anything the beaglebone branch. Using
fecc3fd7d31bd93766ff4f0431fecdbbfa4c3a7c as with the others (and as per
the branch head) is hopefully going to work better.

I've also been having "fun" with the edgerouter BSP since we can't build
qt4 for mips64. I think I've come up with the right set of magic changes
to avoid the build failures with that.

One remaining issue is that u-boot may be breaking for beaglebone. I'm
hoping Denys can help there.

Cheers,

Richard


