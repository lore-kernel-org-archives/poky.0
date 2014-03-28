Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58582E00BD2;
	Fri, 28 Mar 2014 12:58:19 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s2SJwAvY014960
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 28 Mar 2014 12:58:10 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Fri, 28 Mar 2014 12:58:10 -0700
Message-ID: <5335D450.1030007@windriver.com>
Date: Fri, 28 Mar 2014 15:58:08 -0400
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
X-List-Received-Date: Fri, 28 Mar 2014 19:58:22 -0000
X-Groupsio-MsgNum: 9579
Content-Type: multipart/mixed; boundary="------------010300070309070900060100"

--------------010300070309070900060100
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-03-28 02:24 PM, Richard Purdie wrote:
> I've merged Bruce's 3.14 patches into master-next. With the yocto-bsp
> parts that I could pull together, there seemed to be some pieces
> missing, specifically:
>
> * the yocto-linux-dev.bbappend was underpopulated
> * the yocto-linux-3.14.bbappend was missing
> * no removal of beagleboard
> * no addition to the README for beaglebone
> * local.conf.sample needs updates
> * missing edgerouter configuration in linux-yocto*
> * should we be removing a mips BSP?
> * need a layer version bump so beth can handle this on the autobuilder

After suffering through two rounds of the entire kernel being fetched,
I've confirmed that the bbappend I've been using works for the reference
BSPs on 3.14.

As I mentioned before, my plan was to leave the untested reference BSPs
on 3.10 (particularly the FSL board) and update them once I get confirmation
that they work with 3.14.

I hadn't planned on adding the linux-yocto-dev.bbappend to meta-yocto-bsps,
since the hardware reference boards (unlike qemu) have a greater carrying
cost in terms of testing. So I keep that bbappend slightly out of
sight. At this point, it shouldn't be needed since all the boards
that support 3.14, set that explicitly in their config files.

As we rambled on in the thread, I was looking for a parking lot for
the retiring BSPs that work in 1.6, with the 3.10 kernel, but are not
the first choice. I won't fight to hard from it, and we can simply
pull them out of the 3.10 bbappend if there's no better option.

Attached is the bbappend that I used for testing. If it matches yours
we are good to go.

Bruce

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
>
> Cheers,
>
> Richard
>
>


--------------010300070309070900060100
Content-Type: text/x-patch;
	name="0001-meta-yocto-bsp-populate-3.14-bbappend.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename="0001-meta-yocto-bsp-populate-3.14-bbappend.patch"

From 9648840031b6dc441137b7c8e9d03e5f466821ac Mon Sep 17 00:00:00 2001
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Fri, 28 Mar 2014 15:49:47 -0400
Subject: [PATCH] meta-yocto-bsp: populate 3.14 bbappend

The 3.14 kernel supports the generic-x86, edgerouter and beaglebone black.

All other reference BSPs stay in the 3.10 kernel until boot and regression
testing can be performed.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend      | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
new file mode 100644
index 000000000000..a1ed1210681f
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
@@ -0,0 +1,17 @@
+KBRANCH_genericx86  = "standard/common-pc/base"
+KBRANCH_genericx86-64  = "standard/common-pc-64/base"
+KBRANCH_edgerouter = "standard/edgerouter"
+KBRANCH_beaglebone = "standard/beaglebone"
+
+KMACHINE_genericx86 ?= "common-pc"
+KMACHINE_genericx86-64 ?= "common-pc-64"
+
+SRCREV_machine_genericx86 ?= "fecc3fd7d31bd93766ff4f0431fecdbbfa4c3a7c"
+SRCREV_machine_genericx86-64 ?= "fecc3fd7d31bd93766ff4f0431fecdbbfa4c3a7c"
+SRCREV_machine_edgerouter ?= "fecc3fd7d31bd93766ff4f0431fecdbbfa4c3a7c"
+SRCREV_machine_beaglebone ?= "58b6d33dd898f901afbed10cfdec96b9d3148a00"
+
+COMPATIBLE_MACHINE_genericx86 = "genericx86"
+COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
+COMPATIBLE_MACHINE_edgerouter = "edgerouter"
+COMPATIBLE_MACHINE_beaglebone = "beaglebone"
-- 
1.8.1.2


--------------010300070309070900060100--
