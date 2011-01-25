Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7C2DA4C80039
	for <poky@lists.pokylinux.org>; Tue, 25 Jan 2011 06:08:18 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 5B3A4166027D; Tue, 25 Jan 2011 05:08:17 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 202F616601EB;
	Tue, 25 Jan 2011 05:08:16 -0700 (MST)
Message-ID: <4D3EBD30.2070708@mlbassoc.com>
Date: Tue, 25 Jan 2011 05:08:16 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4D3D6AFC.8060300@mlbassoc.com> <1295872759.14388.44775.camel@rex>
	<4D3E0323.2080905@linux.intel.com>
In-Reply-To: <4D3E0323.2080905@linux.intel.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Poky on "standard" PC
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
X-List-Received-Date: Tue, 25 Jan 2011 12:08:24 -0000
X-Groupsio-MsgNum: 2801
Content-Type: multipart/mixed; boundary="------------060703090206000005090702"

--------------060703090206000005090702
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/24/2011 03:54 PM, Darren Hart wrote:
> On 01/24/2011 04:39 AM, Richard Purdie wrote:
>> On Mon, 2011-01-24 at 05:05 -0700, Gary Thomas wrote:
>>> I wanted to try Poky on a spare laptop, so I went looking
>>> for an appropriate configuration to build.
>>>
>>> From 'README.hardware' (last updated 2010-12-16), I read:
>>> Poky Boot CD (bootcdx86)
>>> ========================
>>>
>>> The Poky boot CD iso images are designed as a demonstration of the Poky
>>> environment and to show the versatile image formats Poky can generate. It will
>>> run on Pentium2 or greater PC style computers. The iso image can be
>>> burnt to CD and then booted from.
>>>
>>> When I tried it (it's also listed in the default local.conf),
>>> I got this error:
>>> Please set TARGET_ARCH directly, or choose a MACHINE or DISTRO that does so.
>>> Please set a valid MACHINE in your local.conf
>>>
>>> There seems to be no machine named 'bootcd*' anywhere :-(
>>>
>>> What should I be using?
>>
>> bootcdx86 was superceeded by the -live images. I'd suggest using the
>> qemux86 or atom-pc machines and building a -live image, dd that to a usb
>> stick and boot that on the laptop. An iso format image is also generated
>> that can be placed onto a CD.
>
> It will have to be atom-pc as qemu doesn't provide live images (last I checked, a few weeks back).

Sadly, this doesn't build :-(  Failed in compile_perf, log attached.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------060703090206000005090702
Content-Type: text/plain;
 name="log.do_compile_perf"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="log.do_compile_perf"

NOTE: make -C /home/local/pc_poky/tmp/work/atom-pc-poky-linux/linux-yocto-stable-2.6.34+git0+b0615811ce38836d1ade230e3bdb1efaaa68471f_0+35521a5a70316785a67aca1de1d39a7b84c49ccf-r1/linux/tools/perf CC=ccache i586-poky-linux-gcc -m32 -march=core2 -msse3 -mtune=generic -mfpmath=sse --sysroot=/home/local/pc_poky/tmp/sysroots/core2-poky-linux LD=i586-poky-linux-ld --sysroot=/home/local/pc_poky/tmp/sysroots/core2-poky-linux prefix=/usr
make: Entering directory `/home/local/pc_poky/tmp/work/atom-pc-poky-linux/linux-yocto-stable-2.6.34+git0+b0615811ce38836d1ade230e3bdb1efaaa68471f_0+35521a5a70316785a67aca1de1d39a7b84c49ccf-r1/linux/tools/perf'
Makefile:508: No libdw.h found or old libdw.h found, disables dwarf support. Please install elfutils-devel/elfutils-dev
Makefile:563: No bfd.h/libbfd found, install binutils-dev[el]/zlib-static to gain symbol demangling
PERF_VERSION = 0.0.2.PERF
make: Leaving directory `/home/local/pc_poky/tmp/work/atom-pc-poky-linux/linux-yocto-stable-2.6.34+git0+b0615811ce38836d1ade230e3bdb1efaaa68471f_0+35521a5a70316785a67aca1de1d39a7b84c49ccf-r1/linux/tools/perf'
make: Entering directory `/home/local/pc_poky/tmp/work/atom-pc-poky-linux/linux-yocto-stable-2.6.34+git0+b0615811ce38836d1ade230e3bdb1efaaa68471f_0+35521a5a70316785a67aca1de1d39a7b84c49ccf-r1/linux/tools/perf'
Makefile:508: No libdw.h found or old libdw.h found, disables dwarf support. Please install elfutils-devel/elfutils-dev
Makefile:563: No bfd.h/libbfd found, install binutils-dev[el]/zlib-static to gain symbol demangling
    GEN common-cmds.h
    * new build flags or prefix
    CC perf.o
    CC builtin-annotate.o
    CC builtin-bench.o
    CC bench/sched-messaging.o
    CC bench/sched-pipe.o
    CC bench/mem-memcpy.o
    CC builtin-diff.o
    CC builtin-help.o
    CC builtin-sched.o
    CC builtin-buildid-list.o
    CC builtin-buildid-cache.o
    CC builtin-list.o
    CC builtin-record.o
    CC builtin-report.o
    CC builtin-stat.o
    CC builtin-timechart.o
    CC builtin-top.o
    CC builtin-trace.o
    CC builtin-probe.o
    CC builtin-kmem.o
    CC builtin-lock.o
    CC util/abspath.o
    CC util/alias.o
    CC util/build-id.o
    CC util/config.o
    CC util/ctype.o
    CC util/debugfs.o
    CC util/environment.o
    CC util/event.o
    CC util/exec_cmd.o
    CC util/help.o
    CC util/levenshtein.o
    CC util/parse-options.o
    CC util/parse-events.o
    CC util/path.o
    CC util/rbtree.o
    CC util/bitmap.o
    CC util/hweight.o
    CC util/find_next_bit.o
    CC util/run-command.o
    CC util/quote.o
    CC util/strbuf.o
    CC util/string.o
    CC util/strlist.o
    CC util/usage.o
    CC util/wrapper.o
    CC util/sigchain.o
    CC util/symbol.o
    CC util/color.o
    CC util/pager.o
    CC util/header.o
    CC util/callchain.o
    CC util/values.o
    CC util/debug.o
    CC util/map.o
    CC util/session.o
    CC util/thread.o
    CC util/trace-event-parse.o
    CC util/trace-event-read.o
    CC util/trace-event-info.o
    CC util/trace-event-scripting.o
    CC util/svghelper.o
    CC util/sort.o
    CC util/hist.o
    CC util/probe-event.o
    CC util/util.o
    CC util/cpumap.o
    CC util/scripting-engines/trace-event-perl.o
cc1: warnings being treated as errors
cc1: error: include location "/usr/local/include" is unsafe for cross-compilation
make: *** [util/scripting-engines/trace-event-perl.o] Error 1
make: Leaving directory `/home/local/pc_poky/tmp/work/atom-pc-poky-linux/linux-yocto-stable-2.6.34+git0+b0615811ce38836d1ade230e3bdb1efaaa68471f_0+35521a5a70316785a67aca1de1d39a7b84c49ccf-r1/linux/tools/perf'
FATAL: oe_runmake failed
Function 'do_compile_perf' failed (see /home/local/pc_poky/tmp/work/atom-pc-poky-linux/linux-yocto-stable-2.6.34+git0+b0615811ce38836d1ade230e3bdb1efaaa68471f_0+35521a5a70316785a67aca1de1d39a7b84c49ccf-r1/temp/log.do_compile_perf.24377 for further information)
ERROR: Function 'do_compile_perf' failed (see /home/local/pc_poky/tmp/work/atom-pc-poky-linux/linux-yocto-stable-2.6.34+git0+b0615811ce38836d1ade230e3bdb1efaaa68471f_0+35521a5a70316785a67aca1de1d39a7b84c49ccf-r1/temp/log.do_compile_perf.24377 for further information)

--------------060703090206000005090702--
