Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2360B4C8009A
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 08:34:50 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2GDYjms002708;
	Wed, 16 Mar 2011 13:34:45 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02594-03; Wed, 16 Mar 2011 13:34:41 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2GDYeTu002702
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 16 Mar 2011 13:34:40 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Garman, Scott A" <scott.a.garman@intel.com>
In-Reply-To: <4D807658.5070600@intel.com>
References: <cover.1300230459.git.scott.a.garman@intel.com>
	<945a0bac5f7174fdb27b518b061cb8eabf640a78.1300230459.git.scott.a.garman@intel.com>
	<5B279E08-1255-421A-82AE-F3795325744B@dominion.thruhere.net>
	<4D807658.5070600@intel.com>
Date: Wed, 16 Mar 2011 13:34:29 +0000
Message-ID: <1300282469.30423.1876.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 2/7] task-poky-ssh-dropbear: new task recipe for dropbear ssh
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
X-List-Received-Date: Wed, 16 Mar 2011 13:34:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-03-16 at 08:35 +0000, Garman, Scott A wrote:
> On 03/16/2011 01:13 AM, Koen Kooi wrote:
> >
> > Op 16 mrt 2011, om 00:12 heeft Scott Garman het volgende geschreven:
> >
> >> From: Scott Garman<scott.a.garman@intel.com>
> >>
> >> This task can be used when IMAGE_FEATURES is set to
> >> ssh-server-dropbear.
> >>
> >> Signed-off-by: Scott Garman<scott.a.garman@intel.com>
> >> ---
> >> meta/recipes-core/tasks/task-poky-ssh-dropbear.bb |   17 +++++++++++++++++
> >> 1 files changed, 17 insertions(+), 0 deletions(-)
> >> create mode 100644 meta/recipes-core/tasks/task-poky-ssh-dropbear.bb
> >>
> >> diff --git a/meta/recipes-core/tasks/task-poky-ssh-dropbear.bb b/meta/recipes-core/tasks/task-poky-ssh-dropbear.bb
> >> new file mode 100644
> >> index 0000000..870d2d9
> >> --- /dev/null
> >> +++ b/meta/recipes-core/tasks/task-poky-ssh-dropbear.bb
> >> @@ -0,0 +1,17 @@
> >> +DESCRIPTION = "Dropbear SSH task for Poky"
> >> +LICENSE = "MIT"
> >> +LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
> >> +                    file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
> >> +PR = "r0"
> >> +
> >> +PACKAGES = "\
> >> +    task-poky-ssh-dropbear \
> >> +    task-poky-ssh-dropbear-dbg \
> >> +    task-poky-ssh-dropbear-dev \
> >> +    "
> >> +
> >> +ALLOW_EMPTY = "1"
> >> +
> >> +RDEPENDS_task-poky-ssh-dropbear = "dropbear"
> >> +RDEPENDS_task-poky-ssh-dropbear-dbg = "dropbear-dbg"
> >> +RDEPENDS_task-poky-ssh-dropbear-dev = "dropbear-dev"
> >
> > looks like a good candidate for 'inherit task'
> 
> Thanks for the suggestion, Koen.
> 
> Richard - a quick browse through Poky's tasks shows only one of them 
> uses inherit task (task-base.bb). Is there any reason to avoid this that 
> I'm not aware of? Otherwise, I'm happy to do a respin with inherit task.

No reason I can think of, we probably should do some cleanup in this
regard...

Cheers,

Richard


