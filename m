Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 23BBC4C80050
	for <poky@yoctoproject.org>; Fri,  8 Apr 2011 13:12:37 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 08 Apr 2011 11:12:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,325,1299484800"; d="scan'208";a="730921385"
Received: from unknown (HELO [10.255.13.36]) ([10.255.13.36])
	by orsmga001.jf.intel.com with ESMTP; 08 Apr 2011 11:12:35 -0700
Message-ID: <4D9F5013.6060104@intel.com>
Date: Fri, 08 Apr 2011 11:12:35 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Xiaofeng Yan <xiaofeng.yan@windriver.com>
References: <cover.1301733116.git.xiaofeng.yan@windriver.com>
	<2f13241403454d83affaff72721a25ad876848bd.1301733116.git.xiaofeng.yan@windriver.com>
In-Reply-To: <2f13241403454d83affaff72721a25ad876848bd.1301733116.git.xiaofeng.yan@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] LSB_Setup.sh: Add function to install all test	packages
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
X-List-Received-Date: Fri, 08 Apr 2011 18:12:37 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/02/2011 01:35 AM, Xiaofeng Yan wrote:
> From: Xiaofeng Yan<xiaofeng.yan@windriver.com>
>
> Add function to  install all of lsb test suite packages instead of installing parts of test packages
>
> Signed-off-by: Xiaofeng Yan<xiaofeng.yan@windriver.com>
> ---
>   meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh |   50 ++++++++++++++---------
>   1 files changed, 30 insertions(+), 20 deletions(-)
>
> diff --git a/meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh b/meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh
> index 78c33b3..7ce823e 100644
> --- a/meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh
> +++ b/meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh
> @@ -17,11 +17,38 @@
>
>   ##Prepare Steps
>   #Steps 0; Confirm the installed LSB Packages
> -
> +ARCH=`uname -m`
> +APP_FILE=`ls /lsb-Application/*.rpm`
>   if [ ! -f /opt/lsb/test/manager/bin/dist-checker-start.pl ]
>   then
>           if [ -d /lsb-dist-testkit ];then
> -                cd /lsb-dist-testkit&&  sh install.sh&&  cd ../lsb-Application&&  rpm -ivh *.rpm --nodeps --force
> +		if [ ${ARCH} == i686 ];then
> +                	echo "i486-suse">>  /etc/rpm/platform
> +                	echo "i486-noarch">>  /etc/rpm/platform
> +                	echo "i486-pc">>  /etc/rpm/platform
> +                	echo "noarch-suse">>  /etc/rpm/platform
> +		else
> +                	echo "${ARCH}-suse">>  /etc/rpm/platform
> +                	echo "${ARCH}-noarch">>  /etc/rpm/platform
> +                	echo "${ARCH}-pc">>  /etc/rpm/platform
> +                	echo "noarch-suse">>  /etc/rpm/platform
> +                fi
> +                cd /lsb-dist-testkit&&  sh install.sh&&  cd ../lsb-Application
> +                for i in ${APP_FILE}
> +                do
> +                    echo "$i" |grep -q "apache"
> +                    if [ $? -eq 0 ]
> +                    then
> +                        rpm -ivh $i --noscripts --nodeps --force
> +                    else
> +                        rpm -ivh $i --nodeps --force
> +                    fi
> +                done
> +                mkdir -p /var/opt/lsb/test/manager/packages/ftp.linuxfoundation.org/pub/lsb/snapshots/appbat/tests/
> +                mkdir -p  /var/opt/lsb/test/manager/packages/ftp.linuxfoundation.org/pub/lsb/app-battery/tests/
> +		cp expect-tests.tar  test1.pdf  test2.pdf /var/opt/lsb/test/manager/packages/ftp.linuxfoundation.org/pub/lsb/app-battery/tests/
> +                cp raptor-tests.tar  tcl-tests.tar /var/opt/lsb//test/manager/packages/ftp.linuxfoundation.org/pub/lsb/snapshots/appbat/tests/
> +		cd ..
>           else
>                   echo "Please install the realted LSB Packages"
>                   exit 1
> @@ -33,10 +60,6 @@ id tester
>   if [ $? -eq  0 ]
>   then
>           echo "User tester was existed"
> -        echo -n "Deleted tester(yes/no):"
> -        read INPUT
> -case $INPUT in
> -yes|y)
>           sleep 1
>           userdel -rf tester
>           if [ $? -eq 0 ] || [ $? -eq 6 ]
> @@ -45,19 +68,6 @@ yes|y)
>          else
>                   echo "Fail to delete user tester"
>           fi
> -        ;;
> -no|n)
> -        sleep 1
> -        echo "There must be deleted User test before ran LSB4 on Target"
> -        echo ""
> -        exit 1
> -        ;;
> -*)
> -        sleep 1
> -        echo "Input ERROR, pls reinput that your expected"
> -        echo ""
> -        exit 1
> -esac
>   else
>           echo "There was not User tester"
>   fi
> @@ -177,7 +187,7 @@ ping -c 5 ftp.linux-foundation.org
>   check
>
>   #Step 7
> -insmod /lib/modules/2.6.37.2-yocto-standard\+/kernel/drivers/block/loop.ko
> +insmod /lib/modules/2.6.*/kernel/drivers/block/loop.ko
>   if [ $? != 0 ];then
>   	echo "Please insmod loop.ko  manully"
>   fi
Pulled into master.

This patch caused a checksum failure, please be sure to update the 
LIC_FILES_CHKSUM next time.

Thanks
	Sau!


