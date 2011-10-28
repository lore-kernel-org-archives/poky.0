Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23BDCE006F9
	for <poky@yoctoproject.org>; Fri, 28 Oct 2011 03:26:42 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 891C26AACC7; Fri, 28 Oct 2011 04:26:40 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 58BB316600BA;
	Fri, 28 Oct 2011 04:26:39 -0600 (MDT)
Message-ID: <4EAA835F.3010606@mlbassoc.com>
Date: Fri, 28 Oct 2011 04:26:39 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: Tom Rini <tom.rini@gmail.com>
References: <4EA8186C.9060906@mlbassoc.com>
	<CA+M6bXkW5FeMeYSifC=7Z86Dcg2xvwvxXzPrtOp-GLLX2_q4+A@mail.gmail.com>
In-Reply-To: <CA+M6bXkW5FeMeYSifC=7Z86Dcg2xvwvxXzPrtOp-GLLX2_q4+A@mail.gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Strange ext filesystem error
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
X-List-Received-Date: Fri, 28 Oct 2011 10:26:44 -0000
X-Groupsio-MsgNum: 7106
Content-Type: multipart/mixed; boundary="------------010006060902070806000103"

--------------010006060902070806000103
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-10-26 18:22, Tom Rini wrote:
> On Wed, Oct 26, 2011 at 7:25 AM, Gary Thomas<gary@mlbassoc.com>  wrote:
>> I've noticed this behaviour on my Poky/Yocto based systems.
>> First, I format some device, in this case an MMC card, as ext3
>> (yes, my kernel supports ext3)
>>   # mkfs.ext3 /dev/mmcblk0p1
>> Then, when I go to mount it, I get this error:
>>   # mount /dev/mmcblk0p1 /tmp/disk
>>   EXT2-fs (mmcblk0p1): warning: mounting ext3 filesystem as ext2
>>
>> Any ideas why?  How can I get ext3 file system working?
>
> Sounds like once again the file mount uses to guess types is out of order.
> I think it's part of base-files but I don't have a chance to check right now...
>

Looks like that's it, thanks.  I think that list is completely wrong in
its ordering - one should always try to use the *most* capable type first.
The attached patch works fine and solves this problem for me.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------010006060902070806000103
Content-Type: text/plain;
 name="0001-Reorder-file-system-list-so-that-most-capable-types-.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-Reorder-file-system-list-so-that-most-capable-types-.pa";
 filename*1="tch"

From 8417dfee5cbdb1809296533604beb41dd599282e Mon Sep 17 00:00:00 2001
From: Gary Thomas <gary@mlbassoc.com>
Date: Fri, 28 Oct 2011 04:24:14 -0600
Subject: [PATCH] Reorder file system list so that most capable types are
 tried first

Signed-off-by: Gary Thomas <gary@mlbassoc.com>
---
 .../recipes-core/base-files/base-files/filesystems |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta/recipes-core/base-files/base-files/filesystems b/meta/recipes-core/base-files/base-files/filesystems
index 2af6a7e..14f5abb 100644
--- a/meta/recipes-core/base-files/base-files/filesystems
+++ b/meta/recipes-core/base-files/base-files/filesystems
@@ -1,7 +1,7 @@
-minix
-fat
-vfat
-ext2
 ext3
+ext2
+vfat
+fat
 btrfs
+minix
 *
-- 
1.7.6.4


--------------010006060902070806000103--
