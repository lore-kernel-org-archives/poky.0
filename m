Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id AAA4C4C80815
	for <poky@lists.pokylinux.org>; Fri, 12 Nov 2010 02:18:17 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id EFE3C16608D8; Fri, 12 Nov 2010 01:18:16 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4F54E16608D8;
	Fri, 12 Nov 2010 01:18:16 -0700 (MST)
Message-ID: <4CDCF848.9020703@mlbassoc.com>
Date: Fri, 12 Nov 2010 01:18:16 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.9) Gecko/20100430 Fedora/3.0.4-2.fc11 Thunderbird/3.0.4
MIME-Version: 1.0
To: Richard Purdie <rpurdie@linux.intel.com>
References: <4CDB2A52.6060400@mlbassoc.com> <1289539963.1272.3055.camel@rex>
In-Reply-To: <1289539963.1272.3055.camel@rex>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: SSTATE builds more broken than I thought
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
X-List-Received-Date: Fri, 12 Nov 2010 08:18:18 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/11/2010 10:32 PM, Richard Purdie wrote:
> On Wed, 2010-11-10 at 16:27 -0700, Gary Thomas wrote:
>> It seems that when you have SSTATE_MIRRORS enabled, certain
>> files are ending up in the wrong place.  In particular, there
>> are a bunch of files "*deploy-ipk*" being placed in ${OEROOT}/...!!
>>
>> Here's what I just discovered after trying my little experiment
>> (bug #526) yesterday.
>>
>> $ find /tmp/poky-master/ -name "*deploy-ipk*"
>> /tmp/poky-master/meta/recipes-kernel/linux/files/sstate-linux-wrs-qemuarm-poky-linux-gnueabi-2.6.34+git0+d1cd5c80ee97e81e130be8c3de3965b770f320d6_0+4f4177b4bea5b8858acc1eeb788d80b7af0df962-r12-armv5te-1-3559c0381a4081ae6e23a5ba8bc7d435_deploy-ipk.tgz
>> /tmp/poky-master/meta/recipes-core/images/sstate-poky-image-minimal-qemuarm-poky-linux-gnueabi-1.0-r0-armv5te-1-393bfe7f6b63c8fb85b7fbf1281a33a3_deploy-ipk.tgz
>> /tmp/poky-master/meta/recipes-core/tasks/sstate-task-poky-boot-qemuarm-poky-linux-gnueabi-1.0-r7-armv5te-1-6cceb5879edee4d66ae5644664ee4586_deploy-ipk.tgz
>> /tmp/poky-master/meta/recipes-extended/zypper/zypper/sstate-zypper-armv5te-poky-linux-gnueabi-1.4.7-git0+9eb0e248e06c8d20ad054be2439149d9ede37531-r1-armv5te-1-f6d39a32074b296543290cf29d982031_deploy-ipk.tgz
>> /tmp/poky-master/meta/recipes-extended/procps/procps-3.2.7/sstate-procps-armv5te-poky-linux-gnueabi-3.2.7-r9-armv5te-1-f65081285df4fe29a846cfebd18ca2ca_deploy-ipk.tgz
>>
>> /tmp/poky-master is my original Poky (${OEROOT} in old terminology)
>> tree.  My build tree is somewhere totally different.
>>
>> This was after building the same image.  If I build something new,
>> it gets much worse:
>>
>> $ find /tmp/poky-master/ -name "*deploy-ipk*"
>> /tmp/poky-master/meta/recipes-support/libcap/sstate-libcap-armv5te-poky-linux-gnueabi-2.19-r1-armv5te-1-04f875e9f6b875a448302ae572f13c80_deploy-ipk.tgz
>> /tmp/poky-master/meta/recipes-support/libevent/sstate-libevent-armv5te-poky-linux-gnueabi-1.4.14b-r0-armv5te-1-d6dab558e9ae7defd7ba47bef5830330_deploy-ipk.tgz
>> /tmp/poky-master/meta/recipes-connectivity/nfs-utils/sstate-libnfsidmap-armv5te-poky-linux-gnueabi-0.23-r0-armv5te-1-1034a99ba6e20f1e4c21e2baa756d7bc_deploy-ipk.tgz
>> /tmp/poky-master/meta/recipes-connectivity/nfs-utils/nfs-utils/sstate-nfs-utils-armv5te-poky-linux-gnueabi-1.2.2-r1-armv5te-1-1857f64d548cfe271a6b6f43db03867e_deploy-ipk.tgz
>> /tmp/poky-master/meta/recipes-connectivity/portmap/portmap-6.0/sstate-portmap-armv5te-poky-linux-gnueabi-6.0-r7-armv5te-1-7aa6ab3c84b6fdb798f2e2865c8b0b85_deploy-ipk.tgz
>> /tmp/poky-master/meta/recipes-kernel/linux/files/sstate-linux-wrs-qemuarm-poky-linux-gnueabi-2.6.34+git0+d1cd5c80ee97e81e130be8c3de3965b770f320d6_0+4f4177b4bea5b8858acc1eeb788d80b7af0df962-r12-armv5te-1-3559c0381a4081ae6e23a5ba8bc7d435_deploy-ipk.tgz
>> /tmp/poky-master/meta/recipes-core/images/sstate-poky-image-minimal-qemuarm-poky-linux-gnueabi-1.0-r0-armv5te-1-393bfe7f6b63c8fb85b7fbf1281a33a3_deploy-ipk.tgz
>> /tmp/poky-master/meta/recipes-core/tasks/sstate-task-poky-boot-qemuarm-poky-linux-gnueabi-1.0-r7-armv5te-1-6cceb5879edee4d66ae5644664ee4586_deploy-ipk.tgz
>> /tmp/poky-master/meta/recipes-core/util-linux/util-linux-2.17.2/sstate-util-linux-armv5te-poky-linux-gnueabi-2.17.2-r1-armv5te-1-7150d2c180d3f6453a1555f2384e0ad6_deploy-ipk.tgz
>> /tmp/poky-master/meta/recipes-devtools/flex/sstate-flex-armv5te-poky-linux-gnueabi-2.5.35-r1-armv5te-1-9823f95f24a63065e045fab33ffc3b8a_deploy-ipk.tgz
>> /tmp/poky-master/meta/recipes-devtools/bison/bison/sstate-bison-armv5te-poky-linux-gnueabi-2.4.2-r0-armv5te-1-1617549c8529ac8e79ff62051cbf937e_deploy-ipk.tgz
>> /tmp/poky-master/meta/recipes-extended/pam/libpam-1.1.1/sstate-libpam-armv5te-poky-linux-gnueabi-1.1.1-r1-armv5te-1-19848d9fbff9cb63512c4f862321e2b9_deploy-ipk.tgz
>> /tmp/poky-master/meta/recipes-extended/tcp-wrappers/tcp-wrappers-7.6/sstate-tcp-wrappers-armv5te-poky-linux-gnueabi-7.6-r0-armv5te-1-9ea49de542653cd771ead8864ee1ec8e_deploy-ipk.tgz
>> /tmp/poky-master/meta/recipes-extended/zypper/zypper/sstate-zypper-armv5te-poky-linux-gnueabi-1.4.7-git0+9eb0e248e06c8d20ad054be2439149d9ede37531-r1-armv5te-1-f6d39a32074b296543290cf29d982031_deploy-ipk.tgz
>> /tmp/poky-master/meta/recipes-extended/procps/procps-3.2.7/sstate-procps-armv5te-poky-linux-gnueabi-3.2.7-r9-armv5te-1-f65081285df4fe29a846cfebd18ca2ca_deploy-ipk.tgz
>>
>> Conclusion: when SSTATE_MIRRORS are enabled, some intermediate packages
>> are being written in the Poky (${OEROOT}) tree which should not be touched
>> by a build.
>>
>> Filed as bug #533
>
> Are these all files or are they symlinks? Are they just present for
> deploy-ipk or are there others?

They are files.

Sorry, but I don't understand your other question.  These are the only
extra files polluting the tree, except for Python *.py? object files
which are also always created.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

