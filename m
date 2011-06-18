Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 88C804C800BA
	for <poky@yoctoproject.org>; Sat, 18 Jun 2011 00:39:10 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 17 Jun 2011 22:39:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,385,1304319600"; d="sh'?scan'208";a="14802315"
Received: from unknown (HELO [10.255.13.103]) ([10.255.13.103])
	by azsmga001.ch.intel.com with ESMTP; 17 Jun 2011 22:39:05 -0700
Message-ID: <4DFC39F8.5000804@linux.intel.com>
Date: Fri, 17 Jun 2011 22:39:04 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Joshua Lock <josh@linux.intel.com>
References: <cover.1308366864.git.josh@linux.intel.com>	<85e22915241def8ef365762345942443c0828025.1308366864.git.josh@linux.intel.com>
	<4DFC19AC.2010002@linux.intel.com>
In-Reply-To: <4DFC19AC.2010002@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [RFC PATCH 1/1] local.conf.sample: update suggestions for	BB_NUMBER_THREADS and PARALLEL_MAKE
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
X-List-Received-Date: Sat, 18 Jun 2011 05:39:10 -0000
X-Groupsio-MsgNum: 6634
Content-Type: multipart/mixed; boundary="------------010902080704060904010307"

--------------010902080704060904010307
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/17/2011 08:21 PM, Darren Hart wrote:
> 
> 
> On 06/17/2011 08:16 PM, Joshua Lock wrote:
>> It's been suggested that BB_NUMBER_THREADS should be 2 * the number of cores
>> and PARALLEL_MAKE should be equal to the number of cores available on the
>> build machine.
>>
>> Update local.conf.sample to suggest this.
>>
>> Signed-off-by: Joshua Lock <josh@linux.intel.com>
>> ---
>>  meta-yocto/conf/local.conf.sample |    4 +++-
>>  1 files changed, 3 insertions(+), 1 deletions(-)
>>
>> diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
>> index ea32b81..43d06e6 100644
>> --- a/meta-yocto/conf/local.conf.sample
>> +++ b/meta-yocto/conf/local.conf.sample
>> @@ -9,7 +9,9 @@ CONF_VERSION = "1"
>>  #SSTATE_DIR ?= "${TOPDIR}/sstate-cache"
>>  
>>  # Uncomment and set to allow bitbake to execute multiple tasks at once.
>> -# For a quadcore, BB_NUMBER_THREADS = "4", PARALLEL_MAKE = "-j 4" would
>> +# Recommended values are twice the number of processor cores for
>> +# BB_NUMBER_THREADS and the number of processor cores for PARALLEL_MAKE
>> +# For a quadcore, BB_NUMBER_THREADS = "8", PARALLEL_MAKE = "-j 4" would
> 
> Hrm, where is this coming from? In my experience it works better the
> other way around. We probably also need to be explicit about cores
> versus threads.

OK, let's get some real number behind this.

I'm running the attached script on a quadcore (8 thread) i7 system with
8 GB of RAM. an SSD for the OS, and a single spinning disk for the build.

We'll see how things look in... 13 2 ^ 2 * 24 / ... 14.08 days ...
assuming I don't burn something up first.... maybe I should have
programmed in a sleep? nah, that's what the "rm -rf tmp" is for ;-)

Would be nice to have some runtime atsar disk, sched, fault stats as well...

>>  # be appropriate.
>>  # BB_NUMBER_THREADS = "4"
>>  # Also, make can be passed flags so it run parallel threads e.g.:
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

--------------010902080704060904010307
Content-Type: application/x-shellscript;
 name="bb-matrix.sh"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="bb-matrix.sh"

