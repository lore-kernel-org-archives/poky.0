Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2ABA64C81014
	for <poky@yoctoproject.org>; Wed, 11 May 2011 19:47:42 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4C0lfau013712
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 11 May 2011 17:47:41 -0700 (PDT)
Received: from [128.224.163.140] (128.224.163.140) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 11 May 2011 17:47:40 -0700
Message-ID: <4DCB2E2A.2010008@windriver.com>
Date: Thu, 12 May 2011 08:47:38 +0800
From: Robert Yang <liezhi.yang@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1305120861.git.liezhi.yang@windriver.com>
	<8b4e9efcd34ac73babf6928cb2909ce88c4df69d.1305120861.git.liezhi.yang@windriver.com>
	<4DCACDDE.1090205@linux.intel.com>
In-Reply-To: <4DCACDDE.1090205@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/2] Add a skeleton for init scripts
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
X-List-Received-Date: Thu, 12 May 2011 00:47:42 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Darren,

Thank you very much for you detailed review, I think that I'd better
not use the start-stop-daemon(or patch it) to get the output message
that we need. because the inconsistent output is from

And please see the comments below.

On 05/12/2011 01:56 AM, Darren Hart wrote:
> Hi Robert,
>
> Thank you for doing this. This is a great start. As a preface to my
> comments below, I am going to be incredibly particular about formatting
> and such as this skeleton will be used by literally thousands of recipes
> in the future and now is the time to ensure consistent formatting and to
> eliminate any issues we don't want to see propagated.
>
>
> On 05/11/2011 06:41 AM, Robert Yang wrote:
>> +	#
>> +	#start-stop-daemon -K --oknodo --exec $DAEMON
>
>
> What does this command do?
>

if the $DAEMON is not running, exit with 0.

>
>> +
>> +	# Many daemons don't delete their pidfiles when they exit.
>> +	rm -f $PIDFILE
>
>
> Should STDERR be redirected to /dev/null in case the file does not exist?
>

I think rm -f would output nothing when there is no $PIDFILE.

//Robert

>
>> +}
>> +
>> +#
>> +# Function that sends a SIGHUP to the daemon/service
>> +#
>> +#do_reload() {
>> +	#
>> +	# If the daemon can reload its configuration without
>> +	# restarting (for example, when it is sent a SIGHUP),
>> +	# then implement that here.
>> +	#
>> +	#start-stop-daemon -K --signal 1 --pidfile $PIDFILE --name $NAME
>> +#}
>> +
>> +#
>> +# Function that shows the daemon/service status
>> +#
>> +status_of_proc () {
>> +	pidof $NAME>/dev/null 2>&1
>> +	case $? in
>> +	  0)
>> +		echo "$NAME is running."
>> +		return 0
>> +		;;
>> +	  127)
>> +		echo "Can't get the status of $NAME (no pidof found)"
>> +		;;
>> +	  *)
>> +		echo "$NAME is not running.">&2
>> +		return 1
>> +		;;
>> +	esac
>> +}
>> +
>> +case "$1" in
>> +  start)
>> +	echo "Starting $DESC ..."
>> +	# Don't need check the return value, start-stop-daemon would
>> +	# print the failed reason automatically.
>> +	do_start
>> +	;;
>> +  stop)
>> +	do_stop
>> +	;;
>> +  status)
>> +	status_of_proc&&  exit 0 || exit $?
>> +	;;
>> +  #reload|force-reload)
>
>
> We don't want to have force-reload in two locations, even commented out.
> Going to lead to confusion.
>
>
>> +	#
>> +	# If do_reload() is not implemented then leave this commented out
>> +	# and leave 'force-reload' as an alias for 'restart'.
>> +	#
>> +	#echo "Reloading $DESC ..."
>> +	#do_reload
>> +	#;;
>> +  restart|force-reload)
>> +	#
>> +	# If the "reload" option is implemented then remove the
>> +	# 'force-reload' alias.
>> +	#
>> +	do_stop
>> +	echo "Starting $DESC ..."
>> +	do_start
>> +	;;
>> +  #try-restart)
>> +	# If do_try_restart() is not implemented then leave this commented out
>> +	#echo "Trying to restart $DESC ..."
>
>
> This needs a description of how it should be implemented. i.e. how is
> this different from restart?
>
>
>> +	#do_try_restart()
>> +	#;;
>> +  *)
>> +	echo "Usage: $SCRIPTNAME {start|stop|status|restart|force-reload}">&2
>> +	exit 3
>> +	;;
>> +esac
>> +
>> diff --git a/meta-skeleton/recipes-skeleton/service/service_0.1.bb b/meta-skeleton/recipes-skeleton/service/service_0.1.bb
>> new file mode 100644
>> index 0000000..88a7a59
>> --- /dev/null
>> +++ b/meta-skeleton/recipes-skeleton/service/service_0.1.bb
>> @@ -0,0 +1,20 @@
>> +DESCRIPTION = "The canonical example of init scripts"
>> +SECTION = "base"
>> +LICENSE = "GPLv2"
>> +LIC_FILES_CHKSUM = "file://${WORKDIR}/COPYRIGHT;md5=3900421dc55b9e70428bc522557a66d4"
>> +RDEPENDS_${PN} = "initscripts"
>> +PR = "r0"
>> +
>> +SRC_URI = "file://skeleton \
>> +	   file://COPYRIGHT \
>> +	   "
>> +
>> +CONFFILES_${PN} += "${sysconfdir}/init.d/skeleton"
>> +
>> +PACKAGE_ARCH = "all"
>> +
>> +do_install () {
>> +	install -d ${D}/${sysconfdir}/init.d
>> +	install -m 0755 ${WORKDIR}/skeleton ${D}/${sysconfdir}/init.d/
>> +}
>> +
>
> This installs a file that uses directories like /usr which should be
> replaced with the appropriate setting. For example, in mediatomb (and
> others) we do this like this:
>
> cat ${WORKDIR}/config.xml | \
>      sed -e 's,/etc,${sysconfdir},g' \
> 	-e 's,/usr/sbin,${sbindir},g' \
> 	-e 's,/var,${localstatedir},g' \
> 	-e 's,/usr/bin,${bindir},g' \
> 	-e 's,/usr,${prefix},g'>  ${D}${sysconfdir}/mediatomb/config.xml
>

