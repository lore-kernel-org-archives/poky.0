Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id 19E7E4C805AF
	for <poky@yoctoproject.org>; Mon, 25 Jul 2011 13:59:49 -0500 (CDT)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1QlQNY-0001BG-DH from Tom_Rini@mentor.com ;
	Mon, 25 Jul 2011 11:59:48 -0700
Received: from SVR-ORW-FEM-04.mgc.mentorg.com ([147.34.97.41]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Mon, 25 Jul 2011 11:57:09 -0700
Received: from [172.30.80.87] (147.34.91.1) by svr-orw-fem-04.mgc.mentorg.com
	(147.34.97.41) with Microsoft SMTP Server id 14.1.289.1;
	Mon, 25 Jul 2011 11:59:48 -0700
Message-ID: <4E2DBD1C.40206@mentor.com>
Date: Mon, 25 Jul 2011 11:59:40 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.18) Gecko/20110617 Lightning/1.0b2 Thunderbird/3.1.11
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <cover.1311616990.git.bruce.ashfield@windriver.com>	<4E2DB8FD.8020903@mentor.com>
	<CADkTA4N+5WpjvDp+apuCH=1G4oJD6vb49tJVv7+v7GtQ7-LsOA@mail.gmail.com>
In-Reply-To: <CADkTA4N+5WpjvDp+apuCH=1G4oJD6vb49tJVv7+v7GtQ7-LsOA@mail.gmail.com>
X-Enigmail-Version: 1.1.1
X-OriginalArrivalTime: 25 Jul 2011 18:57:09.0093 (UTC)
	FILETIME=[A798E150:01CC4AFC]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] poky.conf: explicitly referenced preferred linux-yocto version
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
X-List-Received-Date: Mon, 25 Jul 2011 18:59:49 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 07/25/2011 11:50 AM, Bruce Ashfield wrote:
> On Mon, Jul 25, 2011 at 2:42 PM, Tom Rini <tom_rini@mentor.com> wrote:
>> On 07/25/2011 11:05 AM, Bruce Ashfield wrote:
>>> Here's a similar change to the meta-yocto boards, as was done
>>> to the qemu machines in oe-core. Since referencing yocto makes
>>> more sense in this layer, I made the change in the poky.conf
>>> distro default file.
>>>
>>> As the staging of linux-yocto-3.0 showed, we should explicitly
>>> state our preferred version of linux-yocto. This prevents unvalidated
>>> changes from being forced into machines. Layers and machines are free
>>> to override this as they are updated.
>>>
>>> cc: Tom Zanussi <tom.zanussi@intel.com>
>>>
>>> The following changes since commit dfec64a66e66ad4ec94a06ad900307fb0d932b98:
>>>
>>>   machine/qemu: set preferred linux-yocto kernel version (2011-07-25 10:56:46 -0400)
>>>
>>> are available in the git repository at:
>>>   git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
>>>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto
>>>
>>> Bruce Ashfield (1):
>>>   poky.conf: explicitly referenced preferred linux-yocto version
>>>
>>>  meta-yocto/conf/distro/poky.conf |    2 ++
>>>  1 files changed, 2 insertions(+), 0 deletions(-)
>>
>> I guess as an aside, the convention we have/had in oe.dev was
>> DEFAULT_PREFERENCE = -1, D_P_testedmachine1 = 1, etc, etc, in the kernel
>> recipes.
> 
> I've noticed that .. and it would work here as well. I'm hesitant to
> maintain a set of tested machine overrides in the yocto layers, since
> we are at a small number now, but that number isn't guaranteed to
> stay small. I have enough of a pain updating SRCREVs constantly,
> tweaking another set of vars isn't high on my 'fun' list.
> 
> I prefer to have the machines opt-in, versus maintaining a list of known
> good machines in a central file (I realize that the machines would/could
> be the ones setting the default_preference back to 1 as wel, but it is
> still another variable to manipulate). But am not religious about any of this :)
> 
> The flip to 3.0 is sort of a special case, and typically it is just a switch
> I throw, since all machines are tested at once.
> 
> Good comment and food for thought indeed!

So, if you go down the D_P route, meta-$whatever has
linux_testedVer.bbappend D_P = "1" in it for what it wants to opt into
and the meta-yocto / oe-core recipes just stay having to track qemu
machines, too.

-- 
Tom Rini
Mentor Graphics Corporation

