Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id A7DBF4C80053
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 21:07:52 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 1FB7F16603AA; Fri, 11 Feb 2011 20:07:52 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id BB93E16603A1;
	Fri, 11 Feb 2011 20:07:50 -0700 (MST)
Message-ID: <4D55F986.8060707@mlbassoc.com>
Date: Fri, 11 Feb 2011 20:07:50 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1297455890.git.mark.hatle@windriver.com>	<036ec84d411be6ee4d2bb2bf4c0fd2cb5c811cf7.1297455890.git.mark.hatle@windriver.com>
	<4D55BF29.90703@linux.intel.com>
In-Reply-To: <4D55BF29.90703@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] busybox: Rework busybox to fix limitations in	initscripts
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
X-List-Received-Date: Sat, 12 Feb 2011 03:07:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/11/2011 03:58 PM, Darren Hart wrote:
> On 02/11/2011 12:26 PM, Mark Hatle wrote:
>> A recent busybox change added a "second" initscript to the main busybox
>> package. This however is not supported by the update-rc.d.bbclass.
>> Instead we split the package so that each initscript gets it's own split.
>
> Does this address:
>
> http://bugzilla.pokylinux.org/show_bug.cgi?id=706

Should do - it's exactly the problem I was working with Mark about.

>
> --
> Darren
>
>> Signed-off-by: Mark Hatle<mark.hatle@windriver.com>
>> ---
>> meta/recipes-core/busybox/busybox.inc | 21 ++++++++++++++-------
>> 1 files changed, 14 insertions(+), 7 deletions(-)
>>
>> diff --git a/meta/recipes-core/busybox/busybox.inc b/meta/recipes-core/busybox/busybox.inc
>> index 55f056c..9f2d64c 100644
>> --- a/meta/recipes-core/busybox/busybox.inc
>> +++ b/meta/recipes-core/busybox/busybox.inc
>> @@ -12,22 +12,25 @@ SECTION = "base"
>> PRIORITY = "required"
>>
>> export EXTRA_CFLAGS = "${CFLAGS}"
>> -PACKAGES =+ "${PN}-httpd ${PN}-udhcpd"
>> +PACKAGES =+ "${PN}-httpd ${PN}-udhcpd ${PN}-udhcpc ${PN}-syslog"
>>
>> FILES_${PN}-httpd = "${sysconfdir}/init.d/busybox-httpd /srv/www"
>> +FILES_${PN}-syslog = "${sysconfdir}/init.d/syslog* ${sysconfdir}/syslog.conf*"
>> FILES_${PN}-udhcpd = "${sysconfdir}/init.d/busybox-udhcpd"
>> +FILES_${PN}-udhcpc = "${sysconfdir}/udhcpc.d ${datadir}/udhcpc ${sysconfdir}/init.d/busybox-udhcpc"
>>
>> -FILES_${PN} += "${datadir}/udhcpc"
>> -FILES_${PN} += "${sysconfdir}/init.d/busybox-udhcpc"
>> +INITSCRIPT_PACKAGES = "${PN}-httpd ${PN}-syslog ${PN}-udhcpd ${PN}-udhcpc"
>>
>> -INITSCRIPT_PACKAGES = "${PN} ${PN}-httpd ${PN}-udhcpd"
>> INITSCRIPT_NAME_${PN}-httpd = "busybox-httpd"
>> +INITSCRIPT_NAME_${PN}-syslog = "syslog"
>> INITSCRIPT_NAME_${PN}-udhcpd = "busybox-udhcpd"
>> -INITSCRIPT_NAME_${PN} = "syslog busybox-udhcpc"
>> -CONFFILES_${PN} = "${sysconfdir}/syslog.conf.${PN}"
>> +INITSCRIPT_NAME_${PN}-udhcpc = "busybox-udhcpc"
>> +CONFFILES_${PN}-syslog = "${sysconfdir}/syslog.conf.${PN}"
>> +
>> +RRECOMMENDS_${PN} = "${PN}-syslog ${PN}-udhcpc"
>>
>> # This disables the syslog startup links in slugos (see slugos-init)
>> -INITSCRIPT_PARAMS_${PN}_slugos = "start 20 ."
>> +INITSCRIPT_PARAMS_${PN}-syslog_slugos = "start 20 ."
>>
>> inherit cml1 update-rc.d
>>
>> @@ -116,7 +119,9 @@ pkg_postinst_${PN} () {
>>
>> # This adds the links, remember that this has to work when building an image too, hence the $D
>> while read link; do case "$link" in /*/*/*) to="../../bin/busybox";; /bin/*) to="busybox";; /*/*) to="../bin/busybox";; esac; bn=`basename $link`; update-alternatives --install
>> $link $bn $to 50; done<$D/etc/busybox.links
>> +}
>>
>> +pkg_postinst_${PN}-syslog () {
>> update-alternatives --install ${sysconfdir}/init.d/syslog syslog-init syslog.${PN} 50
>> update-alternatives --install ${sysconfdir}/syslog.conf syslog-conf syslog.conf.${PN} 50
>> }
>> @@ -150,7 +155,9 @@ pkg_prerm_${PN} () {
>> bn=`basename $link`
>> sh /usr/bin/update-alternatives --remove $bn $to
>> done</etc/busybox.links
>> +}
>>
>> +pkg_prerm_${PN}-syslog () {
>> # remove syslog
>> if test "x$D" = "x"; then
>> if test "$1" = "upgrade" -o "$1" = "remove"; then
>
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

