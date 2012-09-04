Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D5E0E0147F
	for <poky@yoctoproject.org>; Tue,  4 Sep 2012 05:44:17 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q84CiEqJ017036;
	Tue, 4 Sep 2012 13:44:14 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 17016-01; Tue,  4 Sep 2012 13:44:09 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q84Ci5Ih017030
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Tue, 4 Sep 2012 13:44:06 +0100
Message-ID: <1346762645.30964.46.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Tue, 04 Sep 2012 13:44:05 +0100
In-Reply-To: <3982601ba10cf2fa66189fef0de4ba99a9a716b2.1346668926.git.paul.eggleton@linux.intel.com>
References: <cover.1346668926.git.paul.eggleton@linux.intel.com>
	<3982601ba10cf2fa66189fef0de4ba99a9a716b2.1346668926.git.paul.eggleton@linux.intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [meta-yocto][PATCH 1/1] meta-yocto: fix for task rename
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 04 Sep 2012 12:44:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-09-03 at 11:44 +0100, Paul Eggleton wrote:
> Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
> ---
>  meta-yocto/conf/distro/include/distro_alias.inc    |   60 ++++++++++----------
>  meta-yocto/conf/distro/include/maintainers.inc     |   36 ++++++------
>  meta-yocto/conf/distro/include/recipe_color.inc    |   12 ++--
>  .../conf/distro/include/upstream_tracking.inc      |    2 +-
>  meta-yocto/conf/distro/poky-tiny.conf              |    6 +-
>  meta-yocto/conf/distro/poky.conf                   |    2 +-
>  .../packagegroup-core-tools-profile.bbappend       |    2 +
>  .../tasks/task-core-tools-profile.bbappend         |    2 -
>  .../packagegroup-core-sdk-gmae.bbappend}           |    0
>  ...group-core-standalone-gmae-sdk-target.bbappend} |    0
>  .../packagegroup-core-tools-profile.bbappend       |    2 +
>  .../tasks/task-core-tools-profile.bbappend         |    2 -
>  12 files changed, 63 insertions(+), 63 deletions(-)
>  create mode 100644 meta-yocto/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend
>  delete mode 100644 meta-yocto/recipes-core/tasks/task-core-tools-profile.bbappend
>  rename meta-yocto/recipes-gnome/{tasks/task-core-sdk-gmae.bbappend => packagegroups/packagegroup-core-sdk-gmae.bbappend} (100%)
>  rename meta-yocto/recipes-gnome/{tasks/task-core-standalone-gmae-sdk-target.bbappend => packagegroups/packagegroup-core-standalone-gmae-sdk-target.bbappend} (100%)
>  create mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend
>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-core/tasks/task-core-tools-profile.bbappend

Merged to master, thanks.

Richard


