Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 834234C80FC8
	for <poky@pokylinux.org>; Tue, 17 May 2011 10:21:34 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 May 2011 08:21:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,225,1304319600"; 
   d="scan'208";a="2813415"
Received: from unknown (HELO [10.255.12.172]) ([10.255.12.172])
	by fmsmga002.fm.intel.com with ESMTP; 17 May 2011 08:21:32 -0700
Message-ID: <4DD2928F.5020502@linux.intel.com>
Date: Tue, 17 May 2011 08:21:51 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: gmane@reliableembeddedsystems.com
References: <iqo4jm$4mj$1@dough.gmane.org> <4DD17A0C.7030809@linux.intel.com>
	<4DD1C8D2.7070709@reliableembeddedsystems.com>
In-Reply-To: <4DD1C8D2.7070709@reliableembeddedsystems.com>
Cc: public-poky-SXX0g9bRc0uhPH1hqNUYSQ@lo.gmane.org, poky@pokylinux.org,
	public-gmane-G/ASJRsgvFgvW+L+VdN226ESeJV5RFUqQQ4Iyu8u01E@lo.gmane.org
Subject: Re: beagle-xm more testing
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
X-List-Received-Date: Tue, 17 May 2011 15:21:34 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/16/2011 06:01 PM, Robert Berger wrote:
> Hi,
> 
> On 05/16/2011 10:25 PM, Darren Hart wrote:
>>
>>
>> The u-boot issues concern me the most. Unfortunately the dev-cut for
>> 5.0.1 is passed. We are looking for much improved bbxm support in 1.1.
>>
>> Saul, is it too late for a fix like the above to the u-boot md5 to get
>> into the point release?
>>
> 
> In the meantime I also got the latest and greatest from git to work with
> a couple of tweaks on the beagle-xm.

Good to know, it didn't work for me last time I checked. I'll be
spending today and maybe tomorrow sorting out what happened since u-boot
was working on my xM at the 1.0 launch.

--
Darren

> If you want a proper patch for the
> checksum it might take some time, since I'll be out of office ( it's 4
> in the morning now) and I would like to test it a bit more before
> sending it out - saw something funny with u-boot yesterday.
> 
> Regards,
> 
> Robert
> 
> 
> ..."In C++ it's harder to shoot yourself in the foot, but when you do,
> you blow off your whole leg." - Bjarne Stroustrup
> 
> My public pgp key is available at:
> http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

