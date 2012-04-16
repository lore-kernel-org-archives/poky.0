Return-Path: <SRS0=Z5jq6V=CW=mindchasers.com=yocto@eigbox.net>
Received: from bosmailout05.eigbox.net (bosmailout05.eigbox.net [66.96.184.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A56D6E0030B
	for <poky@yoctoproject.org>; Mon, 16 Apr 2012 09:26:26 -0700 (PDT)
Received: from bosmailscan11.eigbox.net ([10.20.15.11])
	by bosmailout05.eigbox.net with esmtp (Exim) id 1SJokz-0008FZ-2q
	for poky@yoctoproject.org; Mon, 16 Apr 2012 12:26:25 -0400
Received: from bosimpout02.eigbox.net ([10.20.55.2])
	by bosmailscan11.eigbox.net with esmtp (Exim)
	id 1SJoky-0001dw-Kn; Mon, 16 Apr 2012 12:26:24 -0400
Received: from bosauthsmtp06.eigbox.net ([10.20.18.6])
	by bosimpout02.eigbox.net with NO UCE
	id ygSR1i00107rX7u01gSRG8; Mon, 16 Apr 2012 12:26:25 -0400
X-Authority-Analysis: v=2.0 cv=Z+Bb6gtA c=1 sm=1
	a=ca8V9l48i+6lF+TbartITQ==:17 a=mn2ndCrYJZwA:10 a=5XsFQGJ3Uf0A:10
	a=H-djFbTJ_RwA:10 a=Lk7aQFya1KUA:10 a=8nJEP1OIZ-IA:10 a=QyXUC8HyAAAA:8
	a=iGHA9ds3AAAA:8 a=iwrXgatnfy4DFUTHnAoA:9 a=Xn9kjwYaHKx0KIk573wA:7
	a=wPNLvfGTeEIA:10 a=dGJ0OcVc7YAA:10 a=5fZyke2vjD2KGXWm:21
	a=t2zKQG6P1eerCd6H:21 a=fIc3/5IyPUehxkj7BpkQ7Q==:117
X-EN-OrigOutIP: 10.20.18.6
X-EN-IMPSID: ygSR1i00107rX7u01gSRG8
Received: from pool-108-11-41-42.atclnj.east.verizon.net ([108.11.41.42]
	helo=[192.168.1.3]) by bosauthsmtp06.eigbox.net with esmtpa (Exim)
	id 1SJoky-0000Wb-O9; Mon, 16 Apr 2012 12:26:24 -0400
Message-ID: <4F8C482B.7020808@mindchasers.com>
Date: Mon, 16 Apr 2012 12:26:19 -0400
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Dongxiao Xu <dongxiao.xu@intel.com>
References: <cover.1334562500.git.dongxiao.xu@intel.com>
	<4fed98c4af3f78a7c76e92a57f714f4d93b3dd1f.1334562500.git.dongxiao.xu@intel.com>
In-Reply-To: <4fed98c4af3f78a7c76e92a57f714f4d93b3dd1f.1334562500.git.dongxiao.xu@intel.com>
X-EN-UserInfo: cb6d325fe03740ac93d537d78041f599:2186c883651a1065ea1e15c5a112545a
X-EN-AuthUser: bcochran@mindchasers.com
Sender: Bob Cochran <yocto@mindchasers.com>
X-EN-OrigIP: 108.11.41.42
X-EN-OrigHost: pool-108-11-41-42.atclnj.east.verizon.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] meta-yocto: Move OELAYOUT_ABI definition to poky.conf
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
X-List-Received-Date: Mon, 16 Apr 2012 16:26:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/16/2012 03:52 AM, Dongxiao Xu wrote:
> The ABI version definition should go along with the DISTRO variable
> since it impact the TMPDIR definition.
>
> Otherwise, if a user used to work with pure OE-Core, and then he/she
> added meta-yocto layer, it will report ABI version incompatibility
> issue. This is because ABI is changed to "8" by adding meta-yocto layer,
> however the DISTRO variable is not defined and TMPDIR is still
> "tmp-eglibc".

I'm having trouble understanding what was accomplished with these 
changes and the motivation for them.  Didn't poky do it's job of 
complaining when the user first built without the meta-yocto layer and 
then added it back in, which caused OELAYOUT_ABI to change?

Before and after the change, OELAYOUT_ABI="8" was defined in 
meta-yocto/conf.  The setting of the variable was only moved between 
files in this layer (abi_version.conf to poky.conf).    Regardless, 
neither of these files are going to be found by the "include" inside 
bitbake.conf once meta-yocto is removed from BBPATH.

When OELAYOUT_ABI was previously set in abi_version.conf, poky depended 
on meta-yocto being in front of meta in BBPATH for the variable to be 
picked up correctly, so it seems that moving the variable to poky.conf 
and reordering the includes / requires in bitbake.conf removes the path 
dependency, but I don't see this motivation anywhere in the commit 
comments.

I'm certainly not a seasoned poky user, but it seems to me that this 
change isn't explained well.


>
> Defining the OELAYOUT_ABI variable in poky.conf could fix this issue.
>
> This fixes [YOCTO #2303]


Going into the bug description, it is stated in item #5 that the 
meta-yocto layer was added back in, but it doesn't state whether DISTRO 
was set again in local.conf to poky.  I'm thinking that was part of the 
test procedure, but left out?

Any clarifications would be greatly appreciated.  Thanks!



>
> Signed-off-by: Dongxiao Xu<dongxiao.xu@intel.com>
> ---
>   meta-yocto/conf/abi_version.conf |    7 -------
>   meta-yocto/conf/distro/poky.conf |    7 +++++++
>   2 files changed, 7 insertions(+), 7 deletions(-)
>   delete mode 100644 meta-yocto/conf/abi_version.conf
>
> diff --git a/meta-yocto/conf/abi_version.conf b/meta-yocto/conf/abi_version.conf
> deleted file mode 100644
> index 83b668a..0000000
> --- a/meta-yocto/conf/abi_version.conf
> +++ /dev/null
> @@ -1,7 +0,0 @@
> -#
> -# OELAYOUT_ABI allows us to notify users when the format of TMPDIR changes in
> -# an incompatible way. Such changes should usually be detailed in the commit
> -# that breaks the format and have been previously discussed on the mailing list
> -# with general agreement from the core team.
> -#
> -OELAYOUT_ABI = "8"
> diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
> index e4d7c1d..e51ccdf 100644
> --- a/meta-yocto/conf/distro/poky.conf
> +++ b/meta-yocto/conf/distro/poky.conf
> @@ -67,3 +67,10 @@ CONNECTIVITY_CHECK_URIS ?= "git://git.yoctoproject.org/yocto-firewall-test;proto
>
>   # Default hash policy for distro
>   BB_SIGNATURE_HANDLER ?= 'OEBasicHash'
> +#
> +# OELAYOUT_ABI allows us to notify users when the format of TMPDIR changes in
> +# an incompatible way. Such changes should usually be detailed in the commit
> +# that breaks the format and have been previously discussed on the mailing list
> +# with general agreement from the core team.
> +#
> +OELAYOUT_ABI = "8"


