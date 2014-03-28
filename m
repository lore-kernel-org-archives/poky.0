Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26B03E00BC7;
	Fri, 28 Mar 2014 11:27:47 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s2SIRfiV014080
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 28 Mar 2014 11:27:42 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Fri, 28 Mar 2014 11:27:41 -0700
Message-ID: <5335BF1C.9030902@windriver.com>
Date: Fri, 28 Mar 2014 14:27:40 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>, "Flanagan, Elizabeth"
	<elizabeth.flanagan@intel.com>,
	yocto-builds <yocto-builds@yoctoproject.org>,
	"saul.wold" <saul.wold@intel.com>, Denys Dmytriyenko <denys@ti.com>, "Hart,
	Darren" <darren.hart@intel.com>
References: <1396031047.14790.24.camel@ted>
In-Reply-To: <1396031047.14790.24.camel@ted>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Fri, 28 Mar 2014 18:27:50 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-03-28 02:24 PM, Richard Purdie wrote:
> I've merged Bruce's 3.14 patches into master-next. With the yocto-bsp
> parts that I could pull together, there seemed to be some pieces
> missing, specifically:
>
> * the yocto-linux-dev.bbappend was underpopulated
> * the yocto-linux-3.14.bbappend was missing

I have one of these, I was hoping the BSP developers would submit
it, but I can commit and send mine.

> * no removal of beagleboard

I was keeping this around, for the 3.10 and older trees.

> * no addition to the README for beaglebone

Denys and I talked about this, one should be pending.

> * local.conf.sample needs updates
> * missing edgerouter configuration in linux-yocto*

Hmm. no, it's definitely there, so I'm not sure

> * should we be removing a mips BSP?

Nope. Same as for the beagle, this was on purpose.

> * need a layer version bump so beth can handle this on the autobuilder
>
> I added commits for some of these, the 3.14 kernel bbappend is missing
> SRCREVs though for example. The state of where I got to is:
>
> http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=master-next
>
> Beth: Your AR is to figure out the autobuilder side of this and build
> the two new replacement BSPs (beaglebone and edgerouter) instead of the
> old ones. When that and the current build on the AB is done, can we run
> a build of master-next please?
>
> Denys: I'm hoping you can help out with the README
>
> Bruce: can you look at the linux-yocto-* changes, particularly the 3.14
> SRCREVs and that linux-yocto-dev looks right?

I'll send you my commits, I have them here already. Want them on the
branch, or email ?

Bruce

>
> Cheers,
>
> Richard
>
>


