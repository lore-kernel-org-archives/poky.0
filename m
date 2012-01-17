Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 721EBE0134D
	for <poky@yoctoproject.org>; Tue, 17 Jan 2012 12:58:03 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 17 Jan 2012 12:58:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="108065755"
Received: from unknown (HELO [10.255.14.6]) ([10.255.14.6])
	by fmsmga001.fm.intel.com with ESMTP; 17 Jan 2012 12:58:02 -0800
Message-ID: <4F15E0DA.4000406@linux.intel.com>
Date: Tue, 17 Jan 2012 12:58:02 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: =?UTF-8?B?SmVhbi1GcmFuw6dvaXMgRGFnZW5haXM=?=
 <jeff.dagenais@gmail.com>
References: <1326676265-31778-1-git-send-email-jeff.dagenais@gmail.com>
In-Reply-To: <1326676265-31778-1-git-send-email-jeff.dagenais@gmail.com>
Cc: marc.ferland@gmail.com,
	=?UTF-8?B?SmVhbi1GcmFuw6dvaQ==?= =?UTF-8?B?cyBEYWdlbmFpcw==?=
	<dagenaisj@sonatest.com>, poky@yoctoproject.org, roym@sonatest.com
Subject: Re: [PATCH] buildstats: tolerate absence of /proc/diskstats
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
X-List-Received-Date: Tue, 17 Jan 2012 20:58:03 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 01/15/2012 05:11 PM, Jean-François Dagenais wrote:
> From: Jean-François Dagenais<dagenaisj@sonatest.com>
>
> In OpenVZ containers (and probably lx containers as well),
> the diskstats entry is not even present. Use the "NoLogicalDrive"
> introduced by Elizabeth Flanagan in such case.
>
> This allows the bitbaking to occure within such containers.
>
> Signed-off-by: Jean-François Dagenais<jeff.dagenais@gmail.com>
> ---
>   meta/classes/buildstats.bbclass |   25 +++++++++++++++----------
>   1 files changed, 15 insertions(+), 10 deletions(-)
>
> diff --git a/meta/classes/buildstats.bbclass b/meta/classes/buildstats.bbclass
> index 4cd8fe6..9690a04 100644
> --- a/meta/classes/buildstats.bbclass
> +++ b/meta/classes/buildstats.bbclass
> @@ -61,11 +61,13 @@ def set_device(e):
>       # we do not collect diskstats as the method to collect meaningful statistics
>       # for these fs types requires a bit more research.
>       ############################################################################
> -    for line in open("/proc/diskstats", "r"):
> -        if majordev == int(line.split()[0]) and minordev == int(line.split()[1]):
> -           rdev=line.split()[2]
> -        else:
> -           rdev="NoLogicalDevice"
> +    rdev="NoLogicalDevice"
> +    try:
> +        for line in open("/proc/diskstats", "r"):
> +            if majordev == int(line.split()[0]) and minordev == int(line.split()[1]):
> +               rdev=line.split()[2]
> +    except:
> +        pass
>       file = open(e.data.getVar('DEVFILE', True), "w")
>       file.write(rdev)
>       file.close()
> @@ -82,12 +84,15 @@ def get_diskstats(dev):
>       # For info on what these are, see kernel doc file iostats.txt
>       ############################################################################
>       DSTAT_KEYS = ['ReadsComp', 'ReadsMerged', 'SectRead', 'TimeReads', 'WritesComp', 'SectWrite', 'TimeWrite', 'IOinProgress', 'TimeIO', 'WTimeIO']
> -    for x in open("/proc/diskstats", "r"):
> -        if dev in x:
> -            diskstats_val = x.rstrip().split()[4:]
> -    diskstats = dict(itertools.izip(DSTAT_KEYS, diskstats_val))
> +    try:
> +        for x in open("/proc/diskstats", "r"):
> +            if dev in x:
> +                diskstats_val = x.rstrip().split()[4:]
> +    except IOError as e:
> +        return
> +    diskstats = dict(itertools.izip(DSTAT_KEYS, diskstats_val))
>       return diskstats
> -
> +
>   def set_diskdata(var, dev, data):
>       data.setVar(var, get_diskstats(dev))
>

Merged into OE-Core

For future reference, please send patches for the meta layer to 
openembedded-core@lists.openembedded.org, as the meta layer is really 
OE-Core

Thanks
	Sau!

