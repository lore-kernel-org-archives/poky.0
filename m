Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id F27484C80BD4
	for <poky@lists.pokylinux.org>; Sat, 22 Jan 2011 11:44:28 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 4CEA6166032D; Sat, 22 Jan 2011 10:44:28 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 97047166031C;
	Sat, 22 Jan 2011 10:44:25 -0700 (MST)
Message-ID: <4D3B1779.50504@mlbassoc.com>
Date: Sat, 22 Jan 2011 10:44:25 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D3850B3.2030100@mlbassoc.com>	 <1295619024.14388.30678.camel@rex>
	<4D399769.1050803@mlbassoc.com> <1295626657.14388.31197.camel@rex>
	<4D39F115.90909@mlbassoc.com>
In-Reply-To: <4D39F115.90909@mlbassoc.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: What's taking so long??
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
X-List-Received-Date: Sat, 22 Jan 2011 17:44:29 -0000
X-Groupsio-MsgNum: 2728
Content-Type: multipart/mixed; boundary="------------070802020400090006080009"

--------------070802020400090006080009
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/21/2011 01:48 PM, Gary Thomas wrote:
> On 01/21/2011 09:17 AM, Richard Purdie wrote:
>> On Fri, 2011-01-21 at 07:25 -0700, Gary Thomas wrote:
>>> This particular test was isolated, just that one recipe. I noticed
>>> it before when building a complete image, so running it isolated does not
>>> seem to make any difference. There is also nothing else running on my build
>>> machine (it's a separate server that is used only for builds)
>>>
>>> This is against master as of 2011-01-14 (897530621fabf3c345c302050a5c21e16097a2ba)
>>> with my local layers.
>>>
>>> What can I look at (alternatively what data can I provide) to help
>>> understand this?
>>
>> You could try pulling in:
>> http://git.pokylinux.org/cgit.cgi/poky/commit/?id=ede381d56b180b384fdad98d445e5430819cfade
>> http://git.pokylinux.org/cgit.cgi/poky/commit/?id=7857834691868b7f48f732ee78d8770f5473ff68
>> http://git.pokylinux.org/cgit.cgi/poky/commit/?id=fd88588df029604689db9b0e30c55aad68392a5d
>>
>> and see if they fix the problem. I'm not sure that they would in a
>> single task case but who knows. You could also try adding timings as per
>> my previous email, the change to package.bbclass was simply:
>>
>> diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
>> index 8e7fa26..8b0cb96 100644
>> --- a/meta/classes/package.bbclass
>> +++ b/meta/classes/package.bbclass
>> @@ -1082,6 +1082,7 @@ python package_do_package () {
>> return
>>
>> for f in (bb.data.getVar('PACKAGEFUNCS', d, True) or '').split():
>> + bb.error("Running %s" % f)
>> bb.build.exec_func(f, d)
>> }
>> do_package[dirs] = "${SHLIBSWORKDIR} ${PKGDESTWORK} ${D}"
>>
>> as I'd like to understand of the 23 minutes, where the time is being spent.
>
> For my board:
> Fri Jan 21 10:12:13 MST 2011: NOTE: Running task 658 of 661 (ID: 11, /home/local/poky-amltd/meta-amltd/packages/linux/linux-am_2.6.32.bb, do_package)
> Fri Jan 21 10:12:13 MST 2011: NOTE: package linux-am-2.6.32-r0: task do_package: Started
> Fri Jan 21 10:12:13 MST 2011: ERROR: Running perform_packagecopy
> Fri Jan 21 10:12:27 MST 2011: ERROR: Running package_do_split_locales
> Fri Jan 21 10:12:27 MST 2011: ERROR: Running populate_packages
> Fri Jan 21 10:12:27 MST 2011: WARNING: <string>:5: RuntimeWarning: tmpnam is a potential security risk to your program
> Fri Jan 21 10:12:27 MST 2011:
> Fri Jan 21 10:12:45 MST 2011: NOTE: package linux-am-2.6.32-r0: task do_populate_sysroot: Succeeded
> Fri Jan 21 10:28:33 MST 2011: ERROR: Running package_do_filedeps
> Fri Jan 21 10:34:16 MST 2011: ERROR: Running package_do_shlibs
> Fri Jan 21 10:34:21 MST 2011: ERROR: Running package_do_pkgconfig
> Fri Jan 21 10:34:23 MST 2011: ERROR: Running read_shlibdeps
> Fri Jan 21 10:34:23 MST 2011: ERROR: Running package_depchains
> Fri Jan 21 10:34:23 MST 2011: ERROR: Running emit_pkgdata
> Fri Jan 21 10:34:23 MST 2011: ERROR: Running do_package_qa
>
> For the BeagleBoard:
> Fri Jan 21 13:32:22 MST 2011: NOTE: Running task 878 of 882 (ID: 17, /home/local/poky-amltd/meta/recipes-kernel/linux/linux-yocto-stable_git.bb, do_package)
> Fri Jan 21 13:32:22 MST 2011: NOTE: package linux-yocto-stable-2.6.34+git0+ed446ecd29e8c0f81ab8630a2db652121eeb0b75_0+35521a5a70316785a67aca1de1d39a7b84c49ccf-r1: task do_package:
> Started
> Fri Jan 21 13:32:23 MST 2011: ERROR: Running perform_packagecopy
> Fri Jan 21 13:32:25 MST 2011: ERROR: Running package_do_split_locales
> Fri Jan 21 13:32:26 MST 2011: ERROR: Running populate_packages
> Fri Jan 21 13:32:27 MST 2011: WARNING: <string>:5: RuntimeWarning: tmpnam is a potential security risk to your program
> Fri Jan 21 13:32:27 MST 2011:
> Fri Jan 21 13:32:31 MST 2011: NOTE: package linux-yocto-stable-2.6.34+git0+ed446ecd29e8c0f81ab8630a2db652121eeb0b75_0+35521a5a70316785a67aca1de1d39a7b84c49ccf-r1: task
> do_populate_sysroot: Succeeded
> Fri Jan 21 13:32:43 MST 2011: ERROR: Running package_do_filedeps
> Fri Jan 21 13:35:52 MST 2011: ERROR: Running package_do_shlibs
> Fri Jan 21 13:35:54 MST 2011: ERROR: Running package_do_pkgconfig
> Fri Jan 21 13:35:54 MST 2011: ERROR: Running read_shlibdeps
> Fri Jan 21 13:35:55 MST 2011: ERROR: Running package_depchains
> Fri Jan 21 13:35:55 MST 2011: ERROR: Running emit_pkgdata
> Fri Jan 21 13:35:55 MST 2011: ERROR: Running do_package_qa
>
> Interesting results. I'm going to run it again, with more messages
> in the two time consuming steps - populate_packages & package_do_filedeps
>

I've isolated it down to this section of code in 'populate_packages':

	unshipped = []
	for root, dirs, files in os.walk(dvar):	
		for f in files:
			path = os.path.join(root[len(dvar):], f)
			if ('.' + path) not in seen:
				unshipped.append(path)

	if unshipped != []:
		bb.note("the following files were installed but not shipped in any package:")
		for f in unshipped:		
			bb.note("  " + f)

The difference comes from what's in that ".../package" tree.
For my kernel:
   $ find /home/local/p60_poky/tmp/work/cobra3530p60-poky-linux-gnueabi/linux-am-2.6.32-r0/package | wc
      8567    8567 1098403
For the OTS BeagleBoard kernel:
   $ find 
/home/local/bb_poky/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto-stable-2.6.34+git0+ed446ecd29e8c0f81ab8630a2db652121eeb0b75_0+35521a5a70316785a67aca1de1d39a7b84c49ccf-r1/package 
| wc
      1598    1598  364151

I measured this and in the 'for f in unshipped:' loop above, each
iteration is taking ~125ms!  I have a hard time understanding why,
but 8567*125ms = 1070.875sec = 17.847min!

I also found that later on, in 'do_filedeps()', some packages take
an extraordinary amount of time.  Looking at a few:
Sat Jan 22 09:17:55 MST 2011: ERROR: do_filedeps: /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/perfile_rpmdeps.sh --rpmdeps 
/home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/rpmdeps --provides /home/local/p60_poky/tmp/work/cobra3530p60-poky-linux-gnueabi/linux-am-2.6.32-r0/packages-split/kernel-image
Sat Jan 22 09:17:55 MST 2011: ERROR: do_filedeps: /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/perfile_rpmdeps.sh --rpmdeps 
/home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/rpmdeps --requires /home/local/p60_poky/tmp/work/cobra3530p60-poky-linux-gnueabi/linux-am-2.6.32-r0/packages-split/kernel-image
Sat Jan 22 09:17:56 MST 2011: ERROR: do_filedeps: /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/perfile_rpmdeps.sh --rpmdeps 
/home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/rpmdeps --provides /home/local/p60_poky/tmp/work/cobra3530p60-poky-linux-gnueabi/linux-am-2.6.32-r0/packages-split/kernel-dev
Sat Jan 22 09:17:56 MST 2011: ERROR: do_filedeps: /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/perfile_rpmdeps.sh --rpmdeps 
/home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/rpmdeps --requires /home/local/p60_poky/tmp/work/cobra3530p60-poky-linux-gnueabi/linux-am-2.6.32-r0/packages-split/kernel-dev
Sat Jan 22 09:17:56 MST 2011: ERROR: do_filedeps: /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/perfile_rpmdeps.sh --rpmdeps 
/home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/rpmdeps --provides 
/home/local/p60_poky/tmp/work/cobra3530p60-poky-linux-gnueabi/linux-am-2.6.32-r0/packages-split/kernel-vmlinux
Sat Jan 22 09:17:56 MST 2011: ERROR: do_filedeps: /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/perfile_rpmdeps.sh --rpmdeps 
/home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/rpmdeps --requires 
/home/local/p60_poky/tmp/work/cobra3530p60-poky-linux-gnueabi/linux-am-2.6.32-r0/packages-split/kernel-vmlinux
Sat Jan 22 09:17:56 MST 2011: ERROR: do_filedeps: /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/perfile_rpmdeps.sh --rpmdeps 
/home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/rpmdeps --provides /home/local/p60_poky/tmp/work/cobra3530p60-poky-linux-gnueabi/linux-am-2.6.32-r0/packages-split/kernel-misc
Sat Jan 22 09:20:36 MST 2011: ERROR: do_filedeps: /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/perfile_rpmdeps.sh --rpmdeps 
/home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/rpmdeps --requires /home/local/p60_poky/tmp/work/cobra3530p60-poky-linux-gnueabi/linux-am-2.6.32-r0/packages-split/kernel-misc
Sat Jan 22 09:23:28 MST 2011: ERROR: do_filedeps: /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/perfile_rpmdeps.sh --rpmdeps 
/home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/rpmdeps --provides 
/home/local/p60_poky/tmp/work/cobra3530p60-poky-linux-gnueabi/linux-am-2.6.32-r0/packages-split/kernel-module-crc-itu-t
Sat Jan 22 09:23:28 MST 2011: ERROR: do_filedeps: /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/perfile_rpmdeps.sh --rpmdeps 
/home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/rpmdeps --requires 
/home/local/p60_poky/tmp/work/cobra3530p60-poky-linux-gnueabi/linux-am-2.6.32-r0/packages-split/kernel-module-crc-itu-t
Sat Jan 22 09:23:28 MST 2011: ERROR: do_filedeps: /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/perfile_rpmdeps.sh --rpmdeps 
/home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/rpmdeps --provides 
/home/local/p60_poky/tmp/work/cobra3530p60-poky-linux-gnueabi/linux-am-2.6.32-r0/packages-split/kernel-module-g-cdc
Sat Jan 22 09:23:29 MST 2011: ERROR: do_filedeps: /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/perfile_rpmdeps.sh --rpmdeps 
/home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/rpm/rpmdeps --requires 
/home/local/p60_poky/tmp/work/cobra3530p60-poky-linux-gnueabi/linux-am-2.6.32-r0/packages-split/kernel-module-g-cdc

You'll see that most take a few seconds (at most), but the 'kernel-misc'
package is taking 6 minutes by itself!  This particular sub-package seems
to be completely different between the two kernels.
Mine:
-rwxrw-r-- 1 gthomas gthomas  8627800 Jan 22 09:25 tmp/deploy/ipk/cobra3530p60/kernel-misc_2.6.32-r0_cobra3530p60.ipk
OTS BeagleBoard:
-rwxrw-r-- 1 gthomas gthomas    72014 Jan 22 10:12 
tmp/deploy/ipk/beagleboard/kernel-misc_2.6.34+git0+ed446ecd29e8c0f81ab8630a2db652121eeb0b75_0+35521a5a70316785a67aca1de1d39a7b84c49ccf-r1_beagleboard.ipk

I think this boils down to the actual kernel recipe - mine (attached) is
based on the older setup and includes "linux.inc" whereas the
BeagleBoard was built using a newer recipe which includes "linux-yocto.inc"
I tried just changing to use linux-yocto, but there seems to be much different
and nothing seemed to build properly anymore.  Any comments on this would
be appreciated.

At least now I know where the time is being spent...

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------070802020400090006080009
Content-Type: text/plain;
 name="linux-am_2.6.32.bb"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="linux-am_2.6.32.bb"

cmVxdWlyZSByZWNpcGVzLWtlcm5lbC9saW51eC9saW51eC5pbmMKCkRFU0NSSVBUSU9OID0gIk15
IExpbnV4IGtlcm5lbCIKCkRFUEVORFMgKz0gImxpbnV4LWZpcm13YXJlICIKUFYgPSAiMi42LjMy
IgoKIyBOb3RlOiBkZWZjb25maWcgY29tZXMgZnJvbSB0YXJnZXQgcmVjaXBlLCBhcyBkb2VzIHRo
ZSBtYWNoaW5lIHNwZWNpZmljIHBhdGNoc2V0ClNSQ19VUkkgPSAiaHR0cDovL3d3dy5tbGJhc3Nv
Yy5jb20vcmVwb3MvcHVibGljL2xpbnV4LWFtLSR7UFZ9LnRhci5iejIgXAogICAgICAgICAgIGZp
bGU6Ly8ke01BQ0hJTkV9LnBhdGNoIFwKICAgICAgICAgICBmaWxlOi8vZGVmY29uZmlnIFwKIgpM
SUNfRklMRVNfQ0hLU1VNID0gImZpbGU6Ly9DT1BZSU5HO21kNT1kNzgxMGZhYjc0ODdmYjBhYWQz
MjdiNzZmMWJlN2NkNyAiCgoKCgoK

--------------070802020400090006080009--
