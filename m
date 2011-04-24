Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id A30714C80578
	for <poky@yoctoproject.org>; Sun, 24 Apr 2011 15:16:52 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 24 Apr 2011 13:16:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,263,1301900400"; d="scan'208";a="683260176"
Received: from unknown (HELO [10.255.12.237]) ([10.255.12.237])
	by fmsmga002.fm.intel.com with ESMTP; 24 Apr 2011 13:16:51 -0700
Message-ID: <4DB48532.3030605@linux.intel.com>
Date: Sun, 24 Apr 2011 13:16:50 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Cui, Dexuan" <dexuan.cui@intel.com>, 
	'Patches and discussions about the oe-core layer'
	<openembedded-core@lists.openembedded.org>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: gdb and lttng-ust 0.12
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
X-List-Received-Date: Sun, 24 Apr 2011 20:16:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Dexuan,

It seems that when you updated lttng-ust to 0.12, it installed an 
/usr/include/ust directory that GDB now finds.  This caused the 
gdbserver code to not build.

I investigated this and it seems to be due to gdb having a dependency on 
UST that causes GDB not to compile.  I think at this point we may want 
to continue with UST disabled in gdb.

To reproduce this, ensure that lttng-ust-0.12 is built before building 
gdb and you should see a compilation failure.

My concern here is that if fix the GDB compilation failures, what else 
is going to fail as far as debugging with UST enabled on the remote, I 
know this feature is something we want, and should probably report to 
the GDB upstream.

The fix seems to be as simple as adding "--without-ust" to the gdb 
EXTRA_OECONF line.

Comments?

-- 
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System

Error while compiling tracepoint.c -> tracepoint-ipa.o (note it's -ipa.o 
so a different set of flags).


