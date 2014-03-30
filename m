Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C42E2E00BE3;
	Sun, 30 Mar 2014 07:43:07 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s2UEh1CZ012081
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 30 Mar 2014 07:43:01 -0700 (PDT)
Received: from server.local (128.224.23.122) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.169.1;
	Sun, 30 Mar 2014 07:43:01 -0700
Message-ID: <53382E49.3020106@windriver.com>
Date: Sun, 30 Mar 2014 10:46:33 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <1396031047.14790.24.camel@ted> <5335D450.1030007@windriver.com>
	<1396134758.14790.32.camel@ted>
In-Reply-To: <1396134758.14790.32.camel@ted>
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
X-List-Received-Date: Sun, 30 Mar 2014 14:43:09 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-03-29, 7:12 PM, Richard Purdie wrote:
> On Fri, 2014-03-28 at 15:58 -0400, Bruce Ashfield wrote:
>> On 14-03-28 02:24 PM, Richard Purdie wrote:
>>> I've merged Bruce's 3.14 patches into master-next. With the yocto-bsp
>>> parts that I could pull together, there seemed to be some pieces
>>> missing, specifically:
>>>
>>> * the yocto-linux-dev.bbappend was underpopulated
>>> * the yocto-linux-3.14.bbappend was missing
>>> * no removal of beagleboard
>>> * no addition to the README for beaglebone
>>> * local.conf.sample needs updates
>>> * missing edgerouter configuration in linux-yocto*
>>> * should we be removing a mips BSP?
>>> * need a layer version bump so beth can handle this on the autobuilder
>>
>> After suffering through two rounds of the entire kernel being fetched,
>> I've confirmed that the bbappend I've been using works for the reference
>> BSPs on 3.14.
>>
>> As I mentioned before, my plan was to leave the untested reference BSPs
>> on 3.10 (particularly the FSL board) and update them once I get confirmation
>> that they work with 3.14.
>
> Ok.
>
>> I hadn't planned on adding the linux-yocto-dev.bbappend to meta-yocto-bsps,
>> since the hardware reference boards (unlike qemu) have a greater carrying
>> cost in terms of testing. So I keep that bbappend slightly out of
>> sight. At this point, it shouldn't be needed since all the boards
>> that support 3.14, set that explicitly in their config files.
>
> Ok, I've dropped that. It does mean we get more restricted coverage with
> the -dev kernel though...

Right now the 3.14 tree and -dev are identical, which is why I'm not worried
about the bbappend. When I move -dev to 3.15, I'll send it out for
inclusion.

>
>> As we rambled on in the thread, I was looking for a parking lot for
>> the retiring BSPs that work in 1.6, with the 3.10 kernel, but are not
>> the first choice. I won't fight to hard from it, and we can simply
>> pull them out of the 3.10 bbappend if there's no better option.
>
> I don't mind them in the bbappend of the kernel tree. My concern is that
> if the machine definition is in the repository, someone will try and
> build it. That means before we ship it, we need to build and test it and
> we don't have resources for it. I'd ideally therefore prefer to have
> only the selected machine in there.

Understood. I'll figure out a good place to stash it. I was more commenting
that it wasn't a missed commit, it was on purpose .. but we can decide
that the 'on purpose' part of it was wrong :)

>
>> Attached is the bbappend that I used for testing. If it matches yours
>> we are good to go.
>
> I tried it but I had trouble on beaglebone since the referenced commit
> doesn't match anything the beaglebone branch. Using
> fecc3fd7d31bd93766ff4f0431fecdbbfa4c3a7c as with the others (and as per
> the branch head) is hopefully going to work better.

I really did mean 58b6d33dd898f901afbed10cfdec96b9d3148a00, but that was
me flipping the beagleboard and beaglebone. fecc really is the right commit
for the BBB, so your update is correct (and I've fixed my update
scripts now).

Cheers,

Bruce

>
> I've also been having "fun" with the edgerouter BSP since we can't build
> qt4 for mips64. I think I've come up with the right set of magic changes
> to avoid the build failures with that.
>
> One remaining issue is that u-boot may be breaking for beaglebone. I'm
> hoping Denys can help there.
>
> Cheers,
>
> Richard
>


