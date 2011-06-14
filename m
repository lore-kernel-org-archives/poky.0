Return-Path: <prvs=51460abce2=jmitchell@ll.mit.edu>
Received: from mx2.ll.mit.edu (MX2.LL.MIT.EDU [129.55.12.46])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9660A4C800C1
	for <poky@yoctoproject.org>; Tue, 14 Jun 2011 09:54:15 -0500 (CDT)
Received: from LLE2K7-HUB01.mitll.ad.local (LLE2K7-HUB01.mitll.ad.local) by
	mx2.ll.mit.edu (unknown) with ESMTP id p5EEs8BR025174;
	Tue, 14 Jun 2011 10:54:08 -0400
Message-ID: <4DF7760F.9050106@ll.mit.edu>
Date: Tue, 14 Jun 2011 10:54:07 -0400
From: Jeff Mitchell <jmitchell@ll.mit.edu>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110505 Lightning/1.0b3pre Thunderbird/3.1.10
MIME-Version: 1.0
To: Saul Wold <saul.wold@intel.com>
References: <4DF668B1.1060500@ll.mit.edu> <4DF6715D.3050703@linux.intel.com>	
	<4DF67631.9000702@intel.com> <4DF67B60.6050008@ll.mit.edu>	
	<4DF67C8D.4010907@intel.com> <1307999666.15712.286.camel@rex>
	<4DF67EAE.809@intel.com>
In-Reply-To: <4DF67EAE.809@intel.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.4.6813, 1.0.148,
	0.0.0000
	definitions=2011-06-14_06:2011-06-14, 2011-06-14,
	1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	ipscore=0 suspectscore=2
	phishscore=0 bulkscore=0 adultscore=0 classifier=spam adjust=0
	reason=mlx
	scancount=1 engine=6.0.2-1012030000 definitions=main-1106140099
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
X-List-Received-Date: Tue, 14 Jun 2011 14:54:15 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 06/13/2011 05:18 PM, Saul Wold wrote:
> On 06/13/2011 02:14 PM, Richard Purdie wrote:
>> On Mon, 2011-06-13 at 14:09 -0700, Saul Wold wrote:
>>> On 06/13/2011 02:04 PM, Jeff Mitchell wrote:
>>>> On 06/13/2011 04:42 PM, Saul Wold wrote:
>>>>> Understood, but not fixed yet!
>>>>>
>>>>> The workaround at this point is to
>>>>>
>>>>> "bitbake -c cleansstate autoconf-native automake-native"
>>>>>
>>>>> Thanks should resolve this issue.
>>>>
>>>> Running that now, seems to be working. Would a simple revision bump to
>>>> those two packages fix the problem for any others?
>>>>
>>> That's my thought, but this issue is that it now uses the host perl, not
>>> any perl built by poky, so I am concerned that it also really need to
>>> inherit perlnative and I have not completely tested that yet.
>>
>> No, everything is fine and working as intended and they should not need
>> perl-native. We should have bumped PR in hindsight and still could do
>> so, that would be fine.
>>
> Thanks for that confirmation with all the perl machinations I was not
> sure which perl those tools should really be using.  Given that, if you
> have not already got a commit for that I will offer one up.

While cleaning and recompiling autoconf-native and automake-native 
helped with the former issue, I've got two more failing packages: 
librsvg and avahi.

The former is using
/home/jmitchell/yocto/build/tmp/sysroots/i686-linux/usr/bin/glib-mkenums

with the result
/home/jmitchell/yocto/build/tmp/sysroots/i686-linux/usr/bin/perl: bad 
interpreter: No such file or directory

The latter is using (with the same result)
/home/jmitchell/yocto/build/tmp/sysroots/i686-linux/usr/bin/intltool-update

The former at least looks like a clean/rebuild of glib-2.0 should work 
-- but it didn't. What's the proper package that needs to be 
cleaned/rebuilt?

Thanks,
Jeff