IyEvYmluL2Jhc2gKCkJCX1JBTkdFPSIwNCAwNSAwNiAwNyAwOCAwOSAxMCAxMSAxMiAxMyAxNCAx
NSAxNiIKUE1fUkFOR0U9IjA0IDA1IDA2IDA3IDA4IDA5IDEwIDExIDEyIDEzIDE0IDE1IDE2IgoK
REFUQURJUj0ic3RhdHMtJCQiCkJCX0NNRD0iYml0YmFrZSBjb3JlLWltYWdlLXNhdG8iCiNCQl9D
TUQ9ImJpdGJha2UgLXMiCiNERUJVRz0xClJVTlRJTUVfTE9HPSIkREFUQURJUi9iYi1wbS1ydW50
aW1lLmRhdCIKClRJTUVfU1RSPSIlZSAlUyAlVSAlUCAlYyAldyAlUiAlRiAlVyAlSyAlTSAldCAl
ayAlciAlcyIKCmlmIFsgLWUgIiREQVRBRElSIiBdOyB0aGVuCgllY2hvICJQbGVhc2UgbW92ZSAk
REFUQURJUiBhbmQgcnVuIGFnYWluLiIKCWV4aXQgMQpmaQoKbWtkaXIgJERBVEFESVIKaWYgWyAk
PyAtbmUgMCBdOyB0aGVuCgllY2hvICJGYWlsZWQgdG8gY3JlYXRlICREQVRBRElSLiIKCWV4aXQg
MQpmaQoKZm9yIEJCIGluICRCQl9SQU5HRTsgZG8KCWZvciBQTSBpbiAkUE1fUkFOR0U7IGRvCgkJ
aWYgWyAtbiAiJERFQlVHIiBdOyB0aGVuCgkJCW1rZGlyIC1wIHRtcC9idWlsZHN0YXRzICY+IC9k
ZXYvbnVsbAoJCQl0b3VjaCBwc2V1ZG9kb25lICY+IC9kZXYvbnVsbAoJCQlta2RpciBzc3RhdGUt
Y2FjaGUgJj4gL2Rldi9udWxsCgkJCW1rZGlyIHRtcC1lZ2xpYmMgJj4gL2Rldi9udWxsCgkJZmkK
CQlSVU5ESVI9IiREQVRBRElSLyRCQi0kUE0tYnVpbGQiCgkJbWtkaXIgJFJVTkRJUgoJCUJCX0xP
Rz0kUlVORElSLyRCQi0kUE0tYml0YmFrZS5sb2cKCQlkYXRlCgkJZWNobyAiQkI9JEJCIFBNPSRQ
TSBMb2dnaW5nIHRvICRCQl9MT0ciCgoJCSMgRXhwb3J0IHRoZSB2YXJpYWJsZXMgdW5kZXIgdGVz
dCBhbmQgcnVuIHRoZSBiaXRiYWtlIGNvbW1hbmQKCQlleHBvcnQgQkJfTlVNQkVSX1RIUkVBRFM9
IiR7QkIjIyowfSIKCQlleHBvcnQgUEFSQUxMRUxfTUFLRT0iLWogJHtQTSMjKjB9IgoJCS91c3Iv
YmluL3RpbWUgLWYgIiRCQiAkUE0gJFRJTUVfU1RSIiAtYSAtbyAkUlVOVElNRV9MT0cgJEJCX0NN
RCAmPiAkQkJfTE9HCgkJCgkJZWNobyAiICAkKHRhaWwgLW4xICRSVU5USU1FX0xPRykiCgkJZWNo
byAtbiAiICBDbGVhbmluZyB1cC4uLiIKCQltdiB0bXAvYnVpbGRzdGF0cyAkUlVORElSLyRCQi0k
UE0tYnVpbGRzdGF0cwoJCXJtIC1mIHBzZXVkb2RvbmUgJj4gL2Rldi9udWxsCgkJcm0gLXJmIHRt
cCAmPiAvZGV2L251bGwKCQlybSAtcmYgc3N0YXRlLWNhY2hlICY+IC9kZXYvbnVsbAoJCXJtIC1y
ZiB0bXAtZWdsaWJjICY+IC9kZXYvbnVsbAoJCWVjaG8gImRvbmUiCglkb25lCmRvbmUK

--------------010902080704060904010307--
