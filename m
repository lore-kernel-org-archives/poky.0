Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D46AE02328; Mon, 11 Jun 2018 18:46:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD2EDE01813
	for <poky@yoctoproject.org>; Mon, 11 Jun 2018 18:46:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w5C1jKB3016945
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 11 Jun 2018 18:45:46 -0700
Received: from [128.224.162.218] (128.224.162.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.399.0;
	Mon, 11 Jun 2018 18:45:16 -0700
To: <poky@yoctoproject.org>, <nick83ola@gmail.com>
References: <CABPh3UMsooqLDJ+Aq1DiObxoi12a2Oj68nO51ALjgBet2SwkAw@mail.gmail.com>
	<CABPh3UNYziLzCSJZA==MeA_fyAQzXR4RGbSmVqsfP0M7-VZkbA@mail.gmail.com>
	<CABPh3UMUKFKmq78qUM6QPY4gEFHbW2AAb99c6d-ds_TEqW261Q@mail.gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <1c84aa84-2f84-385d-8c1c-36ae8dff7334@windriver.com>
Date: Tue, 12 Jun 2018 09:47:57 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CABPh3UMUKFKmq78qUM6QPY4gEFHbW2AAb99c6d-ds_TEqW261Q@mail.gmail.com>
X-Originating-IP: [128.224.162.218]
Subject: Re: [PATCH] systemd: resolved linked even if the option is disabled
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
X-List-Received-Date: Tue, 12 Jun 2018 01:46:14 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Nicola,

Patches for recipes in oe-core should be sent to 
openembedded-core@lists.openembedded.org.

Back to this patch, I think you need to first check the following three 
commits.

commit 00e4662e55f66570cae29240c22b4d74b79d3ca5
Author: Maxin B. John <maxin.john@intel.com>
Date:   Mon Jun 12 18:10:21 2017 +0300

     systemd: enable resolved and networkd

     Enable systemd-resolved and systemd-networkd by default.
     Make it co-exist with connman and  Fix associated problems
     in read-only rootfs.

     Fixes [YOCTO #11331]

     (From OE-Core rev: d9b6d538e3d81ab0d5e7b7b6adecef555d782217)

     Signed-off-by: Maxin B. John <maxin.john@intel.com>
     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

commit 669edd04432f8e76e32bd7f34f4d9aa63eef4038
Author: Khem Raj <raj.khem@gmail.com>
Date:   Fri Dec 16 14:07:31 2016 -0800

     systemd: point to correct resolv.conf when resolved is enabled

     latest systemd has changed the resolved defaults which points to
     127.0.0.53 port 53 on local network. If someone wants to use
     host-local IP address then it can be pointed to copy in /lib/systemd

     (From OE-Core rev: 99d1199fd0961f94732a1a533d66472ca17cf6f5)

     Signed-off-by: Khem Raj <raj.khem@gmail.com>
     Signed-off-by: Ross Burton <ross.burton@intel.com>
     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

commit b80da02ce9b683f96393fe0ea1f5f1a5f1a07c89
Author: Christopher Larson <chris_larson@mentor.com>
Date:   Wed Nov 4 20:19:19 2015 -0700

     systemd: arrange for volatile /etc/resolv.conf

     On sysvinit systems, volatiles is configured to make 
/etc/resolv.conf symlink
     to a file in a volatile path, which lets us write to 
/etc/resolv.conf for
     read-only-rootfs. For systemd, this isn't set up unless we enable
     systemd-resolved, which we don't by default. When it's not enabled, 
create the
     /etc/resolv.conf symlink and ensure the volatile path is created on 
boot with
     tmpfiles.d.

     (From OE-Core rev: 7f087f161e8942bcd35f88999dfca418f01cd7fa)

     Signed-off-by: Christopher Larson <chris_larson@mentor.com>
     Signed-off-by: Ross Burton <ross.burton@intel.com>
     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

What's the actual build or runtime problem in your case?

Best Regards,
Chen Qi

On 06/11/2018 07:40 PM, nick83ola wrote:
> Hi,
>
> Anyone can look at this?
>
> Thanks
> Nicola Lunghi
>
> On Wed, 6 Jun 2018 at 09:48, nick83ola <nick83ola@gmail.com> wrote:
>> ping
>>
>> On 30 May 2018 at 14:24, nick83ola <nick83ola@gmail.com> wrote:
>>> systemd: resolved linked even if the option is disabled
>>>
>>> in the do_install function in systemd recipe the condition to check
>>> if the resolved option is selected is reversed (wrong !).
>>> This is for example true if we compile systemd with musl instead of
>>> glibc (every poky-image-minimal recipe).
>>>
>>> Also no link should be created if the option is not selected
>>> nor an ALTERNATIVE set.
>>>
>>> Signed-off-by: Nicola Lunghi <nick83ola@gmail.com>
>>> ---
>>>   meta/recipes-core/systemd/systemd_237.bb | 8 +++-----
>>>   1 file changed, 3 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/meta/recipes-core/systemd/systemd_237.bb
>>> b/meta/recipes-core/systemd/systemd_237.bb
>>> index 2e6558ded1..2eea6af508 100644
>>> --- a/meta/recipes-core/systemd/systemd_237.bb
>>> +++ b/meta/recipes-core/systemd/systemd_237.bb
>>> @@ -256,14 +256,11 @@ do_install() {
>>>       if [ -s ${D}${exec_prefix}/lib/tmpfiles.d/systemd.conf ]; then
>>>           ${@bb.utils.contains('PACKAGECONFIG', 'networkd', ':', 'sed -i -e
>>> "\$ad /run/systemd/netif/links 0755 root root -"
>>> ${D}${exec_prefix}/lib/tmpfiles.d/systemd.conf', d)}
>>>       fi
>>> -    if ! ${@bb.utils.contains('PACKAGECONFIG', 'resolved', 'true', 'false',
>>> d)}; then
>>> +    if ${@bb.utils.contains('PACKAGECONFIG', 'resolved', 'true', 'false',
>>> d)}; then
>>>           echo 'L! ${sysconfdir}/resolv.conf - - - -
>>> ../run/systemd/resolve/resolv.conf'
>>>>> ${D}${exec_prefix}/lib/tmpfiles.d/etc.conf
>>>           echo 'd /run/systemd/resolve 0755 root root -'
>>>>> ${D}${exec_prefix}/lib/tmpfiles.d/systemd.conf
>>>           echo 'f /run/systemd/resolve/resolv.conf 0644 root root'
>>>>> ${D}${exec_prefix}/lib/tmpfiles.d/systemd.conf
>>>           ln -s ../run/systemd/resolve/resolv.conf
>>> ${D}${sysconfdir}/resolv-conf.systemd
>>> -    else
>>> -        sed -i -e "s%^L! /etc/resolv.conf.*$%L! /etc/resolv.conf - - - -
>>> ../run/systemd/resolve/resolv.conf%g"
>>> ${D}${exec_prefix}/lib/tmpfiles.d/etc.conf
>>> -        ln -s ../run/systemd/resolve/resolv.conf
>>> ${D}${sysconfdir}/resolv-conf.systemd
>>>       fi
>>>       install -Dm 0755 ${S}/src/systemctl/systemd-sysv-install.SKELETON
>>> ${D}${systemd_unitdir}/systemd-sysv-install
>>>
>>> @@ -537,7 +534,7 @@ python __anonymous() {
>>>   # TODO:
>>>   # u-a for runlevel and telinit
>>>
>>> -ALTERNATIVE_${PN} = "init halt reboot shutdown poweroff runlevel
>>> resolv-conf"
>>> +ALTERNATIVE_${PN} = "init halt reboot shutdown poweroff runlevel"
>>>
>>>   ALTERNATIVE_TARGET[init] = "${rootlibexecdir}/systemd/systemd"
>>>   ALTERNATIVE_LINK_NAME[init] = "${base_sbindir}/init"
>>> @@ -563,6 +560,7 @@ ALTERNATIVE_TARGET[runlevel] =
>>> "${base_bindir}/systemctl"
>>>   ALTERNATIVE_LINK_NAME[runlevel] = "${base_sbindir}/runlevel"
>>>   ALTERNATIVE_PRIORITY[runlevel] ?= "300"
>>>
>>> +ALTERNATIVE_${PN} += "${@bb.utils.contains('PACKAGECONFIG', 'resolved',
>>> 'resolv-conf', '', d)}"
>>>   ALTERNATIVE_TARGET[resolv-conf] = "${sysconfdir}/resolv-conf.systemd"
>>>   ALTERNATIVE_LINK_NAME[resolv-conf] = "${sysconfdir}/resolv.conf"
>>>   ALTERNATIVE_PRIORITY[resolv-conf] ?= "50"
>>> --
>>> 2.17.0
>>>
>>>


