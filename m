Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 58F2A4C804C2
	for <poky@yoctoproject.org>; Tue, 17 May 2011 00:42:12 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4H5gBLx018188
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 16 May 2011 22:42:11 -0700 (PDT)
Received: from [128.224.163.140] (128.224.163.140) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 16 May 2011 22:42:11 -0700
Message-ID: <4DD20AB1.7050609@windriver.com>
Date: Tue, 17 May 2011 13:42:09 +0800
From: Robert Yang <liezhi.yang@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1305599686.git.liezhi.yang@windriver.com>
	<4DD208E6.6030105@linux.intel.com>
In-Reply-To: <4DD208E6.6030105@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: V3 [PATCH 0/4] Add meta-skeleton and a skeleton for init scripts
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
X-List-Received-Date: Tue, 17 May 2011 05:42:12 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit


On 05/17/2011 01:34 PM, Darren Hart wrote:
> Robert,
>
> I think we're just about there. I added my final comments to the
> following patches. If you'll resubmit with those addressed, I believe we
> are ready to push.
>

Hi Darren,

Your comments is very important to me, I've learned a lot from you comments,
I'm a newbie to poky, this can make me start from a right way:-).

BTW, then indent of pidofproc () was caused by a mistake, I did "git stash"
then "git stash apply", but forgot to fix the indent.

I'll update the patches and push them, and waiting for Saul to merge them
if he is happy.

Thanks

//Robert

> Thank you for your patience, I think it is particularly important for
> our canonical example be precise in both form and function.
>
> --
> Darren
>
> On 05/16/2011 07:39 PM, Robert Yang wrote:
>> Changes of V3:
>>    * Correct the typos
>>    * Cleanup the whitespace in ${sysconfdir}/init.d/functions
>>    * Don't indent in the cases of case, e.g.:
>>      case $? in
>>      0)
>>          do_yes
>>          ;;
>>      1)
>>          do_no
>>          ;;
>>      esac
>>    * Try to remove the "<cmd>  || status=$?", I just remove one of them,
>>      fo other cases I had to save "$?" and return it at the end of the
>>      function.
>>
>>
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>>    Branch: robert/init_scripts
>>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=robert/init_scripts
>>
>> Thanks,
>>      Robert Yang<liezhi.yang@windriver.com>
>> ---
>>
>>
>> Robert Yang (4):
>>    Add the layer meta-skeleton
>>    Cleanup the whitespace in functions
>>    Add pidofproc to ${sysconfdir}/init.d/functions
>>    Add a skeleton for init scripts
>>
>>   meta-skeleton/conf/layer.conf                      |   10 +
>>   .../recipes-skeleton/service/service/COPYRIGHT     |   15 ++
>>   .../recipes-skeleton/service/service/skeleton      |  193 ++++++++++++++++++++
>>   .../service/service/skeleton_test.c                |   11 +
>>   .../recipes-skeleton/service/service_0.1.bb        |   32 ++++
>>   .../initscripts/initscripts-1.0/functions          |   39 ++++-
>>   6 files changed, 295 insertions(+), 5 deletions(-)
>>   create mode 100644 meta-skeleton/conf/layer.conf
>>   create mode 100644 meta-skeleton/recipes-skeleton/service/service/COPYRIGHT
>>   create mode 100644 meta-skeleton/recipes-skeleton/service/service/skeleton
>>   create mode 100644 meta-skeleton/recipes-skeleton/service/service/skeleton_test.c
>>   create mode 100644 meta-skeleton/recipes-skeleton/service/service_0.1.bb
>>
>

