Return-Path: <prvs=5148add215=jmitchell@ll.mit.edu>
Received: from mx2.ll.mit.edu (MX2.LL.MIT.EDU [129.55.12.46])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6012B4C8009D
	for <poky@yoctoproject.org>; Thu, 16 Jun 2011 17:59:19 -0500 (CDT)
Received: from LLE2K7-HUB02.mitll.ad.local (LLE2K7-HUB02.mitll.ad.local) by
	mx2.ll.mit.edu (unknown) with ESMTP id p5GMwjMx031134;
	Thu, 16 Jun 2011 18:58:45 -0400
Message-ID: <4DFA8AA4.6060903@ll.mit.edu>
Date: Thu, 16 Jun 2011 18:58:44 -0400
From: Jeff Mitchell <jmitchell@ll.mit.edu>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110505 Lightning/1.0b3pre Thunderbird/3.1.10
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4DF668B1.1060500@ll.mit.edu> <4DF6715D.3050703@linux.intel.com>	
	<4DF67631.9000702@intel.com> <4DF67B60.6050008@ll.mit.edu>	
	<4DF67C8D.4010907@intel.com> <1307999666.15712.286.camel@rex>
	<4DF67EAE.809@intel.com> <4DF7760F.9050106@ll.mit.edu>
	<4DFA7060.6060408@linux.intel.com>
In-Reply-To: <4DFA7060.6060408@linux.intel.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.4.6813, 1.0.148,
	0.0.0000
	definitions=2011-06-16_10:2011-06-16, 2011-06-16,
	1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	ipscore=0 suspectscore=2
	phishscore=0 bulkscore=0 adultscore=0 classifier=spam adjust=0
	reason=mlx
	scancount=1 engine=6.0.2-1012030000 definitions=main-1106160209
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>,
	Saul Wold <saul.wold@intel.com>
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
X-List-Received-Date: Thu, 16 Jun 2011 22:59:19 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 06/16/2011 05:06 PM, Darren Hart wrote:
> Hrm, I haven't seen this myself. Are you still blocked on this?
>
> If so, have you tried a cleanall of autoconf and automake (not the
> -native versions). Just a stab in the dark...

I'm not still blocked because having heard nothing I kicked off a full 
rebuild :-)

Thanks though.
--Jeff

