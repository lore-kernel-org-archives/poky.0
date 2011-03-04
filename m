Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 96DA44C80050
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 22:38:12 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 03 Mar 2011 20:38:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,262,1297065600"; d="scan'208";a="893666853"
Received: from unknown (HELO [10.255.12.133]) ([10.255.12.133])
	by fmsmga001.fm.intel.com with ESMTP; 03 Mar 2011 20:36:47 -0800
Message-ID: <4D706C5F.6010106@linux.intel.com>
Date: Thu, 03 Mar 2011 20:36:47 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <b9dded$i440ij@orsmga002.jf.intel.com>
	<4D6FC6E0.3070303@mlbassoc.com>
In-Reply-To: <4D6FC6E0.3070303@mlbassoc.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/2] module: build and clean hostprogs for each module
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
X-List-Received-Date: Fri, 04 Mar 2011 04:38:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/03/2011 08:50 AM, Gary Thomas wrote:
> On 03/02/2011 11:00 AM, Darren Hart wrote:
>> From: Darren Hart<dvhart@linux.intel.com>
>>
>> This fixes [BUGID #241]
>>
>> The kernel hostprogs are built for the host architecture. They should not
>> be deployed with to the target, and they should not be included in an
>> sstate
>> package which might get reused on a host of a different architecture.
>>
>> As we don't build many out-of-tree modules, this patch takes the approach
>> of building the hostprogs as part of the module compile process with a
>> do_compile_prepend() routine in module.bbclass. To ensure the hostprogs
>> don't contaminate the build, they are removed in do_install_append().
>>
>> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
>> CC: Gary Thomas<gary@mlbassoc.com>
>
> Sadly, this doesn't seem to work for me. I don't see any indication in
> run.do_compile that the extra steps were added at all.
>
> Will it matter if my recipe overrides the do_compile() method?

No, if you override do_compile(), the do_compile_prepend() from 
module.bbclass will still run - provided of course that you:

inherit module

--
Darren

>
>> ---
>> meta/classes/module.bbclass | 21 ++++++++++++++++++++-
>> 1 files changed, 20 insertions(+), 1 deletions(-)
>>
>> diff --git a/meta/classes/module.bbclass b/meta/classes/module.bbclass
>> index d16d462..78f9b0a 100644
>> --- a/meta/classes/module.bbclass
>> +++ b/meta/classes/module.bbclass
>> @@ -3,6 +3,15 @@ DEPENDS += "virtual/kernel"
>>
>> inherit module-base
>>
>> +# Ensure the hostprogs are available for module compilation
>> +module_do_compile_prepend() {
>> + unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
>> + oe_runmake CC="${KERNEL_CC}" LD="${KERNEL_LD}" AR="${KERNEL_AR}" \
>> + -C ${STAGING_KERNEL_DIR} clean SUBDIRS=scripts
>> + oe_runmake CC="${KERNEL_CC}" LD="${KERNEL_LD}" AR="${KERNEL_AR}" \
>> + -C ${STAGING_KERNEL_DIR} scripts
>> +}
>> +
>> module_do_compile() {
>> unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
>> oe_runmake KERNEL_PATH=${STAGING_KERNEL_DIR} \
>> @@ -15,7 +24,17 @@ module_do_compile() {
>>
>> module_do_install() {
>> unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
>> - oe_runmake DEPMOD=echo INSTALL_MOD_PATH="${D}" CC="${KERNEL_CC}"
>> LD="${KERNEL_LD}" modules_install
>> + oe_runmake DEPMOD=echo INSTALL_MOD_PATH="${D}" \
>> + KERNEL_SRC=${STAGING_KERNEL_DIR} \
>> + CC="${KERNEL_CC}" LD="${KERNEL_LD}" \
>> + modules_install
>> +}
>> +
>> +# Remove the hostprogs from the STAGING_KERNEL_DIR
>> +module_do_install_append() {
>> + unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
>> + oe_runmake CC="${KERNEL_CC}" LD="${KERNEL_LD}" AR="${KERNEL_AR}" \
>> + -C ${STAGING_KERNEL_DIR} clean SUBDIRS=scripts
>> }
>>
>> pkg_postinst_append () {
>


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

