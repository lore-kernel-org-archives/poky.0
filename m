Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0144EE0044D
	for <poky@yoctoproject.org>; Tue, 20 Mar 2012 11:42:56 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 20AE3F811F3; Tue, 20 Mar 2012 12:42:56 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id E93A1F811E4;
	Tue, 20 Mar 2012 12:42:53 -0600 (MDT)
Message-ID: <4F68CFAD.5000103@mlbassoc.com>
Date: Tue, 20 Mar 2012 12:42:53 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: "Wang, Shane" <shane.wang@intel.com>
References: <4F67E970.2020708@mlbassoc.com>
	<1332224739.1848.26.camel@dongxiao-osel>
	<3AB6CE7F274E534CAFD089D127A8A1FC23AF2513@SHSMSX102.ccr.corp.intel.com>
In-Reply-To: <3AB6CE7F274E534CAFD089D127A8A1FC23AF2513@SHSMSX102.ccr.corp.intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Can't run HOB
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
X-List-Received-Date: Tue, 20 Mar 2012 18:42:57 -0000
X-Groupsio-MsgNum: 7552
Content-Type: multipart/mixed; boundary="------------030600010702000500070609"

--------------030600010702000500070609
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-03-20 07:18, Wang, Shane wrote:
> I suspect msg = "".
>
> Can you add print(msg) at the beginning of the function? That's:
>
> =========
>       def handler_command_failed_cb(self, handler, msg):
>           print(msg)
>           if msg:
>               lbl = "<b>Error</b>\n" lbl = lbl + "%s\n\n" % msg dialog =
> =========

