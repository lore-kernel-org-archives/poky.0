Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C02974C800B7
	for <poky@yoctoproject.org>; Thu, 12 May 2011 10:41:26 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4CFfPEh023839
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 12 May 2011 08:41:25 -0700 (PDT)
Received: from [128.224.163.140] (128.224.163.140) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 12 May 2011 08:41:25 -0700
Message-ID: <4DCBFFA3.4090907@windriver.com>
Date: Thu, 12 May 2011 23:41:23 +0800
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
X-List-Received-Date: Thu, 12 May 2011 15:41:27 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Darren,

I find that the busybox's pidof can't get the pid of the "shell script"
(opposite to the binary) currently, it doesn't support the "-x" option,
so it seems that we should patch the busybox's pidof.c, is this acceptable
or not?

Thank you very much

Robert

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
>> Add a skeleton for init scripts, the original structure is from
>> /etc/init.d/skeleton of Ubuntu 10.10, it is in sysvinit_2.87dsf,
>> so add the COPYRIGHT of sysvinit_2.87dsf, it is GPLv2. I have
>> modified the original skeleton a lot to make it as easy as possible,
>> just use posix shell command, and have tested it in core-image-minimal.
>>
>> * The skeleton implements the following items:
>>    - start, stop, restart, status and force-reload.
>>      And the force-reload is a alias of restart.
>>    - not implements reload and try-restart, since only a few programs
>>      have such functions, so just leave them as placeholders.
>>
>> * Use start-stop-daemon to start and stop the program, it is useful to
>>    deal with the pidfile, check whether there is already a running
>>    program or not, and print relevant messages.
>>
>> * The skeleton will run by default, and output the *simulation* message,
>>    here is the testing result:
>>    1) #./skeleton start (test start)
>>       Starting skeleton ...
>>
>>    2) #./skeleton start (test start the already running program)
>>       Starting skeleton ...
>>       /usr/sbin/skeleton already running.
>>       20426
>>
>>       It outputs two lines when start again, one line would be better, this
>>       is because of the start-stop-daemon, but I'm not sure whether this is
>>       worth.
>>
>>    3) #./skeleton status (test status when running)
>>       skeleton is running.
>
> We should use a consistent string for the daemon. You use the full path
> in #2 above and only the basename here in #3.
>
>>
>>    4) #./skeleton stop (test stop)
>>       Stopped skeleton (pid 20426).
>
> I prefer this format (with the pid listed on the same line) to that in
> #2. #3 should also list the pid. For example, my dovecot initscript reports:
>
> $ status dovecot
> dovecot start/running, process 18529
>
> It our case something like the following seems adequate.
>
> $ ./skeleton status
> skeleton is running (18529)
>
>>
>>    5) #./skeleton stop (test stop again)
>>       No skeleton found running; none killed.
>
> I'd prefer:
>
> skeleton is not running; none killed.
>
>>
>>    6) #./skeleton status (test status when stopped)
>>       skeleton is not running.
>>
>>    7) #./skeleton start (test restart when running)
>>       Starting skeleton ...
>>
>>       #./skeleton restart
>>       Stopped skeleton (pid 20444).
>>       Starting skeleton ...
>>
>>    8) #./skeleton stop (test restart when stopped)
>>       Stopped skeleton (pid 20444).
>>
>>       #./skeleton restart
>>       No skeleton found running; none killed.
>
> skeleton is not running; none killed.
>
>>       Starting skeleton ...
>>
>> * Have used syslogd to test it in a real world(With both
>>    core-image-minimal and core-image-sato)
>>
>> * TODO:
>>    - Move the function status_of_proc to /etc/init.d/functions ?
>
>
> It's not a bad idea. If so, that has to be part of the base images, not
> the skeleton.
>
>
>>    - Fix start-stop-daemon to get an one line output when start a
>>      already runing program?
>
>
> I wouldn't bother. I don't see anything wrong with two lines.
>
>
>>
>> Signed-off-by: Robert Yang<liezhi.yang@windriver.com>
>> ---
>>   .../recipes-skeleton/service/service/COPYRIGHT     |   19 ++
>>   .../recipes-skeleton/service/service/skeleton      |  188 ++++++++++++++++++++
>>   .../recipes-skeleton/service/service_0.1.bb        |   20 ++
>>   3 files changed, 227 insertions(+), 0 deletions(-)
>>   create mode 100644 meta-skeleton/recipes-skeleton/service/service/COPYRIGHT
>>   create mode 100644 meta-skeleton/recipes-skeleton/service/service/skeleton
>>   create mode 100644 meta-skeleton/recipes-skeleton/service/service_0.1.bb
>>
>> diff --git a/meta-skeleton/recipes-skeleton/service/service/COPYRIGHT b/meta-skeleton/recipes-skeleton/service/service/COPYRIGHT
>> new file mode 100644
>> index 0000000..36703d9
>> --- /dev/null
>> +++ b/meta-skeleton/recipes-skeleton/service/service/COPYRIGHT
>> @@ -0,0 +1,19 @@
>> +Sysvinit is Copyright (C) 1991-2004 Miquel van Smoorenburg
>> +
>> +    This program is free software; you can redistribute it and/or modify
>> +    it under the terms of the GNU General Public License as published by
>> +    the Free Software Foundation; either version 2 of the License, or
>> +    (at your option) any later version.
>> +
>> +    This program is distributed in the hope that it will be useful,
>> +    but WITHOUT ANY WARRANTY; without even the implied warranty of
>> +    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> +    GNU General Public License for more details.
>> +
>> +    You should have received a copy of the GNU General Public License
>> +    along with this program; if not, write to the Free Software
>> +    Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301 USA
>> +
>> +On Debian GNU/Linux systems, the complete text of the GNU General
>> +Public License can be found in `/usr/share/common-licenses/GPL'.
>
>
> You don't need to keep this last bit of where to find it on Debian
> systems - we aren't a Debian system.
>
>
>> +
>> diff --git a/meta-skeleton/recipes-skeleton/service/service/skeleton b/meta-skeleton/recipes-skeleton/service/service/skeleton
>> new file mode 100644
>> index 0000000..58804e4
>> --- /dev/null
>> +++ b/meta-skeleton/recipes-skeleton/service/service/skeleton
>> @@ -0,0 +1,188 @@
>> +#! /bin/sh
>> +### BEGIN INIT INFO
>> +# Provides:          skeleton
>> +# Required-Start:    $local_fs
>> +# Should-Start:
>> +# Required-Stop:     $local_fs
>> +# Should-Stop:
>> +# Default-Start:     2 3 4 5
>> +# Default-Stop:      0 1 6
>> +# Short-Description: Example initscript
>> +# Description:       This file should be used to construct scripts to be
>> +#                    placed in /etc/init.d.
>> +### END INIT INFO
>> +
>> +# Common steps to convert this skeleton into a real init script
>> +# 1) cp skeleton<the_real_name>
>> +# 2) Set DESC and NAME
>> +# 3) Check whether the daemon app is /usr/sbin/$NAME, if not, set it.
>> +# 4) Set DAEMON_ARGS if there is any
>> +# 5) Remove the useless code
>> +
>> +# PATH should only include /usr/* if it runs after the mountnfs.sh script
>> +PATH=/sbin:/usr/sbin:/bin:/usr/bin
>
>
> Paths like usr and etc need to be rewritten at install. I wonder if
> there might not be a better way to represent them in the skeleton.
>
>
>> +
>> +DESC="skeleton"
>> +NAME="skeleton"
>> +DAEMON=/usr/sbin/$NAME
>> +DAEMON_ARGS=""
>> +PIDFILE=/var/run/$NAME.pid
>> +SCRIPTNAME=/etc/init.d/$NAME
>> +
>> +#### Simulation begin
>> +# Simulate the script running, this is only used for printing the
>> +# information by default, it does nothing and should be removed from
>> +# the real init script
>
>
> It should be removed from the skeleton as well. I suggest writing a test
> script which calls "skeleton start; skeleton stop" etc. Especially since
> you're not testing the actual script by running this, and you duplicate
> code. So if you update it in only one spot, this testing will not catch it.
>
>
>> +fake_do_stop () {
>> +	if [ -f $PIDFILE ]; then
>> +		echo "Stopped $NAME (pid `cat $PIDFILE`)."
>> +		rm -f $PIDFILE
>> +	else
>> +		echo "No $NAME found running; none killed."
>> +	fi
>> +}
>> +
>> +if [ "$NAME" = "skeleton" ]; then
>> +	case $1 in
>> +	  start)
>> +		echo "Starting $DESC ..."
>> +		if [ -f $PIDFILE ]; then
>> +			echo "$DAEMON already running."
>> +			cat $PIDFILE
>> +		else
>> +			echo $$>$PIDFILE
>> +		fi
>> +		;;
>> +	  stop)
>> +		fake_do_stop
>> +		;;
>> +	  status)
>> +		if [ -f $PIDFILE ]; then
>> +			echo "$NAME is running."
>> +		else
>> +			echo "$NAME is not running."
>> +		fi
>> +		;;
>> +	  restart|force-reload)
>> +		fake_do_stop
>> +		echo "Starting $DESC ..."
>> +		echo $$>$PIDFILE
>> +		;;
>> +	  *)
>> +		echo "Usage: $SCRIPTNAME {start|stop|status|restart|force-reload}">&2
>> +		exit 3
>> +		;;
>> +	esac
>> +exit 0
>> +fi
>> +#### Simulation end
>> +
>> +# Exit if the package is not installed
>> +[ -x "$DAEMON" ] || exit 0
>> +
>> +# Read configuration variable file if it is present
>> +[ -r /etc/default/$NAME ]&&  . /etc/default/$NAME
>> +
>> +#
>> +# Function that starts the daemon/service
>> +#
>> +do_start()
>> +{
>> +	start-stop-daemon -S --pidfile $PIDFILE --exec $DAEMON -- $DAEMON_ARGS
>> +	# Add code here, if necessary, that waits for the process to be ready
>> +	# to handle requests from services started subsequently which depend
>> +	# on this one.  As a last resort, sleep for some time.
>> +}
>> +
>> +#
>> +# Function that stops the daemon/service
>> +#
>> +do_stop()
>> +{
>> +	start-stop-daemon -K -v --pidfile $PIDFILE --name $NAME
>> +	# Wait for children to finish too if this is a daemon that forks
>> +	# and if the daemon is only ever run from this initscript.
>> +	# If the above conditions are not satisfied then add some other code
>> +	# that waits for the process to drop all resources that could be
>> +	# needed by services started subsequently.  A last resort is to
>> +	# sleep for some time.
>> +	#
>> +	#start-stop-daemon -K --oknodo --exec $DAEMON
>
>
> What does this command do?
>
>
>> +
>> +	# Many daemons don't delete their pidfiles when they exit.
>> +	rm -f $PIDFILE
>
>
> Should STDERR be redirected to /dev/null in case the file does not exist?
>
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

