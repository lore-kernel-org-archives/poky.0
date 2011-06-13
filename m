Return-Path: <prvs=51458a9b9f=jmitchell@ll.mit.edu>
Received: from mx2.ll.mit.edu (MX2.LL.MIT.EDU [129.55.12.46])
	by mx1.pokylinux.org (Postfix) with ESMTP id AFB314C800A3
	for <poky@yoctoproject.org>; Mon, 13 Jun 2011 16:04:36 -0500 (CDT)
Received: from LLE2K7-HUB02.mitll.ad.local (LLE2K7-HUB02.mitll.ad.local) by
	mx2.ll.mit.edu (unknown) with ESMTP id p5DL4WYu004889;
	Mon, 13 Jun 2011 17:04:32 -0400
Message-ID: <4DF67B60.6050008@ll.mit.edu>
Date: Mon, 13 Jun 2011 17:04:32 -0400
From: Jeff Mitchell <jmitchell@ll.mit.edu>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110505 Lightning/1.0b3pre Thunderbird/3.1.10
MIME-Version: 1.0
To: Saul Wold <saul.wold@intel.com>
References: <4DF668B1.1060500@ll.mit.edu> <4DF6715D.3050703@linux.intel.com>
	<4DF67631.9000702@intel.com>
In-Reply-To: <4DF67631.9000702@intel.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.4.6813, 1.0.148,
	0.0.0000
	definitions=2011-06-13_07:2011-06-13, 2011-06-13,
	1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	ipscore=0 suspectscore=2
	phishscore=0 bulkscore=0 adultscore=0 classifier=spam adjust=0
	reason=mlx
	scancount=1 engine=6.0.2-1012030000 definitions=main-1106130143
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
X-List-Received-Date: Mon, 13 Jun 2011 21:04:37 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 06/13/2011 04:42 PM, Saul Wold wrote:
> Understood, but not fixed yet!
>
> The workaround at this point is to
>
> "bitbake -c cleansstate autoconf-native automake-native"
>
> Thanks should resolve this issue.

Running that now, seems to be working. Would a simple revision bump to 
those two packages fix the problem for any others?

Thanks,
Jeff

