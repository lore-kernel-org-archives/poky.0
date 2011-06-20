Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6AFF54C800A9
	for <poky@yoctoproject.org>; Mon, 20 Jun 2011 17:57:30 -0500 (CDT)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1QYnPN-0006RC-LJ from Tom_Rini@mentor.com 
	for poky@yoctoproject.org; Mon, 20 Jun 2011 15:57:29 -0700
Received: from SVR-ORW-FEM-05.mgc.mentorg.com ([147.34.97.43]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Mon, 20 Jun 2011 15:52:19 -0700
Received: from [172.30.80.125] (147.34.91.1) by svr-orw-fem-05.mgc.mentorg.com
	(147.34.97.43) with Microsoft SMTP Server id 14.1.289.1;
	Mon, 20 Jun 2011 15:57:29 -0700
Message-ID: <4DFFD045.3020003@mentor.com>
Date: Mon, 20 Jun 2011 15:57:09 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <cover.1308366864.git.josh@linux.intel.com>	<85e22915241def8ef365762345942443c0828025.1308366864.git.josh@linux.intel.com>
	<4DFC19AC.2010002@linux.intel.com>
In-Reply-To: <4DFC19AC.2010002@linux.intel.com>
X-Enigmail-Version: 1.1.1
X-OriginalArrivalTime: 20 Jun 2011 22:52:19.0579 (UTC)
	FILETIME=[B5A4ECB0:01CC2F9C]
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
X-List-Received-Date: Mon, 20 Jun 2011 22:57:30 -0000
Content-Type: text/plain; charset="ISO-8859-1"
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

On my older quad-core AMD box, -j 6 / 4 threads is where it's at, and
our testing / poking around on other hardware bears that out (for
example my Dell M4400 laptop is -j 3 / 2 threads).  That said, for much
more beefy configurations, we use -j 16, and 12 threads (on an 8 core
machine with 12GB mem).  I think perhaps the best change here is to keep
it at 1:1 in the sample (since we've also run into older hardware too)
and explain that anywhere between 1:1 and 2*core:2*core could work best
depending on setup, ymmv, etc.

-- 
Tom Rini
Mentor Graphics Corporation

