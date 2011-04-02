Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4EC054C800A0
	for <poky@yoctoproject.org>; Sat,  2 Apr 2011 08:36:22 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 02 Apr 2011 06:36:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,287,1299484800"; d="scan'208";a="904837843"
Received: from kyu3-desk.ccr.corp.intel.com (HELO [10.238.154.142])
	([10.238.154.142])
	by fmsmga001.fm.intel.com with ESMTP; 02 Apr 2011 06:36:02 -0700
Message-ID: <4D972642.80400@intel.com>
Date: Sat, 02 Apr 2011 21:36:02 +0800
From: Yu Ke <ke.yu@intel.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US;
	rv:1.9.2.15) Gecko/20110303 Thunderbird/3.1.9
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4D971BF9.7050707@intel.com> <4D971D4C.60109@mlbassoc.com>
In-Reply-To: <4D971D4C.60109@mlbassoc.com>
Cc: poky@yoctoproject.org
Subject: Re: How to append inc file
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
X-List-Received-Date: Sat, 02 Apr 2011 13:36:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

on 2011-4-2 20:57, Gary Thomas wrote:
> On 04/02/2011 06:52 AM, Yu Ke wrote:
>> Hi,
>>
>> bbappend file can be used to append content to bb file, and it is very
>> useful in BSP meta data. Today I just find the *.inc file is also need
>> to be appended, so I wonder if there
>> is similar incappend file that can append content to inc file?
>>
>> I meet this requirement when trying to fix bug 896
>> (http://bugzilla.yoctoproject.org/show_bug.cgi?id=896). To make
>> poky-image-clutter build pass in n450, the clutter.inc need to be
>> appended to change the COMPATIBLE_MACHINE.
>
> Why can't you just put the change in the .bbappend file (since it's
> already recipe/target specific)?
>

currently there is clutter 1.4 and clutter 1.6 which both use the 
clutter.inc. and yes, It is also fine to use duplicate bbappend to 
append clutter 1.4 and clutter 1.6 respectively. But if clutter.inc can 
be appended, then it will reduce the duplicate code. Also inc file 
append has another benefit, when clutter 1.8 is out in the future, the 
BSP append code don't need any change.

Regards
Ke

