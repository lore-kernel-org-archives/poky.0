Return-Path: <radu.moisan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 706E3E003D9
	for <poky@yoctoproject.org>; Mon, 12 Nov 2012 11:48:56 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 12 Nov 2012 11:48:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,764,1344236400"; d="scan'208";a="240870999"
Received: from elitebook.jf.intel.com (HELO [10.7.202.65]) ([10.7.202.65])
	by orsmga002.jf.intel.com with ESMTP; 12 Nov 2012 11:48:55 -0800
Message-ID: <50A152A6.60802@intel.com>
Date: Mon, 12 Nov 2012 21:48:54 +0200
From: Radu Moisan <radu.moisan@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121028 Thunderbird/16.0.2
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <1352749878-10645-1-git-send-email-radu.moisan@intel.com>
In-Reply-To: <1352749878-10645-1-git-send-email-radu.moisan@intel.com>
Subject: Re: [PATCH] initrd: add recovery feature
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
X-List-Received-Date: Mon, 12 Nov 2012 19:48:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Ops, wrong address, resending on openembedded-core@lists.openembedded.org

Radu

On 11/12/2012 09:51 PM, Radu Moisan wrote:
> Allows you to use as root a partition instead of the rootfs.img
> for recovering an old install, and fails safe when no rootfs is
> found, dropping the user to a shell if something goes wrong.
>
> Signed-off-by: Radu Moisan <radu.moisan@intel.com>
> Signed-off-by: Alexandru Damian <alexandru.damian@intel.com>
> ---
>   meta/recipes-core/initrdscripts/files/init-live.sh |   44 +++++++++++++++++++-
>   1 file changed, 42 insertions(+), 2 deletions(-)
>
> diff --git a/meta/recipes-core/initrdscripts/files/init-live.sh b/meta/recipes-core/initrdscripts/files/init-live.sh
> index 5682fd1..0ef30ea 100644
> --- a/meta/recipes-core/initrdscripts/files/init-live.sh
> +++ b/meta/recipes-core/initrdscripts/files/init-live.sh
> @@ -68,13 +68,49 @@ fatal() {
>   
>   early_setup
>   
> +# wait for the udevd to settle
> +echo "Waiting for udev to settle..."
> +sleep 3
> +
>   [ -z "$CONSOLE" ] && CONSOLE="/dev/console"
>   
>   read_args
>   
> -echo "Waiting for removable media..."
> -while true
> +# boot partiton menu, if one or more bootable partitions exist
> +BOOTMENU=`ls /media/sd*/sbin/init 2>/dev/null | wc -l`
> +if [ $BOOTMENU -gt 0 ]; then
> +   choice=0
> +   while [ $choice -le 0 ]; do
> +       echo "1). boot live ramfs image"
> +       count=2
> +       for i in `ls /media/sd*/sbin/init 2>/dev/null | cut -d "/" -f 3`; do
> +           echo $count"). boot /dev/"$i
> +           choicecmd[$count]=$i
> +           count=$(( count + 1))
> +       done
> +       echo
> +       echo -n "Your choice: "
> +       read choice
> +   done
> +
> +   if [ $choice -gt 1 ]; then
> +       #ROOT_MOUNT=/media/${choicecmd[${choice}]}
> +       ROOT_MOUNT=none #testing
> +       echo "Booting local root ... $ROOT_MOUNT"
> +       if [ -d $ROOT_MOUNT ]; then
> +           boot_live_root
> +       else
> +           fatal "Rootfs partition not mounted"
> +       fi
> +   fi
> +fi
> +
> +echo -n "Waiting for removable media... "
> +CNT=0
> +while [ $CNT -le 3 ];
>   do
> +  echo -n "$CNT "
> +  CNT=$(( $CNT + 1 ))
>     for i in `ls /media 2>/dev/null`; do
>         if [ -f /media/$i/$ROOT_IMAGE ] ; then
>   		found="yes"
> @@ -91,6 +127,10 @@ do
>     sleep 1
>   done
>   
> +if [ "$found" != "yes" ]; then
> +   fatal "...could not mount removable media, drop to shell"
> +fi
> +
>   case $label in
>       boot)
>   	mkdir $ROOT_MOUNT