Message attached (it's big).

Note: this setup (my metadata + meta-ti + yocto core) builds images just fine.

> Xu, Dongxiao wrote on 2012-03-20:
>
>> On Mon, 2012-03-19 at 20:20 -0600, Gary Thomas wrote:
>>> When I try HOB on my tree, it parses the metadata to around 57%
>>> and then brings up what I guess is a warning (sadly, it only shows
>>> an empty dialogue with an "OK" button).  This seems to happen because
>>> I have meta-ti in my bblayers.conf.  I also have this statement in
>>> my local.conf:
>>>     # Ignore troublesome TI recipes
>>>     BBMASK = ".*/meta-ti/recipes-misc/"
>>> Maybe HOB is not honouring the BBMASK?
>>
>> Variables are still handled in bitbake server side, Hob only acts as a
>> bridge between user and bitbake server.
>>
>> The phenomenon is strange since the code piece will detect if the error
>> msg is None or not. If it is None, it will not pop up the error dialog.
>>
>> ===============================================================
>> =
>>      def handler_command_failed_cb(self, handler, msg):
>>          if msg:
>>              lbl = "<b>Error</b>\n" lbl = lbl + "%s\n\n" % msg dialog =
>>              CrumbsMessageDialog(self, lbl, gtk.STOCK_DIALOG_WARNING)
>>              dialog.add_button(gtk.STOCK_OK, gtk.RESPONSE_OK) response =
>>              dialog.run() dialog.destroy()
>> =============================================================== =
>>
>> What's does it do if you click the "OK" button?
>>
>> Thanks,
>> Dongxiao
>>
>>>
>>
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------030600010702000500070609
Content-Type: text/plain;
 name="hob.err"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="hob.err"

Failure expanding variable do_compile, expression was     # TODO :: KERNEL_CC, should use for kernel module build?
    # TODO :: Check the 'unset's

    unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS

    do_make_scripts

    # Build the gpp (hlos) kernel space
    cd ${SYSLINK_ROOT}/ti/syslink/utils/hlos/knl/Linux && make \
        ARCH="${TARGET_ARCH}" \
        CROSS_COMPILE="${TARGET_PREFIX}" \
        SYSLINK_PLATFORM="${SYSLINKPLATFORM}" \
        SYSLINK_VARIANT="${SYSLINKVARIANT}" \
        SYSLINK_LOADER="${SYSLINKLOADER}" \
        SYSLINK_PKGPATH="${IPC_INSTALL_DIR}/packages" \
        KDIR="${STAGING_KERNEL_DIR}"

#    # Build the gpp (hlos) kernel space samples.
#    for sample in ${SYSLINKHLOSSAMPLES}; do
#        cd ${SYSLINK_ROOT}/ti/syslink/samples/hlos/$sample/knl/Linux && make \
#            ARCH="${TARGET_ARCH}" \
#            CROSS_COMPILE="${TARGET_PREFIX}" \
#            SYSLINK_PLATFORM="${SYSLINKPLATFORM}" \
#            SYSLINK_VARIANT="${SYSLINKVARIANT}" \
#            SYSLINK_LOADER="${SYSLINKLOADER}" \
#            SYSLINK_PKGPATH="${IPC_INSTALL_DIR}/packages" \
#            SYSLINK_SDK=EZSDK \
#            KDIR="${STAGING_KERNEL_DIR}"
#    done

    # Build the gpp (hlos) user space
    cd ${SYSLINK_ROOT}/ti/syslink/utils/hlos/usr/Linux && make \
        ARCH="${TARGET_ARCH}" \
        CROSS_COMPILE="${TARGET_PREFIX}" \
        TOOLCHAIN_PREFIX="${TOOLCHAIN_PATH}/${TARGET_PREFIX}" \
        SYSLINK_PLATFORM="${SYSLINKPLATFORM}" \
        SYSLINK_VARIANT="${SYSLINKVARIANT}" \
        SYSLINK_LOADER="${SYSLINKLOADER}" \
        SYSLINK_PKGPATH="${IPC_INSTALL_DIR}/packages"

    # Build the gpp (hlos) user space samples
    # First build the common lib for samples.
    cd ${SYSLINK_ROOT}/ti/syslink/samples/hlos/common/usr/Linux && make \
        ARCH="${TARGET_ARCH}" \
        CROSS_COMPILE="${TARGET_PREFIX}" \
        TOOLCHAIN_PREFIX="${TOOLCHAIN_PATH}/${TARGET_PREFIX}" \
        SYSLINK_PLATFORM="${SYSLINKPLATFORM}" \
        SYSLINK_VARIANT="${SYSLINKVARIANT}" \
        SYSLINK_LOADER="${SYSLINKLOADER}" \
        SYSLINK_SDK=EZSDK \
        SYSLINK_PKGPATH="${IPC_INSTALL_DIR}/packages"

    for sample in ${SYSLINKHLOSSAMPLES}; do
        cd ${SYSLINK_ROOT}/ti/syslink/samples/hlos/$sample/usr/Linux && make \
            ARCH="${TARGET_ARCH}" \
            CROSS_COMPILE="${TARGET_PREFIX}" \
            TOOLCHAIN_PREFIX="${TOOLCHAIN_PATH}/${TARGET_PREFIX}" \
            SYSLINK_PLATFORM="${SYSLINKPLATFORM}" \
            SYSLINK_VARIANT="${SYSLINKVARIANT}" \
            SYSLINK_LOADER="${SYSLINKLOADER}" \
            SYSLINK_SDK=EZSDK \
            SYSLINK_PKGPATH="${IPC_INSTALL_DIR}/packages"
    done

    # Build the dsp/arm (rtos) code (system and samples)
    # cd ${SYSLINK_ROOT}/ti/syslink && \
    #     ${XDC_INSTALL_DIR}/xdc --jobs=${BB_NUMBER_THREADS} -PR .
    export XDCOPTIONS=v
    cd ${SYSLINK_ROOT}/ti/syslink && \
        ${XDC_INSTALL_DIR}/xdc -P \
         `${XDC_INSTALL_DIR}/bin/xdcpkg ${SYSLINK_ROOT}/ti/syslink | grep -v samples`
    export XDCARGS="profile=debug"
    cd ${SYSLINK_ROOT}/ti/syslink && \
        ${XDC_INSTALL_DIR}/xdc --jobs=${BB_NUMBER_THREADS} -P \
         `${XDC_INSTALL_DIR}/bin/xdcpkg ${SYSLINK_ROOT}/ti/syslink | grep samples`
 which triggered exception TypeError: sequence item 95: expected string, int found

--------------030600010702000500070609--