| ccache i586-poky-linux-gcc -march=i586 
--sysroot=/vol/1/sgw/autobuilder/poky-slave/poky-full-ia/build/build/tmp/sysroots/qemux86 
-c  -Wall    -I. 
-I/vol/1/sgw/autobuilder/poky-slave/poky-full-ia/build/build/tmp/work/i586-poky-linux/gdb-7.2-r0/gdb-7.2/gdb/gdbserver 
-I/vol/1/sgw/autobuilder/poky-slave/poky-full-ia/build/build/tmp/work/i586-poky-linux/gdb-7.2-r0/gdb-7.2/gdb/gdbserver/../common 
-I/vol/1/sgw/autobuilder/poky-slave/poky-full-ia/build/build/tmp/work/i586-poky-linux/gdb-7.2-r0/gdb-7.2/gdb/gdbserver/../regformats 
-I/vol/1/sgw/autobuilder/poky-slave/poky-full-ia/build/build/tmp/work/i586-poky-linux/gdb-7.2-r0/gdb-7.2/gdb/gdbserver/../../include 
-O2 -pipe -g -feliminate-unused-debug-types 
-DCONFIG_UST_GDB_INTEGRATION -fPIC -DGDBSERVER -DIN_PROCESS_AGENT 
-fvisibility=hidden 
/vol/1/sgw/autobuilder/poky-slave/poky-full-ia/build/build/tmp/work/i586-poky-linux/gdb-7.2-r0/gdb-7.2/gdb/gdbserver/tracepoint.c 
-o tracepoint-ipa.o
| 
/vol/1/sgw/autobuilder/poky-slave/poky-full-ia/build/build/tmp/work/i586-poky-linux/gdb-7.2-r0/gdb-7.2/gdb/gdbserver/tracepoint.c: 
In function 'first_marker':
| 
/vol/1/sgw/autobuilder/poky-slave/poky-full-ia/build/build/tmp/work/i586-poky-linux/gdb-7.2-r0/gdb-7.2/gdb/gdbserver/tracepoint.c:7009:3: 
warning: return from incompatible pointer type
| 
/vol/1/sgw/autobuilder/poky-slave/poky-full-ia/build/build/tmp/work/i586-poky-linux/gdb-7.2-r0/gdb-7.2/gdb/gdbserver/tracepoint.c: 
In function 'next_marker':
| 
/vol/1/sgw/autobuilder/poky-slave/poky-full-ia/build/build/tmp/work/i586-poky-linux/gdb-7.2-r0/gdb-7.2/gdb/gdbserver/tracepoint.c:7024:23: 
warning: comparison of distinct pointer types lacks a cast
| 
/vol/1/sgw/autobuilder/poky-slave/poky-full-ia/build/build/tmp/work/i586-poky-linux/gdb-7.2-r0/gdb-7.2/gdb/gdbserver/tracepoint.c:7027:4: 
warning: return from incompatible pointer type
| 
/vol/1/sgw/autobuilder/poky-slave/poky-full-ia/build/build/tmp/work/i586-poky-linux/gdb-7.2-r0/gdb-7.2/gdb/gdbserver/tracepoint.c: 
In function 'unprobe_marker_at':
| 
/vol/1/sgw/autobuilder/poky-slave/poky-full-ia/build/build/tmp/work/i586-poky-linux/gdb-7.2-r0/gdb-7.2/gdb/gdbserver/tracepoint.c:7105:33: 
error: request for member 'location' in something not a structure or union
| 
/vol/1/sgw/autobuilder/poky-slave/poky-full-ia/build/build/tmp/work/i586-poky-linux/gdb-7.2-r0/gdb-7.2/gdb/gdbserver/tracepoint.c:7109:51: 
error: request for member 'channel' in something not a structure or union
| 
/vol/1/sgw/autobuilder/poky-slave/poky-full-ia/build/build/tmp/work/i586-poky-linux/gdb-7.2-r0/gdb-7.2/gdb/gdbserver/tracepoint.c:7110:23: 
error: request for member 'name' in something not a structure or union
| 
/vol/1/sgw/autobuilder/poky-slave/poky-full-ia/build/build/tmp/work/i586-poky-linux/gdb-7.2-r0/gdb-7.2/gdb/gdbserver/tracepoint.c:7114:17: 
error: request for member 'channel' in something not a structure or union
| 
/vol/1/sgw/autobuilder/poky-slave/poky-full-ia/build/build/tmp/work/i586-poky-linux/gdb-7.2-r0/gdb-7.2/gdb/gdbserver/tracepoint.c:7114:39: 
error: request for member 'name' in something not a structure or union
| 
/vol/1/sgw/autobuilder/poky-slave/poky-full-ia/build/build/tmp/work/i586-poky-linux/gdb-7.2-r0/gdb-7.2/gdb/gdbserver/tracepoint.c: 
In function 'probe_marker_at':
| 
/vol/1/sgw/autobuilder/poky-slave/poky-full-ia/build/build/tmp/work/i586-poky-linux/gdb-7.2-r0/gdb-7.2/gdb/gdbserver/tracepoint.c:7135:43: 
warning: assignment from incompatible pointer type
| 
/vol/1/sgw/autobuilder/poky-slave/poky-full-ia/build/build/tmp/work/i586-poky-linux/gdb-7.2-r0/gdb-7.2/gdb/gdbserver/tracepoint.c:7137:42: 
warning: assignment from incompatible pointer type
| 
/vol/1/sgw/autobuilder/poky-slave/poky-full-ia/build/build/tmp/work/i586-poky-linux/gdb-7.2-r0/gdb-7.2/gdb/gdbserver/tracepoint.c: 
In function 'cmd_qtstmat':
| 
/vol/1/sgw/autobuilder/poky-slave/poky-full-ia/build/build/tmp/work/i586-poky-linux/gdb-7.2-r0/gdb-7.2/gdb/gdbserver/tracepoint.c:7180:43: 
warning: assignment from incompatible pointer type
| 
/vol/1/sgw/autobuilder/poky-slave/poky-full-ia/build/build/tmp/work/i586-poky-linux/gdb-7.2-r0/gdb-7.2/gdb/gdbserver/tracepoint.c:7182:42: 
warning: assignment from incompatible pointer type
| make[4]: *** [tracepoint-ipa.o] Error 1




