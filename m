Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C69914C80052
	for <poky@yoctoproject.org>; Mon, 13 Jun 2011 16:09:37 -0500 (CDT)
Received: from mail-pw0-f52.google.com ([209.85.160.52])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 13 Jun 2011 14:09:37 -0700
Received: by pwi4 with SMTP id 4so2219869pwi.25
	for <poky@yoctoproject.org>; Mon, 13 Jun 2011 14:09:36 -0700 (PDT)
Received: by 10.142.248.38 with SMTP id v38mr1046489wfh.15.1307999376239;
	Mon, 13 Jun 2011 14:09:36 -0700 (PDT)
Received: from [10.6.18.227] (c-71-193-189-117.hsd1.wa.comcast.net
	[71.193.189.117])
	by mx.google.com with ESMTPS id y27sm3262436wfl.12.2011.06.13.14.09.34
	(version=SSLv3 cipher=OTHER); Mon, 13 Jun 2011 14:09:35 -0700 (PDT)
Message-ID: <4DF67C8D.4010907@intel.com>
Date: Mon, 13 Jun 2011 14:09:33 -0700
From: Saul Wold <saul.wold@intel.com>
Organization: Intel
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Jeff Mitchell <jmitchell@ll.mit.edu>
References: <4DF668B1.1060500@ll.mit.edu> <4DF6715D.3050703@linux.intel.com>
	<4DF67631.9000702@intel.com> <4DF67B60.6050008@ll.mit.edu>
In-Reply-To: <4DF67B60.6050008@ll.mit.edu>
Cc: Darren Hart <dvhart@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Git/perl build problems
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
X-List-Received-Date: Mon, 13 Jun 2011 21:09:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/13/2011 02:04 PM, Jeff Mitchell wrote:
> On 06/13/2011 04:42 PM, Saul Wold wrote:
>> Understood, but not fixed yet!
>>
>> The workaround at this point is to
>>
>> "bitbake -c cleansstate autoconf-native automake-native"
>>
>> Thanks should resolve this issue.
>
> Running that now, seems to be working. Would a simple revision bump to
> those two packages fix the problem for any others?
>
That's my thought, but this issue is that it now uses the host perl, not 
any perl built by poky, so I am concerned that it also really need to 
inherit perlnative and I have not completely tested that yet.

Sau!

> Thanks,
> Jeff
>


