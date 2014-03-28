Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB90BE00BCA;
	Fri, 28 Mar 2014 11:32:15 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s2SIWA4M014119
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 28 Mar 2014 11:32:10 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Fri, 28 Mar 2014 11:32:10 -0700
Message-ID: <5335C028.5070702@windriver.com>
Date: Fri, 28 Mar 2014 14:32:08 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Denys Dmytriyenko <denys@ti.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
References: <1396031047.14790.24.camel@ted> <20140328183036.GG12929@edge>
In-Reply-To: <20140328183036.GG12929@edge>
Cc: yocto-builds <yocto-builds@yoctoproject.org>, "Hart,
	Darren" <darren.hart@intel.com>,
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
X-List-Received-Date: Fri, 28 Mar 2014 18:32:15 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-03-28 02:30 PM, Denys Dmytriyenko wrote:
> On Fri, Mar 28, 2014 at 06:24:07PM +0000, Richard Purdie wrote:
>> I've merged Bruce's 3.14 patches into master-next. With the yocto-bsp
>> parts that I could pull together, there seemed to be some pieces
>> missing, specifically:
>>
>> * the yocto-linux-dev.bbappend was underpopulated
>> * the yocto-linux-3.14.bbappend was missing
>> * no removal of beagleboard
>> * no addition to the README for beaglebone
>> * local.conf.sample needs updates
>> * missing edgerouter configuration in linux-yocto*
>> * should we be removing a mips BSP?
>> * need a layer version bump so beth can handle this on the autobuilder
>>
>> I added commits for some of these, the 3.14 kernel bbappend is missing
>> SRCREVs though for example. The state of where I got to is:
>>
>> http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=master-next
>>
>> Beth: Your AR is to figure out the autobuilder side of this and build
>> the two new replacement BSPs (beaglebone and edgerouter) instead of the
>> old ones. When that and the current build on the AB is done, can we run
>> a build of master-next please?
>>
>> Denys: I'm hoping you can help out with the README
>>
>> Bruce: can you look at the linux-yocto-* changes, particularly the 3.14
>> SRCREVs and that linux-yocto-dev looks right?
>
> Richard,
>
> Thanks for the update!
>
> I'll take a look at updating README with relevant Beaglebone pieces.
>
> As of the linux-yocto-dev.bbappend - I made that change before Bruce had the
> versioned linux-yocto recipe for 3.14, with plans to update it later. If you
> are merging all the changes together, that part needs to be fixed, indeed.

Yep. I'll dust off the version I tested with here, and send it along.

Cheers,

Bruce

>


